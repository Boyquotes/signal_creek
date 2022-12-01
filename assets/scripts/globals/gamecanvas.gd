extends Node2D

#manages viewport, ui, plane stuff

onready var viewport_container = $ViewportContainer
onready var viewport = $ViewportContainer/Viewport

onready var current_room = $ViewportContainer/Viewport/Room
onready var camera = $ViewportContainer/Viewport/Room/Camera2D

#var room_warmSubject = preload("res://assets/scenes/rooms/room_warmSubject.tscn")
var room_BandN = preload("res://assets/scenes/rooms/room_bandn.tscn")
var room_hallway = preload("res://assets/scenes/rooms/room_hallway.tscn")
var room_topicSpot = preload("res://assets/scenes/rooms/room_topicspot.tscn")

var rooms = null
var currentRoomIndex = 1

export var camera_pixel_width : int = 320
export var camera_pixel_height : int = 180

var aberration_position = Vector2(0, 0)
var abrpos

var aberrationTimer

export var aberration_timer_interval : float = 1.0
export var aberration_intensity : int = 1
export var aberration_speed : float = 0.5

var aberration_overlay_material

signal doorway_entered(newroom, partyposition)


func _ready():
	
	Globals.planeManager = $ViewportContainer/Viewport/Room/PlaneManager
	Globals.party = $ViewportContainer/Viewport/Room/PlaneManager/Overworld/PARTY
	Globals.soundManager = $SoundManager
	Globals.gameCanvas = self

	Globals.dialogueBox = $UserInterface/ReferenceRect/DialogueBox
	Globals.portrait = $UserInterface/ReferenceRect/Portraits
	Globals.colorManager = $UserInterface/ReferenceRect/DialogueBox/ColorManager
	
	Globals.bandn = room_BandN.instance()
	Globals.hallway = room_hallway.instance()
	Globals.topicspot = room_topicSpot.instance()
	
	rooms = [Globals.bandn, Globals.hallway, Globals.topicspot]
	
	camera.rescale_camera(floor(OS.window_size.x/camera_pixel_width))
	set_current_room(rooms[currentRoomIndex])
	

	
#	aberrationTimer = Timer.new()
#	add_child(aberrationTimer)
#	aberrationTimer.wait_time = aberration_timer_interval
#	aberrationTimer.connect("timeout", self, "_on_timer_timeout")
#	aberrationTimer.start()
#
#	aberration_overlay_material = $MotionOverlay.material


func _process(delta):
	
	if camera.is_inside_tree():
		viewport_container.material.set_shader_param("cam_offset", camera.pixel_perfect(delta))
	
	if Input.is_action_just_pressed("room_toggle"):
		cycle_rooms()
		
	if Input.is_action_just_pressed("reset") && Globals.mode == Globals.GameModes.WALK:
		reset_game()
	
#	var aberrationOverlay = lerp(aberration_overlay_material.get_shader_param("r_displacement"), aberration_position, aberration_speed)	
#	aberration_overlay_material.set_shader_param("r_displacement", aberrationOverlay)

func _on_timer_timeout():
	var abrx = rand_range(-aberration_intensity, aberration_intensity)
	var abry = rand_range(-aberration_intensity, aberration_intensity)
	
	aberration_position = Vector2(abrx, abry)
	#print("second")

func reset_game():
	
	current_room.get_tree().change_scene(current_room.get_tree().current_scene.filename)

func set_current_room(roomScene):
	print("reached")
	var previousRoom = current_room
	#var thisRoom = roomPrefab.instance()
	viewport.add_child(roomScene)
	viewport.remove_child(previousRoom)
	current_room = roomScene
	
	move_party(previousRoom, roomScene)
	#call_deferred("move_party", previousRoom, roomScene)
	
	Globals.planeManager = roomScene.get_plane_manager()

	

func piss():
	print("peepee")
	
func move_party(previousRoom, newRoom):
	previousRoom.remove_party(Globals.party)
	newRoom.place_party(Globals.party)

#for debugging purposes; when you press tab, switch rooms
func cycle_rooms():
	print("piss")
	currentRoomIndex += 1
	
	if currentRoomIndex >= rooms.size():
		currentRoomIndex = 0
		
	set_current_room(rooms[currentRoomIndex])
	print(current_room)


func _on_Game_doorway_entered(newroom, partyposition):
	newroom.call_deferred("set_party_starting_position", partyposition)
	call_deferred("set_current_room", newroom)
