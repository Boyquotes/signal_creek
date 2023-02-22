extends Node2D
# Gamecanvas is the Root of the main scene
# Initializes all global variables
# Is responsible for updating the viewport material for pixel perfect camera
# Listens for door-entering signal from Doortal & calls appropriate functions

signal doorway_entered(newroom, partyposition)

export var camera_pixel_size : Vector2 = Vector2(320, 180)

var _following_vector = Vector2(0, 0)

onready var viewport_container = $ViewportContainer
onready var viewport = $ViewportContainer/Viewport


func _ready():
	Globals.UpdateController = $ViewportContainer
	Globals.GameCanvas = self
	Globals.GameWorldEnvironment = $WorldEnvironment
	Globals.PartyCamera = $ViewportContainer/Viewport/Room/Camera2D
	Globals.GameOverlay = $GameOverlay
	
	Globals.PartyObject = $ViewportContainer/Viewport/Room/PlaneManager/Overworld/PARTY
	Globals.SoundManager = $SoundManager
	Globals.PartyCamera.rescale_camera(floor(OS.window_size.x/camera_pixel_size.x))
	
	Globals.DialogueBox = $UserInterface/ReferenceRect/DialogueBox
	#Globals.CornerPortrait = $UserInterface/ReferenceRect/Portraits
	Globals.ColorManager = $UserInterface/ReferenceRect/DialogueBox/ColorManager
	
	RoomEngine.CurrentRoom = $ViewportContainer/Viewport/Room
	RoomEngine.PlaneManager = $ViewportContainer/Viewport/Room/PlaneManager
	
	#emit_signal("doorway_entered", RoomEngine.Rooms[RoomEngine.CurrentRoomIndex], RoomEngine.Rooms[RoomEngine.CurrentRoomIndex].get_party_starting_position())
	call_deferred("_doorway_entered", RoomEngine.Rooms[RoomEngine.CurrentRoomIndex], RoomEngine.Rooms[RoomEngine.CurrentRoomIndex].get_party_starting_position())

func _process(delta):
	if Globals.PartyCamera.is_inside_tree():
		viewport_container.material.set_shader_param("cam_offset", Globals.PartyCamera.pixel_perfect(delta, _following_vector))


func _on_Game_doorway_entered(newRoom, partyPosition):
	newRoom.call_deferred("set_party_starting_position", partyPosition)
	RoomEngine.call_deferred("change_current_room", RoomEngine.CurrentRoom, newRoom, viewport)
	


# Update position of specified camera to newCameraPos
func set_camera_pos(newCameraPos, camera):
	var room_bounds_min = RoomEngine.CurrentRoom.room_bounds_min
	var room_bounds_max = RoomEngine.CurrentRoom.room_bounds_max

	newCameraPos.x = clamp(newCameraPos.x, room_bounds_min.x + camera_pixel_size.x/2, room_bounds_max.x - camera_pixel_size.x/2)
	newCameraPos.y = clamp(newCameraPos.y, room_bounds_min.y + camera_pixel_size.y/2, room_bounds_max.y - camera_pixel_size.y/2)

	camera.set_camera_actual_position(newCameraPos)


func set_camera_following_vector(newCameraPos):
	_following_vector = newCameraPos


# Called on ready only
func _doorway_entered(newRoom, partyPosition):
	emit_signal("doorway_entered", newRoom, partyPosition)
