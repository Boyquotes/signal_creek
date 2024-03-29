class_name CameraManager
extends Camera2D

# Camera Manager
# Knows what object to follow, lerp speed
# Knows the minimum and maximum bounds for the room it's currently in
# Knows size of game; camera bounds are adjusted appropriately

#object camera should follow
export (NodePath) onready var camera_following = get_node(camera_following)
export var lerpSpeed : int 

# pixel-scale boundaries for camera-accessible areas
export(Vector2) var room_bounds_min
export(Vector2) var room_bounds_max

# Scale camera proportionally
export var window_scale : int = 6

onready var game_size := Vector2((OS.window_size / window_scale).x, (OS.window_size / window_scale).y)
onready var camera_actual_position := global_position
onready var camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
onready var camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)



func _ready():
	Globals.PartyCamera = self


# Returns a "subpixel position"
# Used by pixel-perfect shader in GameRoot
func pixel_perfect(delta, following: Vector2) -> Vector2:
	var cameraRoomPosition = Vector2(0, 0)
	
	#take room bounds into account only when walking
	if Globals.GameMode == Globals.GameModes.WALK:
		cameraRoomPosition = Vector2(clamp(following.x, camera_bounds_min.x, camera_bounds_max.x), clamp(following.y, camera_bounds_min.y, camera_bounds_max.y))
	
	else:
		cameraRoomPosition = Vector2(following.x, clamp(following.y, camera_bounds_min.y, camera_bounds_max.y))
	
	camera_actual_position = lerp(camera_actual_position, cameraRoomPosition, lerpSpeed * delta)
	self.global_position = camera_actual_position.round()
	
	return camera_actual_position.round() - camera_actual_position


# Adjust camera bounds based on window scale
func rescale_camera(windowscale: int) -> void:
	window_scale = windowscale
	game_size = Vector2((OS.window_size / window_scale).x, (OS.window_size / window_scale).y)
	camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
	camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)


# Set bounds of camera; edges of room the party is in
func set_camera_bounds(roomBoundsMin: Vector2, roomBoundsMax: Vector2) -> void:
	room_bounds_min = roomBoundsMin
	room_bounds_max = roomBoundsMax
	camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
	camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)


# Set the actual position of the camera; used when changing rooms
func set_camera_actual_position(position: Vector2) -> void:
	global_position = position
	camera_actual_position = position
