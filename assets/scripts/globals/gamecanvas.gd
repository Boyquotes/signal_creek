extends Node2D

#manages viewport, ui, plane stuff

onready var viewport_container = $ViewportContainer
onready var viewport = $ViewportContainer/Viewport

onready var current_room = $ViewportContainer/Viewport/Room
onready var camera = $ViewportContainer/Viewport/Room/Camera2D


var room_BandN = preload("res://assets/scenes/rooms/room_bandn.tscn")
var room_hallway = preload("res://assets/scenes/rooms/room_hallway.tscn")
var room_topicSpot = preload("res://assets/scenes/rooms/room_topicspot.tscn")

var rooms = null
var currentRoomIndex = 1

export var camera_pixel_width : int = 320
export var camera_pixel_height : int = 180

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

	emit_signal("doorway_entered", rooms[currentRoomIndex], rooms[currentRoomIndex].get_party_starting_position())
	
func _process(delta):
	
	if camera.is_inside_tree():
		viewport_container.material.set_shader_param("cam_offset", camera.pixel_perfect(delta))
	
	if Input.is_action_just_pressed("room_toggle"):
		cycle_rooms()
		
	if Input.is_action_just_pressed("reset") && Globals.mode == Globals.GameModes.WALK:
		reset_game()
	
func reset_game():
	
	current_room.get_tree().change_scene(current_room.get_tree().current_scene.filename)

func set_current_room(roomScene):
	print("reached")
	var previousRoom = current_room
	
	viewport.add_child(roomScene)
	viewport.remove_child(previousRoom)
	current_room = roomScene
	
	move_party(previousRoom, roomScene)
	
	Globals.planeManager = roomScene.get_plane_manager()
	Globals.planeManager.set_correct_plane()
	
	
func move_party(previousRoom, newRoom):
	previousRoom.remove_party(Globals.party)
	newRoom.place_party(Globals.party)

#for debugging purposes; when you press tab, switch rooms
func cycle_rooms():
	
	currentRoomIndex += 1
	
	if currentRoomIndex >= rooms.size():
		currentRoomIndex = 0
		
	set_current_room(rooms[currentRoomIndex])
	print(current_room)


func _on_Game_doorway_entered(newroom, partyposition):
	newroom.call_deferred("set_party_starting_position", partyposition)
	call_deferred("set_current_room", newroom)
