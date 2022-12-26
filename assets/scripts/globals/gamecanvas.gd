extends Node2D

#manages viewport, ui, plane stuff

onready var viewport_container = $ViewportContainer
onready var viewport = $ViewportContainer/Viewport

var room_BandN = preload("res://assets/scenes/rooms/room_bandn.tscn")
var room_hallway = preload("res://assets/scenes/rooms/room_hallway.tscn")
var room_topicSpot = preload("res://assets/scenes/rooms/room_topicspot.tscn")

var rooms = null
var currentRoomIndex = 1

export var camera_pixel_width : float = 320
export var camera_pixel_height : float = 180

signal doorway_entered(newroom, partyposition)


func _ready():

	Globals.worldEnvironment = $WorldEnvironment
	Globals.camera = $ViewportContainer/Viewport/Room/Camera2D
	Globals.overlay = $CameraOverlay
	RoomChanger.planeManager = $ViewportContainer/Viewport/Room/PlaneManager
	Globals.party = $ViewportContainer/Viewport/Room/PlaneManager/Overworld/PARTY
	Globals.soundManager = $SoundManager
	Globals.gameCanvas = self

	Globals.dialogueBox = $UserInterface/ReferenceRect/DialogueBox
	Globals.portrait = $UserInterface/ReferenceRect/Portraits
	Globals.colorManager = $UserInterface/ReferenceRect/DialogueBox/ColorManager
	
	RoomChanger.currentRoom = $ViewportContainer/Viewport/Room
	
	RoomChanger.bandn = room_BandN.instance()
	RoomChanger.hallway = room_hallway.instance()
	RoomChanger.topicspot = room_topicSpot.instance()

	RoomChanger.rooms = [RoomChanger.bandn, RoomChanger.hallway, RoomChanger.topicspot]
	
	
	Globals.camera.rescale_camera(floor(OS.window_size.x/camera_pixel_width))

	emit_signal("doorway_entered", RoomChanger.rooms[currentRoomIndex], RoomChanger.rooms[currentRoomIndex].get_party_starting_position())

func _process(delta):

	if Globals.camera.is_inside_tree():
		viewport_container.material.set_shader_param("cam_offset", Globals.camera.pixel_perfect(delta))
		
		
func set_camera_pos(newCameraPos):

	var room_bounds_min = RoomChanger.currentRoom.room_bounds_min
	var room_bounds_max = RoomChanger.currentRoom.room_bounds_max

	newCameraPos.x = clamp(newCameraPos.x, room_bounds_min.x + camera_pixel_width/2, room_bounds_max.x - camera_pixel_width/2)
	newCameraPos.y = clamp(newCameraPos.y, room_bounds_min.y + camera_pixel_height/2, room_bounds_max.y - camera_pixel_height/2)

	Globals.camera.set_camera_actual_position(newCameraPos)

func _on_Game_doorway_entered(newRoom, partyPosition):

	newRoom.call_deferred("set_party_starting_position", partyPosition)
	RoomChanger.call_deferred("set_current_room", RoomChanger.currentRoom, newRoom, viewport)


