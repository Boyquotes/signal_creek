extends Camera2D
# Camera Manager
# Knows what object to follow
# Knows how quickly to lerp
# Knows the minimum and maximum bounds for the room it's currently in
# Knows size of game; camera bounds are adjusted appropriately

#object camera should follow
export (NodePath) onready var camera_following = get_node(camera_following)
export var lerpSpeed : int 

# pixel-scale boundaries for camera-accessible areas
export(Vector2) var room_bounds_min
export(Vector2) var room_bounds_max

# scale camera proportionally
export var window_scale : int = 3
export var fade_timer_interval : float = 1.0

var _fade_timer

onready var game_size := Vector2((OS.window_size / window_scale).x, (OS.window_size / window_scale).y)
onready var camera_actual_position := global_position
onready var camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
onready var camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)

#camera fade-in transition
onready var _fade_in_overlay = $ColorRect


func _ready():
	Globals.PartyCamera = self
	_fade_timer = Timer.new()
	add_child(_fade_timer)
	_fade_timer.wait_time = fade_timer_interval
	fade_in()


func _process(_delta):
	if _fade_timer.get_time_left() > 0: #decrease overlay alpha to fade-in
		_fade_in_overlay.color.a *= _fade_timer.get_time_left()


# Returns a "subpixel position"
# Used by pixel-perfect shader in GameCanvas
func pixel_perfect(delta):
	var camera_room_position = Vector2(clamp(camera_following.global_position.x, camera_bounds_min.x, camera_bounds_max.x), clamp(camera_following.global_position.y, camera_bounds_min.y, camera_bounds_max.y))
	camera_actual_position = lerp(camera_actual_position, camera_room_position, lerpSpeed * delta)
	
	var cam_subpixel_pos = camera_actual_position.round() - camera_actual_position
	global_position = camera_actual_position.round()
	
	return cam_subpixel_pos


# Adjust camera bounds based on window scale
func rescale_camera(windowscale):
	window_scale = windowscale
	game_size = Vector2((OS.window_size / window_scale).x, (OS.window_size / window_scale).y)
	camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
	camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)


# Set bounds of camera; edges of room the party is in
func set_camera_bounds(roomBoundsMin, roomBoundsMax):
	room_bounds_min = roomBoundsMin
	room_bounds_max = roomBoundsMax
	camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
	camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)


# Set the actual position of the camera; used when changing rooms
func set_camera_actual_position(position):
	global_position = position
	camera_actual_position = position


# Fade in from black, using _fade_in_overlay
func fade_in():
	_fade_in_overlay.color.a = 1
	yield(get_tree().create_timer(0.6), "timeout") #pause before fading in
	_fade_timer.set_one_shot(true)
	_fade_timer.start()
