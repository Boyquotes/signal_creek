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

export var sight_dist := 8.0
export var _navtimer_interval : float = 0.5
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
onready var angle_towards_mod = angle_towards
onready var sight_ray = $RayCast2D

onready var sight_rays = []
onready var direction_vectors = []

onready var draw_first_extension_origin = Vector2(0,0)
onready var draw_first_extension = Vector2(0,0)
onready var draw_second_extension_origin = Vector2(0,0)
onready var draw_second_extension = Vector2(0,0)

onready var following_vector_queue = []
onready var colors = [
	Color.red,
	Color.orangered,
	Color.yellow,
	Color.yellowgreen,
	Color.purple,
	Color.magenta
	]

func _ready():
	_navtimer = Timer.new()
	add_child(_navtimer)
	_navtimer.wait_time = _navtimer_interval
	_navtimer.connect("timeout", self, "timer_timeout")
	_navtimer.start()
	_navtimer.set_one_shot(true)
	
	sight_rays = [RayCast2D.new(), RayCast2D.new(), RayCast2D.new(), RayCast2D.new(), RayCast2D.new()]

func _physics_process(_delta):
#	var space_state = get_world_2d().direct_space_state
#	var result = space_state.intersect_ray(Vector2(0, 0), Vector2(0, 0) + draw_look_far_left)
#	print(result)
	pass

func _process(_delta):
	sight_dist = walk_speed
	update()


func _draw():
	var i = 0
	for vector in direction_vectors:
		
		draw_line(Vector2(0, 0), vector * sight_dist, colors[i], 1.0)
		i += 1

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


func check_for_collision_raycast():
	var i = 0
	for ray in sight_rays:
		if !ray.is_colliding():
			return i
			
		i += 1
	
	return 0
	pass


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
		#REMOVE POSITION FROM THE QUEUE AND GO TO NEXT
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
#			print("piss")
			directionVector = Vector2(stepify(directionVector.x, 0.5), stepify(directionVector.y, 0.5))

			
				
			directionVector = vector_check(self.get_global_position(), directionVector, true)
			
			direction_vector = directionVector
			
			#nav timer multiplier could equal the width of the colliding body
			
#			_navtimer.wait_time = max(1/selfPos.distance_to(followingPos), 0.1)
			_navtimer.start()
			
#			if directionVector != previous_direction:
#				previous_direction = direction_vector
#				direction_vector = directionVector

		
			following_vector_queue.push_front(direction_vector)
			following_vector_queue.push_front(direction_vector)
			
#			print("reached")
#			following_vector_queue.remove(following_vector_queue[0])
			#and then basically we append to the vector queue and remove the previous one when the timer stops
			# and basically the vector we use is always the last one in the list
			# everything should be really fast please god
#			print(following_vector_queue)
		
	else:
		direction_vector = directionVector
		
	_velocity = direction_vector * walk_speed
	_velocity = move_and_slide(_velocity)

# check collision count for each direction, and recurse if it's recursive
func check_for_collision(directionDictionaries, directionVectors, rec: bool):
#	print("--------------------")
#	print(self.name)
	var i : int = 0
	for direction in directionDictionaries:
		# THIS IS THE DIRECTION WE SHOULD GO IN FIRST (MAYBE)
		if !direction or direction.size() == 0:
			if rec:
				var extension_dir = vector_check(directionVectors[i] * sight_dist, directionVectors[i], false)
#				print(extension_dir)
				var j = min(i + 1, directionDictionaries.size() - 1)
				var extension_dir_2 = vector_check(directionVectors[j] * sight_dist, directionVectors[j], false)
				
				draw_first_extension_origin = directionVectors[i] * sight_dist
				draw_first_extension = extension_dir * sight_dist
				
				draw_second_extension_origin = directionVectors[j] * sight_dist
				draw_second_extension = extension_dir_2 * sight_dist
				
				return i
				pass
			
			else:
				return i
			
		for collision in direction:
#			if collision.get("collider") != following_node:
#				print(String(collision))
#			Vector2(0, 0) + draw_look_far_left
#
#			else:
#			if collision.get("collider") == following_node:
#				return i
			pass
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


func vector_check(startPos, directionVector, isRecursive):
	var followingPos = following_node.get_global_position()
	var spaceState = get_world_2d().direct_space_state
	
	direction_vectors = [
		directionVector, # STRAIGHT
		rotate_direction_vector(directionVector, 45), # LEFT
		rotate_direction_vector(directionVector, 90), # FAR LEFT
		rotate_direction_vector(directionVector, -45), # RIGHT
		rotate_direction_vector(directionVector, -90) # FAR RIGHT
	]
	
	var i = 0
	for vector in direction_vectors:
		sight_rays[i].set_cast_to(direction_vectors[i] * sight_dist)
		
	var collision_queries = []
	
	for vector in direction_vectors:
		collision_queries.push_back(collision_shape_query(vector, spaceState))
	
	#find left or right bias and make array accordingly
	
#	var allDirectionsCollisions
	var firstFreeDirection = 0
	var allDirectionVectors = direction_vectors

	var allDirectionsCollisions = [ # RIGHT BIAS
		collision_queries[0],
		collision_queries[3],
		collision_queries[1],
		collision_queries[4],
		collision_queries[2]
		]
##
#	#distance - closer to left or right?
#	# CLOSER TO LEFT
	if (direction_vectors[1] * sight_dist).distance_to(followingPos) < (direction_vectors[3] * sight_dist).distance_to(followingPos):
		allDirectionsCollisions = [ # LEFT BIAS
			collision_queries[0],
			collision_queries[1],
			collision_queries[3],
			collision_queries[2],
			collision_queries[4]
			]
		
	firstFreeDirection = check_for_collision(allDirectionsCollisions, allDirectionVectors, isRecursive)
#	firstFreeDirection = check_for_collision_raycast()
	return allDirectionVectors[firstFreeDirection]
