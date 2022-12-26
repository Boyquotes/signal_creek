extends Node

onready var gameCanvas = null

#global enums, to be used anywhere

enum Characters { NICK, NOUR, SUWAN }
enum GameModes { WALK, TALK, SHIFT }
enum Worlds { REAL, DREAM }          #can't be named 'plane' b/c Plane is an existing type
enum WalkDir { LEFT, RIGHT, UP, DOWN }
enum Animation { WALK, IDLE }   #todo. do we want each combo ex walk_left idle_right or use with WalkDir

#declare global game variables

onready var camera = null
onready var overlay = null
onready var soundManager = null
onready var currentRoom = null

onready var dialogueBox = null
onready var portrait = null
onready var colorManager = null

onready var planeManager = null
onready var mode = GameModes.WALK
onready var world = Worlds.DREAM
onready var rooms = null

onready var player = null
onready var party = null
onready var nick = null
onready var nour = null
onready var suwan = null

onready var inkvars = ""

onready var bandn = null
onready var hallway = null
onready var topicspot = null


func get_world_inkname() -> String:
	if(world == Worlds.DREAM):
		return "dream"
	elif(world == Worlds.REAL):
		return "real"
	print("ERR: tried to get world ink name, but wasn't DREAM or REAL!")
	return "ERR"

#global static functions
static func delete_children(node):
	for n in node.get_children():
		node.remove_child(n)
		n.queue_free()
