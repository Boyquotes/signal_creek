# AUTOLOAD Globals
extends Node
#Global variables & enums - Autoload along with RoomEngine and DialogueEngine

enum Characters { NICK, NOUR, SUWAN }
enum GameModes { WALK, TALK, SHIFT, PAUSE }
enum Worlds { REAL, DREAM }
enum WalkDir { LEFT, RIGHT, UP, DOWN }
enum AnimationMode { WALK, IDLE }
enum GameStates { START, GAME, END }

#declare global game variables

var GameRoot = null
var DevTools = null
var PauseMenu = null
var StartScreen = null
var EndScreen = null
var FloorMap = null

var GameMode = GameModes.WALK
var CurrentWorld = Worlds.DREAM
var GameState = GameStates.START

var InputDriver = null
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
var ChadBrodyKristy = null
var Chad = null
var Brody = null
var Kristy = null
var Manager = null
var DukeDelicious = null
var FatherFuji = null
var GrandDuchessGranny = null
var PrincessPinkLady = null
var PrincePendragon = null
var EmperorEvercrisp = null
var EarlEarligold = null
var Tim = null

var SpeechBubble = null

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


func reload():
	GameMode = GameModes.WALK
	CurrentWorld = Worlds.DREAM
	PartyCamera = null
	PartyObject = null
	Nick = null
	Nour = null
	Suwan = null
	Rina = null
	Chad = null
	Brody = null
	Kristy = null
	ChadBrodyKristy = null
	Manager = null

	Elevator = null
	RouteLights = null
	ElevatorDoorLight = null

	InkStoryState = ""
