class_name CharacterNavigator
extends KinematicBody2D
# Individual character. 
# Can move.
# Updates sprites/animations accordingly.

# TODO: add timer for updating pathfinding position

export var walk_speed : float = 64
export var inkname = "Name"
export var _pathfind_stop_approaching_dist : float = 32
export var _pathfind_move_away_dist : float = 16

export var sight_dist : float = 16
export var _navtimer_interval : float = 0.5
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
onready var angle_towards_mod = angle_towards
onready var sight_ray = $RayCast2D

onready var draw_look_straight = Vector2(0,0)
onready var draw_look_left = Vector2(0,0)
onready var draw_look_right = Vector2(0,0)
onready var draw_look_far_left = Vector2(0,0)
onready var draw_look_far_right = Vector2(0,0)

func _ready():
	_navtimer = Timer.new()
	add_child(_navtimer)
	_navtimer.wait_time = _navtimer_interval
	_navtimer.connect("timeout", self, "timer_timeout")
	_navtimer.start()
	_navtimer.set_one_shot(true)

func _physics_process(_delta):
#	var space_state = get_world_2d().direct_space_state
#	var result = space_state.intersect_ray(Vector2(0, 0), Vector2(0, 0) + draw_look_far_left)
#	print(result)
	pass

func _process(_delta):
	update()


func _draw():
#	draw_line(Vector2(0, 0), Vector2(0, 0) + draw_look_far_left, Color.red, 1.0)
#	draw_line(Vector2(0, 0), Vector2(0, 0) + draw_look_left, Color.orangered, 1.0)
#	draw_line(Vector2(0, 0), Vector2(0, 0) + draw_look_straight, Color.orange, 1.0)
#	draw_line(Vector2(0, 0), Vector2(0, 0) + draw_look_right, Color.yellow, 1.0)
#	draw_line(Vector2(0, 0), Vector2(0, 0) + draw_look_far_right, Color.yellowgreen, 1.0)
#	draw_line(self.get_global_position(), self.get_global_position() + draw_look_left, Color.red, 2.0)
	pass


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
#	yield(_animation_player, "animation_finished")
	_animation_player.play(_current_idle_sprite);


# emoteName: string
# anything beyond the walk cycle will be called this wa
# new track should be added to animation player for character
# TODO: once the animation ends, make animate_emote false
func animate_emote(emoteName):
	_current_idle_sprite = emoteName
	_animation_player.play(emoteName)


func collision_shape_query(directionVector, spaceState):
	var collisionShapeQuery = Physics2DShapeQueryParameters.new()
	collisionShapeQuery.set_shape($CollisionShape2D.get_shape())
	
	collisionShapeQuery.transform = $CollisionShape2D.global_transform
	collisionShapeQuery.transform = collisionShapeQuery.transform.translated(directionVector * sight_dist)
	
	return spaceState.intersect_shape(collisionShapeQuery)


func rotate_direction_vector(directionVector, degrees):
	var rotatedVector = directionVector.rotated(deg2rad(degrees))
	rotatedVector = Vector2(stepify(rotatedVector.x, 0.5), stepify(rotatedVector.y, 0.5))
	return rotatedVector


func move_character_by_vector(directionVector : Vector2):
	if _animating_emote: # emote animations, triggered from dialogue
		animate_emote(_current_emote)
		return
		
	if directionVector.length() == 0: # not moving, _current_idle_sprite and return early
		animate_idle()
		return
	
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
		
		# TODO: compare character position with nour position and directionvector
		# basically to see if nour is walking in front of them
		
		if _navtimer.get_time_left() <= 0:
			directionVector = Vector2(stepify(directionVector.x, 0.5), stepify(directionVector.y, 0.5))
			var selfPos = self.get_global_position()
			var followingPos = following_node.get_global_position()
			var spaceState = get_world_2d().direct_space_state
			
			var bodiesStraight = collision_shape_query(directionVector, spaceState)
			
			var directionVectorLeft = rotate_direction_vector(directionVector, 45)
			var bodiesLeft = collision_shape_query(directionVectorLeft, spaceState)
			
			var directionVectorFarLeft = rotate_direction_vector(directionVector, 90)
			var bodiesFarLeft = collision_shape_query(directionVectorFarLeft, spaceState)
			
			var directionVectorRight = rotate_direction_vector(directionVector, -45)
			var bodiesRight = collision_shape_query(directionVectorRight, spaceState)
			
			var directionVectorFarRight = rotate_direction_vector(directionVector, -90)
			var bodiesFarRight = collision_shape_query(directionVectorFarRight, spaceState)
			
			
			draw_look_straight = directionVector * sight_dist
			draw_look_left = directionVectorLeft * sight_dist
			draw_look_far_left = directionVectorFarLeft * sight_dist
			draw_look_right = directionVectorRight * sight_dist
			draw_look_far_right = directionVectorFarRight * sight_dist
			
			#find left or right bias and make array accordingly
			
			var allDirectionsCollisions
			var firstFreeDirection = 0
			var allDirectionVectors = [
				directionVector,
				directionVectorRight,
				directionVectorFarRight,
				directionVectorLeft,
				directionVectorFarLeft
				]
			
			#distance - closer to left or right?
			if (selfPos + draw_look_left).distance_to(followingPos) < (selfPos + draw_look_right).distance_to(followingPos):
				allDirectionsCollisions = [bodiesStraight, bodiesLeft, bodiesFarLeft, bodiesRight, bodiesFarRight]
				firstFreeDirection = check_for_collision(allDirectionsCollisions)
				
				allDirectionVectors = [
				directionVector,
				directionVectorLeft,
				directionVectorFarLeft,
				directionVectorRight,
				directionVectorFarRight
				]
				
			else:
				allDirectionsCollisions = [bodiesStraight, bodiesRight, bodiesFarRight, bodiesLeft, bodiesFarLeft]
				firstFreeDirection = check_for_collision(allDirectionsCollisions)
				
			directionVector = allDirectionVectors[firstFreeDirection]
			
			direction_vector = directionVector
			
			#nav timer multiplier could equal the width of the colliding body
			
#			_navtimer.wait_time = max(1/selfPos.distance_to(followingPos), 0.1)
			_navtimer.start()
			
#			if directionVector != previous_direction:
#				previous_direction = direction_vector
#				direction_vector = directionVector
		
	else:
		direction_vector = directionVector
		
	_velocity = direction_vector * walk_speed
	_velocity = move_and_slide(_velocity)


func check_for_collision(directionDictionaries):
#	print("--------------------")
#	print(self.name)
	var i : int = 0
	for direction in directionDictionaries:
		if !direction or direction.size() == 0:
#			print("FREE DIRECTION: " + String(i))
			return i
			
		for collision in direction:
#			if collision.get("collider") != following_node:
#				print(String(collision))
#
#			else:
			if collision.get("collider") == following_node:
				return i
				
		i += 1
		
	return i - 1


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
