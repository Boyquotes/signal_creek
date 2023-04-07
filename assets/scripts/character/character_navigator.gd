class_name CharacterNavigator
extends KinematicBody2D

# Individual dynamically moving character; can be the player OR an NPC
# Has simple pathfinding, calls animations to self's animation player

export var default_walk_speed : float = 72

export var walking_spritesheet : Texture
export var _pathfind_stop_approaching_dist : float = 16
export var _pathfind_move_away_dist : float = 8

export var _navtimer_interval : float = 0.64
var _navtimer
var _pathfind_stop_approaching_dist_default = _pathfind_stop_approaching_dist
var _pathfind_move_away_dist_default = _pathfind_move_away_dist
var _velocity : Vector2 = Vector2()
var _direction_facing : Vector2 = Vector2()
var _current_idle_sprite := "DownIdle"
var _animating_emote := false
var _current_emote = _current_idle_sprite

var walk_speed = default_walk_speed
var direction_vector := Vector2(0,0)
var done_following = false
var following_vector_queue = [Vector2(0, 0)] # Vector2 positions to move towards
var colliding_with_leader := false

onready var _animation_player = $AnimationPlayer
onready var following_node

onready var angle_towards = Vector2(0, 0)



func _ready():
	_navtimer = Timer.new()
	add_child(_navtimer)
	_navtimer.wait_time = _navtimer_interval / walk_speed
	_navtimer.connect("timeout", self, "timer_timeout")
	_navtimer.start()
	_navtimer.set_one_shot(true)


func get_class():
	return "CharacterNavigator"


func timer_timeout() -> void:
	pass


# Play respective directional animations
# Used by party_manager
func animate_up() -> void:
	_animation_player.play("Up")
	_current_idle_sprite = "UpIdle"


func animate_down() -> void:
	_animation_player.play("Down")
	_current_idle_sprite = "DownIdle"


func animate_left() -> void:
	_animation_player.play("Left")
	_current_idle_sprite = "LeftIdle"


func animate_right() -> void:
	_animation_player.play("Right")
	_current_idle_sprite = "RightIdle"


func animate_idle() -> void:
#	_animation_player.set_autoplay(false)
	_animation_player.play(_current_idle_sprite);


# Any animation beyond the walk cycle is called this way
# New track should be added to animation player for character
func animate_emote(emoteName: String) -> void:
	_current_idle_sprite = emoteName
	_animation_player.play(emoteName)


# Check whether walking input is being recieved from process_controller
func check_if_input_walking() -> bool:
	if Input.is_action_just_released("move_up"):
		return true
		
	if Input.is_action_just_released("move_down"):
		return true
		
	if Input.is_action_just_released("move_left"):
		return true
		
	if Input.is_action_just_released("move_right"):
		return true
		
	return false


# Call appropriate animations, based on current movement vector OR current emote
# Add Vector2 positions that self wil move to next to following_vector_queue
func move_character_by_vector(directionVector : Vector2) -> void:
	# ANIMATING AN EMOTE; triggered by ink_commands
	if _animating_emote: 
		_animation_player.playback_speed = 1
		animate_emote(_current_emote)
		return
	
	directionVector = directionVector.normalized()
	_direction_facing = directionVector
	
	# No distance is being traveled
	if directionVector.length() == 0:
		animate_idle()
		return
		
	# play the correct animation based on movement direction angle
	animate_character(directionVector)
	direction_vector = directionVector
	
	# Add new position to queue of positions that self is following
	if _navtimer.get_time_left() <= 0 and Globals.GameMode == Globals.GameModes.WALK:
		if following_vector_queue.back() != self.get_global_position() - (direction_vector * 8):
			following_vector_queue.push_back(self.get_global_position() - (direction_vector * 8))
		
		# pop old positions if exceeding max queue count
		if following_vector_queue.size() > 4:
			following_vector_queue.pop_front()
			
		_navtimer.start()
		
	_velocity = direction_vector * walk_speed
	_velocity = move_and_slide(_velocity)


# CALLED BY move_character_by_vector
# Call walking animations to self's AnimationPlayer, based on movement vector
func animate_character(directionVector: Vector2) -> void:
	var oldIdle = _current_idle_sprite
	_animation_player.playback_speed = walk_speed / 60
	
	# Horizontal movement
	if abs(directionVector.x) >= abs(directionVector.y):
		if directionVector.x > 0:
			animate_right()
			
		else:
			animate_left()
			
	# Vertical movement
	else:
		if directionVector.y > 0:
			animate_down()
			
		else:
			animate_up()
			
	# if changing direction, start in the middle of the walk cycle for good game feel
	if _current_idle_sprite != oldIdle and Globals.GameMode == Globals.GameModes.WALK:
		_animation_player.seek(0.125, true)


# CALLED BY party.gd
# Detect vector angle at which self should use to move towards target position
# Call move_character_by_vector if self is further than desired distance from target position
func pathfind_to(target : Node2D) -> void:
	angle_towards = target.get_global_position() - self.get_global_position() #instead of target global position, do the last item on target's positional queue
	
	if target.get_class() == "CharacterNavigator" and self != Globals.Nour and Globals.GameMode == Globals.GameModes.WALK:
		angle_towards = target.following_vector_queue.front() - self.get_global_position()
	
	if(angle_towards.length() < _pathfind_stop_approaching_dist):
		if(angle_towards.length() < _pathfind_move_away_dist):
			angle_towards = -angle_towards
			
		else:
			angle_towards = Vector2.ZERO
			
	move_character_by_vector(angle_towards)


# Set source Texture of self's Sprite
func set_sprite(sprite: Texture) -> void:
	$Sprite.set_texture(sprite)


# Set the node that self is positionally following
# If self is following another CharacterNavigator, use default stop_approaching and move_away distances
func set_following_node(nodeToFollow: Node2D) -> void:
	if nodeToFollow:
		following_node = nodeToFollow
		
	else:
		return
	
	if nodeToFollow.get_class() == "CharacterNavigator":
		_pathfind_stop_approaching_dist = _pathfind_stop_approaching_dist_default
		_pathfind_move_away_dist = _pathfind_move_away_dist_default
		
	else:
		_pathfind_stop_approaching_dist = 2
		_pathfind_move_away_dist = 0
		



# immediately move self to specified global position
func place_character_at_vector(vectorPosition: Vector2) -> void:
	self.set_global_position(vectorPosition)


# Set self's walking speed to value
func set_speed(speedValue: float) -> void:
	walk_speed = speedValue


# Reset self's walking speed to its default value
func reset_speed() -> void:
	walk_speed = default_walk_speed
