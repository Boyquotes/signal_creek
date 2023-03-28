class_name CharacterNavigator
extends KinematicBody2D
# Individual character. 
# Can move.
# Updates sprites/animations accordingly.

# TODO: add timer for updating pathfinding position

export var walk_speed : float = 72
export var inkname = "Name"
export var _pathfind_stop_approaching_dist : float = 16
export var _pathfind_move_away_dist : float = 8

export var sight_dist := 8.0
export var _navtimer_interval : float = 0.64
# this probably needs to be the sight dist with delta and speed or some crazy bazingafied shit
var _navtimer

var _pathfind_stop_approaching_dist_default = _pathfind_stop_approaching_dist
var _pathfind_move_away_dist_default = _pathfind_move_away_dist
var _velocity : Vector2 = Vector2()
var _direction_facing : Vector2 = Vector2()
var _current_idle_sprite : String = "DownIdle"
var _animating_emote = false
var _current_emote = _current_idle_sprite
var direction_vector := Vector2(0,0)
var previous_direction := direction_vector
var done_following = false

onready var _animation_player = $AnimationPlayer
onready var following_node

onready var angle_towards = Vector2(0, 0)

var following_vector_queue


func _ready():
	_navtimer = Timer.new()
	add_child(_navtimer)
	_navtimer.wait_time = _navtimer_interval / walk_speed
	_navtimer.connect("timeout", self, "timer_timeout")
	_navtimer.start()
	_navtimer.set_one_shot(true)


func timer_timeout():

	pass


# Play respective directional animations
# Used by party_manager
func animate_up():
	_animation_player.play("Up")
	_current_idle_sprite = "UpIdle"


func animate_down():
	_animation_player.play("Down")
	_current_idle_sprite = "DownIdle"


func animate_left():
	_animation_player.play("Left")
	_current_idle_sprite = "LeftIdle"


func animate_right():
	_animation_player.play("Right")
	_current_idle_sprite = "RightIdle"


func animate_idle():
#	_animation_player.set_autoplay(false)
	_animation_player.play(_current_idle_sprite);


# emoteName: string
# anything beyond the walk cycle will be called this wa
# new track should be added to animation player for character
# TODO: once the animation ends, make animate_emote false
func animate_emote(emoteName):
	_current_idle_sprite = emoteName
	_animation_player.play(emoteName)


func check_if_input_walking():
	if Input.is_action_just_released("move_up"):
		return true
		
	if Input.is_action_just_released("move_down"):
		return true
		
	if Input.is_action_just_released("move_left"):
		return true
		
	if Input.is_action_just_released("move_right"):
		return true
		
	return false


func rotate_direction_vector(directionVector, degrees):
	var rotatedVector = directionVector.rotated(deg2rad(degrees))
	rotatedVector = Vector2(stepify(rotatedVector.x, 0.5), stepify(rotatedVector.y, 0.5))
	return rotatedVector


func move_character_by_vector(directionVector : Vector2):
	if _animating_emote: # emote animations, triggered from dialogue
		_animation_player.playback_speed = 1
		animate_emote(_current_emote)
		return
	
	directionVector = directionVector.normalized()
	_direction_facing = directionVector
	
	if directionVector.length() == 0:
		animate_idle()
		return
		
	#play the correct animation based on movement direction angle
	animate_character(directionVector)
	direction_vector = directionVector
	
	if _navtimer.get_time_left() <= 0 and Globals.GameMode == Globals.GameModes.WALK:
		if following_vector_queue.back() != self.get_global_position() - (direction_vector * 8):
			following_vector_queue.push_back(self.get_global_position() - (direction_vector * 8))
		
		if following_vector_queue.size() > 4:
			following_vector_queue.pop_front()
			
		_navtimer.start()
		
	_velocity = direction_vector * walk_speed
	_velocity = move_and_slide(_velocity)

func animate_character(directionVector):
	var oldIdle = _current_idle_sprite
	_animation_player.playback_speed = walk_speed / 60
	if abs(directionVector.x) >= abs(directionVector.y):
		
		if directionVector.x > 0:
			animate_right()
			
		else:
			animate_left()
			
	else:
		if directionVector.y > 0:
			animate_down()
			
		else:
			animate_up()
			
	if _current_idle_sprite != oldIdle and Globals.GameMode == Globals.GameModes.WALK:
		_animation_player.seek(0.125, true)
		pass


func pathfind_to(target : Node2D):
	angle_towards = target.get_global_position() - self.get_global_position() #instead of target global position, do the last item on target's positional queue
	
	if target == Globals.Nour or target == Globals.Nick and self != Globals.Nour and Globals.GameMode == Globals.GameModes.WALK:
		angle_towards = target.following_vector_queue.front() - self.get_global_position()
	
	if(angle_towards.length() < _pathfind_stop_approaching_dist):
		if(angle_towards.length() < _pathfind_move_away_dist):
			angle_towards = -angle_towards
			
		else:
			angle_towards = Vector2.ZERO
			
	move_character_by_vector(angle_towards)


# set sprite animation of this character
func set_sprite(sprite):
	$Sprite.set_texture(sprite)


# what node the pathfinding should be following
func set_following_node(nodeToFollow):
	if nodeToFollow != Globals.Nour and nodeToFollow != Globals.Nick:
		_pathfind_stop_approaching_dist = 2
		_pathfind_move_away_dist = 0
		
	else:
		_pathfind_stop_approaching_dist = _pathfind_stop_approaching_dist_default
		_pathfind_move_away_dist = _pathfind_move_away_dist_default
		
	if nodeToFollow:
		following_node = nodeToFollow


func place_character_at_vector(vectorPosition):
#	print(vectorPosition)
	self.set_global_position(vectorPosition)
