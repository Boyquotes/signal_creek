extends Node

onready var gameCanvas = null

#global enums, to be used anywhere

enum Characters { NICK, NOUR, SUWAN }
enum GameModes { WALK, TALK, SHIFT }
enum Worlds { REAL, DREAM }
enum WalkDir { LEFT, RIGHT, UP, DOWN }
enum AnimationMode { WALK, IDLE }   #todo. do we want each combo ex walk_left idle_right or use with WalkDir

#declare global game variables

onready var UpdateController = null
onready var GameWorldEnvironment = null
onready var PartyCamera = null
onready var GameOverlay = null
onready var SoundManager = null

onready var DialogueBox = null
onready var CornerPortrait = null
onready var ColorManager = null

onready var GameMode = GameModes.WALK
onready var CurrentWorld = Worlds.DREAM

onready var PartyObject = null
onready var Nick = null
onready var Nour = null
onready var Suwan = null

onready var InkStoryState = ""


func get_world_inkname() -> String:
	if(CurrentWorld == Worlds.DREAM):
		return "dream"
	elif(CurrentWorld == Worlds.REAL):
		return "real"
	print("ERR: tried to get CurrentWorld ink name, but wasn't DREAM or REAL!")
	return "ERR"

#global static functions
static func delete_children(node):
	for n in node.get_children():
		node.remove_child(n)
		n.queue_free()
