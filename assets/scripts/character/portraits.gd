extends Control

onready var portrait = $MarginContainer/HBoxContainer/Portrait

onready var nametag = $MarginContainer/HBoxContainer/TextContainer/Panel/Name


func set_character(portraitTexture, characterName):
	portrait.set_texture(portraitTexture)
	nametag.text = characterName
