extends Control
# Color Manager stores character names and their corresponding colors

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
	"placeholder": preload("res://assets/sprites/characters/portraits/portrait_placeholder.png")
}

var current_color = "the party"
var current_portrait = "nour"


func _ready():
	set_current_color("nick")


# asks for string, sets current_color from dictionary
func set_current_color(characterName):
	current_color = characterColors.get(characterName.to_lower().trim_suffix(":"))
	if characterPortraits.get(characterName.to_lower().trim_suffix(":")):
		current_portrait = characterPortraits.get(characterName.to_lower().trim_suffix(":"))
	
	else:
		if characterName == "???":
			current_portrait = characterPortraits.get("ms. suwan")
			
		else:
			current_portrait = characterPortraits.get("placeholder")


# returns a color code
func get_current_color():
	return current_color


func get_current_portrait():
	return current_portrait
