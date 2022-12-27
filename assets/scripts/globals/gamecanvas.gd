extends Node2D

#manages viewport, ui, world stuff

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

	Globals.GameWorldEnvironment = $WorldEnvironment
	Globals.PartyCamera = $ViewportContainer/Viewport/Room/Camera2D
	Globals.GameOverlay = $GameOverlay
	
	Globals.PartyObject = $ViewportContainer/Viewport/Room/PlaneManager/Overworld/PARTY
	Globals.SoundManager = $SoundManager
	Globals.gameCanvas = self

	Globals.DialogueBox = $UserInterface/ReferenceRect/DialogueBox
	Globals.CornerPortrait = $UserInterface/ReferenceRect/Portraits
	Globals.ColorManager = $UserInterface/ReferenceRect/DialogueBox/ColorManager
	
	RoomEngine.planeManager = $ViewportContainer/Viewport/Room/PlaneManager
	
	RoomEngine.currentRoom = $ViewportContainer/Viewport/Room
	RoomEngine.bandn = room_BandN.instance()
	RoomEngine.hallway = room_hallway.instance()
	RoomEngine.topicspot = room_topicSpot.instance()

	RoomEngine.rooms = [RoomEngine.bandn, RoomEngine.hallway, RoomEngine.topicspot]
	
	Globals.PartyCamera.rescale_camera(floor(OS.window_size.x/camera_pixel_width))

	emit_signal("doorway_entered", RoomEngine.rooms[currentRoomIndex], RoomEngine.rooms[currentRoomIndex].get_party_starting_position())

func _process(delta):

	if Globals.PartyCamera.is_inside_tree():
		viewport_container.material.set_shader_param("cam_offset", Globals.PartyCamera.pixel_perfect(delta))
		
		
func set_camera_pos(newCameraPos, camera):

	var room_bounds_min = RoomEngine.currentRoom.room_bounds_min
	var room_bounds_max = RoomEngine.currentRoom.room_bounds_max

	newCameraPos.x = clamp(newCameraPos.x, room_bounds_min.x + camera_pixel_width/2, room_bounds_max.x - camera_pixel_width/2)
	newCameraPos.y = clamp(newCameraPos.y, room_bounds_min.y + camera_pixel_height/2, room_bounds_max.y - camera_pixel_height/2)

	camera.set_camera_actual_position(newCameraPos)

func _on_Game_doorway_entered(newRoom, partyPosition):

	newRoom.call_deferred("set_party_starting_position", partyPosition)
	RoomEngine.call_deferred("set_current_room", RoomEngine.currentRoom, newRoom, viewport)


