class_name Character
extends KinematicBody2D
# Individual character. 
# Can move.
# Updates sprites/animations accordingly.

const walk_speed : float = 3500.0

export var inkName = "Name"
# don't keep walking towards another character if self is this close
export var _pathfind_stop_approaching_dist : float = 22
# If another character is in this space, back up
export var _pathfind_move_away_dist : float = 18

var _velocity : Vector2 = Vector2()
var _direction_facing : Vector2 = Vector2()
var _current_idle_sprite : String = "DownIdle"

onready var _animation_player = $AnimationPlayer

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


func move_character_by_vector(directionVector : Vector2):
	if directionVector.length() == 0: #not moving, _current_idle_sprite and return early
		animate_idle()
		return
	
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
			animate_up()
			
		else:
			animate_down()
			
	_velocity = directionVector * walk_speed * get_physics_process_delta_time()
	_velocity = move_and_slide(_velocity)


# Current pathfinding
func pathfind_to(target : Node2D):
	var angleTowards = target.position - self.position
	
	if(angleTowards.length() < _pathfind_stop_approaching_dist):
		if(angleTowards.length() < _pathfind_move_away_dist):
			angleTowards = -angleTowards
			
		else:
			angleTowards = Vector2.ZERO
			
	move_character_by_vector(angleTowards)


# set sprite animation of this character
func set_sprite(sprite):
	$Sprite.set_texture(sprite)
