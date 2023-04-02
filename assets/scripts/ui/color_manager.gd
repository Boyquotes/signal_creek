class_name ColorManager
extends Control

# Color Manager stores character names and their corresponding colors
# Also stores portraits

export var characterColors : Dictionary = {
	"the party": Color(1, 1, 1),
	"nour": Color(.78, .38, .38),
	"nick": Color(.88, .78, .38),
	"ms suwan": Color(.38, .67, 1)
}

export var characterPortraits : Dictionary = {
	"nour": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"nick": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"ms. suwan": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"chad": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"brody": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"kristy": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"manager": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
	"placeholder": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png")
}

export var portraitLibrary : Dictionary = {
	"placeholder": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png"),
}

var current_color = "the party"
var current_portrait = "nour"



func _ready():
	pass


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
	characterPortraits[characterName] = portraitToUse
