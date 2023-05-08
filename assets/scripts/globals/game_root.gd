# AUTOLOAD GameRoot
extends Node2D

# GameRoot is the Root of the main scene
# Initializes all global variables
# Is responsible for updating the viewport material for pixel perfect camera
# Listens for door-entering signal from Doortal & calls appropriate functions

signal doorway_entered(newroom, partyposition)

export var camera_pixel_size : Vector2 = Vector2(320, 180)
export var testing_enabled = false
export var testing_start_pos : Vector2 = Vector2(716, -320)

var _following_vector = Vector2(0, 0)

onready var viewport_container = $ViewportContainer
onready var viewport = $ViewportContainer/Viewport
onready var loadingscreen = $LoadingScreen
onready var loadingscreen_animation = $LoadingScreen/AnimationPlayer



func _ready():
	Globals.InputDriver = $ViewportContainer
	Globals.GameRoot = self
	Globals.GameWorldEnvironment = $WorldEnvironment
	Globals.PartyCamera = $ViewportContainer/Viewport/Room/Camera2D
	Globals.GameOverlay = $ScreenOverlay
	
	Globals.PartyObject = $ViewportContainer/Viewport/Room/PlaneManager/Overworld/PARTY
	Globals.SoundManager = $SoundManager
	Globals.PartyCamera.rescale_camera(floor(OS.window_size.x/camera_pixel_size.x))
	
	Globals.DialogueBox = $UserInterface/ReferenceRect/DialogueBox
	Globals.ColorManager = $UserInterface/ReferenceRect/DialogueBox/ColorManager
	
	RoomEngine.CurrentRoom = $ViewportContainer/Viewport/Room
	RoomEngine.starter = RoomEngine.CurrentRoom
	RoomEngine.PlaneManager = $ViewportContainer/Viewport/Room/PlaneManager
	
	if testing_enabled:
		RoomEngine.Rooms[1].set_party_starting_position(testing_start_pos)
		call_deferred("_doorway_entered", RoomEngine.Rooms[1], RoomEngine.Rooms[1].get_party_starting_position())
	
	else:
		call_deferred("_doorway_entered", RoomEngine.Rooms[3], RoomEngine.Rooms[3].get_party_starting_position())

func _physics_process(delta):
	if Globals.PartyCamera and Globals.PartyCamera.is_inside_tree():
		viewport_container.material.set_shader_param("cam_offset", Globals.PartyCamera.pixel_perfect(delta, _following_vector))


func _on_Game_doorway_entered(newRoom: RoomVars, partyPosition: Vector2) -> void:
	newRoom.call_deferred("set_party_starting_position", partyPosition)
	RoomEngine.call_deferred("change_current_room", RoomEngine.CurrentRoom, newRoom, viewport)


func play_loading_screen() -> void:
	Globals.SoundManager.play_music_by_index(RoomEngine.CurrentRoomIndex)
	Globals.SoundManager.set_music_pause_mode(true)
	
	loadingscreen.set_visible(true)
	loadingscreen_animation.play("Loading")
	yield(get_tree().create_timer(1.5), "timeout")
	loadingscreen.set_visible(false)
	
	Globals.SoundManager.set_music_pause_mode(false)
	
	if testing_enabled:
		Globals.PauseMenu.call_deferred("_on_MuteAudio_toggled", true)
	
	Globals.SoundManager.set_music_pause_mode(Globals.PauseMenu.get_music_pause_mode())
		
	Globals.GameOverlay.start_fade_in()


# Update position of specified camera to newCameraPos
func set_camera_pos(newCameraPos: Vector2, camera: CameraManager) -> void:
	var room_bounds_min = RoomEngine.CurrentRoom.room_bounds_min
	var room_bounds_max = RoomEngine.CurrentRoom.room_bounds_max

	newCameraPos.x = clamp(newCameraPos.x, room_bounds_min.x + camera_pixel_size.x/2, room_bounds_max.x - camera_pixel_size.x/2)
	newCameraPos.y = clamp(newCameraPos.y, room_bounds_min.y + camera_pixel_size.y/2, room_bounds_max.y - camera_pixel_size.y/2)

	camera.set_camera_actual_position(newCameraPos)


# Tell the camera to move to global position
func set_camera_following_vector(newCameraPos: Vector2) -> void:
	_following_vector = newCameraPos


# Triggered by reset game button
func reload() -> void:
	Globals.reload()
	RoomEngine.reload()
	var _reloaded = get_tree().reload_current_scene()
	Globals.GameOverlay.reload()


# Called on ready only
func _doorway_entered(newRoom: RoomVars, partyPosition: Vector2) -> void:
	emit_signal("doorway_entered", newRoom, partyPosition)


func _on_QuitButton_pressed() -> void:
	get_tree().quit()
