extends Node
#Global variables & enums - Autoload along with RoomEngine and DialogueEngine

enum Characters { NICK, NOUR, SUWAN }
enum GameModes { WALK, TALK, SHIFT }
enum Worlds { REAL, DREAM }
enum WalkDir { LEFT, RIGHT, UP, DOWN }
enum AnimationMode { WALK, IDLE }   #todo. do we want each combo ex walk_left idle_right or use with WalkDir

#declare global game variables

var GameCanvas = null
var DevTools = null

var GameMode = GameModes.WALK
var CurrentWorld = Worlds.DREAM

var UpdateController = null
var GameWorldEnvironment = null
var GameOverlay = null

var SoundManager = null

var DialogueBox = null
var CornerPortrait = null
var ColorManager = null

var PartyCamera = null
var PartyObject = null
var Nick = null
var Nour = null
var Suwan = null
var Rina = null

var Elevator = null
var RouteLights = null
var ElevatorDoorLight = null

var InkStoryState = ""


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
