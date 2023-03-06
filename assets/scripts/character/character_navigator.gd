class_name CharacterNavigator
extends KinematicBody2D
# Individual character. 
# Can move.
# Updates sprites/animations accordingly.

# TODO: add timer for updating pathfinding position

export var walk_speed : float = 4500.0
export var inkname = "Name"
export var _pathfind_stop_approaching_dist : float = 32
export var _pathfind_move_away_dist : float = 24

var _pathfind_stop_approaching_dist_default = _pathfind_stop_approaching_dist
var _pathfind_move_away_dist_default = _pathfind_move_away_dist
var _velocity : Vector2 = Vector2()
var _direction_facing : Vector2 = Vector2()
var _current_idle_sprite : String = "DownIdle"
var _animating_emote = false
var _current_emote = _current_idle_sprite

var done_following = false

onready var _animation_player = $AnimationPlayer
onready var following_node

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
	_animation_player.play(_current_idle_sprite);


# emoteName: string
# anything beyond the walk cycle will be called this wa
# new track should be added to animation player for character
# TODO: once the animation ends, make animate_emote false
func animate_emote(emoteName):
	_current_idle_sprite = emoteName
	_animation_player.play(emoteName)


func move_character_by_vector(directionVector : Vector2):
	if _animating_emote: # emote animations, triggered from dialogue
		animate_emote(_current_emote)
		return
		
	if directionVector.length() == 0: # not moving, _current_idle_sprite and return early
		animate_idle()
		done_following = true
		return
		
	done_following = false
	
	directionVector = directionVector.normalized()
	_direction_facing = directionVector

	#play the correct animation based movement direction angle
	if abs(directionVector.x) >= abs(directionVector.y):
		#x mag is greater, use left/right animations
		if directionVector.x > 0:
			animate_right()
			
		else:
			animate_left()
			
	else:
		if directionVector.y > 0:
			animate_down()
			
		else:
			animate_up()
			
	_velocity = directionVector * walk_speed * get_physics_process_delta_time()
	_velocity = move_and_slide(_velocity)


# Current pathfinding
func pathfind_to(target : Node2D):
	var angleTowards = target.get_global_position() - self.get_global_position()
	
	if(angleTowards.length() < _pathfind_stop_approaching_dist):
		if(angleTowards.length() < _pathfind_move_away_dist):
			angleTowards = -angleTowards
			
		else:
			angleTowards = Vector2.ZERO
			
	move_character_by_vector(angleTowards)


# set sprite animation of this character
func set_sprite(sprite):
	$Sprite.set_texture(sprite)


# what node the pathfinding should be following
func set_following_node(nodeToFollow):
#	print(nodeToFollow.get_global_position())
	
	if nodeToFollow != Globals.Nour:
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
