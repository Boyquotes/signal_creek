extends Camera2D

#camera manager

#object to follow
export (NodePath) onready var camera_following = get_node(camera_following)

#camera smoothing speed
export var lerpSpeed : int 

#pixel-scale boundaries for camera-accessible areas
export(Vector2) var room_bounds_min
export(Vector2) var room_bounds_max

#scale camera proportionally
export var window_scale : int = 3
onready var game_size := Vector2((OS.window_size / window_scale).x, (OS.window_size / window_scale).y)
onready var camera_actual_position := global_position

onready var camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
onready var camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)

#camera fade-in transition
export onready var noFade : bool
onready var overlay = $ColorRect
var fadingIn = false


func _ready():
	
	Globals.PartyCamera = self
	
	if !noFade:
		fadingIn = true
		overlay.color.a = 1

func _process(_delta):
	
	if fadingIn: #ok i know there's a way to make this more efficient but idk coroutines in godot
		yield(get_tree().create_timer(0.6), "timeout") #pause before fading in
		fadingIn = false
		
		if overlay.color.a > 0: #decrease overlay alpha to fade-in
			overlay.color.a -=.1

func pixel_perfect(delta):
	
	var camera_room_position = Vector2(clamp(camera_following.global_position.x, camera_bounds_min.x, camera_bounds_max.x), clamp(camera_following.global_position.y, camera_bounds_min.y, camera_bounds_max.y))
	camera_actual_position = lerp(camera_actual_position, camera_room_position, lerpSpeed * delta)
	
	var cam_subpixel_pos = camera_actual_position.round() - camera_actual_position
	global_position = camera_actual_position.round()
	
	return cam_subpixel_pos

func rescale_camera(windowscale):
	
	window_scale = windowscale
	game_size = Vector2((OS.window_size / window_scale).x, (OS.window_size / window_scale).y)
	camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
	camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)

func set_camera_bounds(roomBoundsMin, roomBoundsMax):
	
	room_bounds_min = roomBoundsMin
	room_bounds_max = roomBoundsMax
	camera_bounds_min = Vector2(room_bounds_min.x + game_size.x /2 + 1, room_bounds_min.y + game_size.y /2 + 1)
	camera_bounds_max = Vector2(room_bounds_max.x - game_size.x /2 -1, room_bounds_max.y - game_size.y /2 - 1)

func set_camera_actual_position(position):
	
	global_position = position
	camera_actual_position = position
