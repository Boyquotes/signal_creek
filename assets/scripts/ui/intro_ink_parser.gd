#extends "res://assets/scripts/ui/inkparser.gd"
extends Node

onready var scroll_node = $Panel/MarginContainer/ScrollContainer
onready var vertical_layout_node = $Panel/MarginContainer/ScrollContainer/VBoxContainer
onready var player = $InkPlayer

var pre_entrynormal = preload("res://assets/ui/prefabs/dialoguebox_entrynormal.tscn")

func _ready():
	
	Globals.delete_children(vertical_layout_node)

	
func _process(_delta):
	
	if Input.is_action_just_pressed("interact"):
		if !player.get_CanContinue() && !player.get_HasChoices():
			pass
			
		elif !player.get_HasChoices(): #create normal text entry
			player.Continue()
			var currentLine = player.get_CurrentText() #get current text from ink player
			create_entry(currentLine.strip_escapes())


#make a prefab for a normal entry with just text
func create_entry(text):
	
	var newEntry = pre_entrynormal.instance()
	vertical_layout_node.add_child(newEntry)
	newEntry.text = text
