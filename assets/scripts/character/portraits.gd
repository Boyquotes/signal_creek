extends Control

onready var CornerPortrait = $MarginContainer/HBoxContainer/Portrait
onready var nametag = $MarginContainer/HBoxContainer/TextContainer/Panel/Name


func set_character(portraitTexture, characterName):
	CornerPortrait.set_texture(portraitTexture)
	nametag.text = characterName
