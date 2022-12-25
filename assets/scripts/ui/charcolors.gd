extends Control

export var characterColors : Dictionary = {"the party": Color(1, 1, 1), "nour": Color(.78, .38, .38), "nick": Color(.88, .78, .38), "ms suwan": Color(.38, .67, 1)}
var current_color = "the party"


func set_current_color(characterName):
	
	current_color = characterColors.get(characterName.to_lower().trim_suffix(":"))

func get_current_color():
	
	return current_color
