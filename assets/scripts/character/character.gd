extends KinematicBody2D

#Individual character. 
#Can move.
#Updates sprites/animations accordingly.
#Has morale.

export(Texture) var dream_portrait
export(Texture) var real_portrait

const maxMorale = 3
var morale = maxMorale setget change_morale, get_morale

export var inkName = "ERR NO NAME ASSIGNED"

var velocity : Vector2 = Vector2()
var directionFacing : Vector2 = Vector2()	#used for flashlight.
const walkSpeed : float = 3500.0	#needs to be named walkSpeed not speed 

onready var animPlayer = $AnimationPlayer
var idle : String = "DownIdle"

func animate_up():
	animPlayer.play("Up")
	idle = "UpIdle"

func animate_down():
	animPlayer.play("Down")
	idle = "DownIdle"

func animate_left():
	animPlayer.play("Left")
	idle = "LeftIdle"

func animate_right():
	animPlayer.play("Right")
	idle = "RightIdle"

func animate_idle():
	animPlayer.play(idle);


func move(directionVector : Vector2):

	#not moving, idle and return early
	if(directionVector.length() == 0):
		animate_idle()
		pass
	
	directionVector = directionVector.normalized()

	#we're moving- update directionFacing
	directionFacing = directionVector

	#play the right animation based on the angle we're moving 
	if(abs(directionVector.x) >= abs(directionVector.y)):
		#x mag is greater, use left/right animations
		if(directionVector.x > 0):
			#positive direction
			animate_right()
		else:
			animate_left()
	else:
		if(directionVector.y > 0):
			animate_up()
		else:
			animate_down()

	#actually move
	velocity = directionVector * walkSpeed * get_physics_process_delta_time()
	velocity = move_and_slide(velocity)


var pathfindStopApproach : float = 22	#don't keep walking towards char if at this dist.
var pathfindMoveAway : float = 18		#if char is within this space, back up to make space
func pathfind_to(target : Node2D):
	
	#Temporary naive pathfinding. 
	var angleTowards = target.position - self.position
	if(angleTowards.length() < pathfindStopApproach):
		if(angleTowards.length() < pathfindMoveAway):
			angleTowards = -angleTowards
		else:
			angleTowards = Vector2.ZERO

	move(angleTowards)


#morale functions
func get_morale() -> int:
	return morale

func change_morale(_newValue):
	print("ERR: MORALE WAS ATTEMPTED TO CHANGE DIRECTLY, DO NOT DO THIS, USE gain_morale AND lose_morale INSTEAD SO ASSOCIATED LOGIC ALSO HAPPENS")

func gain_morale():
	morale = max(morale + 1, maxMorale)
	#TODO any related sounds, sprites, ui changes, ect 

func lose_morale():
	morale = morale - 1
	#TODO any related sounds, ui changes, ect 
	if morale <= 0:
		morale_depleted()

func morale_depleted():
	morale = 0
	#TODO any related sounds, ui changes, ect
	#TODO related game logic 
