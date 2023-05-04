class_name ColorManager
extends Control

# Color Manager stores character names and their corresponding colors
# Also stores portraits

export var characterColors : Dictionary = {
	"the party": Color(1, 1, 1),
	"nour": Color(.78, .38, .38),
	"nick": Color(.88, .78, .38),
	"ms. suwan": Color(.38, .67, 1),
	"rina": Color(1, 1, 1),
	"chad": Color(1, 1, 1),
	"brody": Color(1, 1, 1),
	"kristy": Color(1, 1, 1),
	"manager": Color(1, 1, 1),
	"duke delicious": Color(1, 1, 1),
	"father fuji": Color(1, 1, 1),
	"grand duchess granny": Color(1, 1, 1),
	"princess pink lady": Color(1, 1, 1),
	"prince pendragon": Color(1, 1, 1),
	"emperor evercrisp": Color(1, 1, 1),
	"earl earligold": Color(1, 1, 1),
	
}

export var characterPortraits : Dictionary = {
	"nour": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"nick": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"ms. suwan": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"rina": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"chad": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"brody": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"kristy": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"manager": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"duke delicious": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"father fuji": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"grand duchess granny": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"princess pink lady": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"prince pendragon": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"emperor evercrisp": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"earl earligold": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"???": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"placeholder": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png")
}


# get all character name folders
# get all tres files in folders
# get names of each tres file without the extension
# add names to dictionary as keys; add files as values
export var portraitLibrary : Dictionary = {}

var current_color = "the party"
var current_portrait = "nour"



func _ready():
	var portraitDirContents = StaticFunctions.get_dir_contents("res://assets/sprites/characters/portraits/", "tres")
	var portraitKeys = []
	# CONVERT LIST OF FILE PATHS TO KEYS
	for filePath in portraitDirContents:
		var splitFilePath = filePath.split("/")
		var keyName = splitFilePath[splitFilePath.size() - 1].trim_prefix("portrait_").trim_suffix(".tres")
		portraitKeys.push_back(keyName)
	
	var i = 0
	for key in portraitKeys:
		portraitLibrary[portraitKeys[i]] = load(portraitDirContents[i])
		i += 1





# asks for string, sets current_color from dictionary
func set_current_color(characterName: String) -> void:
	current_color = characterColors.get(characterName.to_lower().trim_suffix(":"))
	if characterPortraits.get(characterName.to_lower().trim_suffix(":")):
		current_portrait = characterPortraits.get(characterName.to_lower().trim_suffix(":"))
		
		if Globals.SoundManager:
			Globals.SoundManager.set_typewriter_sound(characterName.to_lower().trim_suffix(":"))
		
	else:
		current_color = Color.white
		current_portrait = characterPortraits.get("placeholder")


# Get color currently being used for new dialogue entries
func get_current_color() -> Color:
	return current_color


# Get portrait currently being used for new dialogue entries
func get_current_portrait() -> Texture:
	return current_portrait


# Set expression portrait that is assigned to a character
func set_character_portrait(characterName: String, expressionName: String) -> void:
	var portraitToUse = portraitLibrary.get(expressionName)
	
	if portraitToUse:
		characterPortraits[characterName] = portraitToUse


func set_party_portraits_to_neutral():
	set_character_portrait("nour", "nourneutral")
	set_character_portrait("nick", "nickneutral")
	set_character_portrait("ms. suwan", "mssuwanneutral")
