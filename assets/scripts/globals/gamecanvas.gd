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

var rooms = [room_BandN, room_hallway, room_topicSpot]
var currentRoomIndex = 0

export var camera_pixel_width : int = 320
export var camera_pixel_height : int = 180

var aberration_position = Vector2(0, 0)
var abrpos

var aberrationTimer

export var aberration_timer_interval : float = 1.0
export var aberration_intensity : int = 1
export var aberration_speed : float = 0.5

var aberration_overlay_material


func _ready():
	
	Globals.planeManager = $ViewportContainer/Viewport/Room/PlaneManager
	Globals.party = $ViewportContainer/Viewport/Room/PlaneManager/Overworld/PARTY
	Globals.soundManager = $SoundManager
	Globals.gameCanvas = self

	Globals.dialogueBox = $UserInterface/ReferenceRect/DialogueBox
	Globals.portrait = $UserInterface/ReferenceRect/Portraits
	Globals.colorManager = $UserInterface/ReferenceRect/DialogueBox/ColorManager
	
	
	camera.rescale_camera(floor(OS.window_size.x/camera_pixel_width))
	set_current_room(rooms[0])
	
#	aberrationTimer = Timer.new()
#	add_child(aberrationTimer)
#	aberrationTimer.wait_time = aberration_timer_interval
#	aberrationTimer.connect("timeout", self, "_on_timer_timeout")
#	aberrationTimer.start()
#
#	aberration_overlay_material = $MotionOverlay.material


func _process(delta):
	
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

func set_current_room(roomPrefab):
	print("reached")
	var previousRoom = current_room
	var thisRoom = roomPrefab.instance()
	viewport.add_child(thisRoom)
	
	current_room = thisRoom
	
	previousRoom.remove_party(Globals.party)
	thisRoom.place_party(Globals.party)
	
	Globals.planeManager = thisRoom.get_plane_manager()

	viewport.remove_child(previousRoom)

func piss():
	print("peepee")

#for debugging purposes; when you press tab, switch rooms
func cycle_rooms():
	print("piss")
	currentRoomIndex += 1
	
	if currentRoomIndex >= rooms.size():
		currentRoomIndex = 0
		
	set_current_room(rooms[currentRoomIndex])
	print(current_room)

