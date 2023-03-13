class_name CharacterNavigator
extends KinematicBody2D
# Individual character. 
# Can move.
# Updates sprites/animations accordingly.

# TODO: add timer for updating pathfinding position

export var walk_speed : float = 4500.0
export var inkname = "Name"
export var _pathfind_stop_approaching_dist : float = 16
export var _pathfind_move_away_dist : float = 8

export var sight_dist : float = 16.0
export var _navtimer_interval : float = 0.2
var _navtimer

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

onready var angle_towards = Vector2(0, 0)
onready var angle_towards_mod = angle_towards
onready var sight_ray = $RayCast2D

func _ready():
	_navtimer = Timer.new()
	add_child(_navtimer)
	_navtimer.wait_time = _navtimer_interval
	_navtimer.connect("timeout", self, "timer_timeout")
	_navtimer.start()
#	_navtimer.set_one_shot(true)


func timer_timeout():
#	if !"NOUR" in inkname:
#		print("---------------------")
#		print(String(angle_towards) + inkname)
#		var normalizedAngle = angle_towards.normalized()
#		var sightDist = Vector2(16, 0)
#		sight_ray.cast_to = normalizedAngle + sightDist
#		print("Colliding at 0 Degrees: " + String(sight_ray.is_colliding()))
#		print(normalizedAngle.rotated(90))
#		sight_ray.cast_to = normalizedAngle.rotated(90) + sightDist
#		print("Colliding at 90 Degrees: " + String(sight_ray.is_colliding()))
		
		pass
	
#	print(String(self.get_global_position().distance_to(angle_towards)))
#	if following_node:
#		var rayCastDest = lerp(self.get_global_position(), following_node.get_global_position(), 0.5)
#		print(self.get_global_position().distance_to(rayCastDest))


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

	#play the correct animation based on movement direction angle
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
	
	if Globals.GameMode == Globals.GameModes.WALK and self != Globals.Nour:
		directionVector = Vector2(stepify(directionVector.x, 0.5), stepify(directionVector.y, 0.5))
		
		#directionVector = check_for_collision(directionVector)
		
		var selfPos = self.get_global_position()
		var followingPos = following_node.get_global_position()
		
#		if abs(directionVector.x) >= abs(directionVector.y):
#			#QUICKLY align y with nour's
#			print("Velocity Y: " + String(_velocity.y))
#			self.set_global_position(Vector2(selfPos.x, lerp(selfPos.y, followingPos.y, 0.5)))
#			pass
#		else:
#			#QUICKLY align x with nour's
#			print("Velocity X: " + String(_velocity.x))
#			self.set_global_position(Vector2(lerp(selfPos.x, followingPos.x, 0.5), selfPos.y))
#			pass
			
	_velocity = directionVector * walk_speed * get_physics_process_delta_time()
	_velocity = move_and_slide(_velocity)


func check_for_collision(sourceVector):
	#amount of distnce to check should = speed/delta or whatever
	#check if areas contain rigid bodies
	print(sourceVector)
	return sourceVector
	pass


# Current pathfinding
func pathfind_to(target : Node2D):
	angle_towards = target.get_global_position() - self.get_global_position()
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
