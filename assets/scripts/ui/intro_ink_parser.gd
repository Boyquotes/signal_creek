#extends "res://assets/scripts/ui/inkparser.gd"
extends Node

onready var scroll_node = $Panel/MarginContainer/ScrollContainer
onready var vertical_layout_node = $Panel/MarginContainer/ScrollContainer/VBoxContainer
onready var player = $InkPlayer

var pre_entrynormal = preload("res://assets/ui/prefabs/dialoguebox_entrynormal.tscn")
var pre_entrydialogue = preload("res://assets/ui/prefabs/dialoguebox_entrydialogue.tscn")

var main_scene = preload("res://assets/scenes/Game.tscn")

var currentSpeaker = "THE PARTY" #stores the current name to put into entry nametags

func _ready():
	
	Globals.delete_children(vertical_layout_node)
	Globals.colorManager = $ColorManager
	player.Continue()
	create_entry(player.get_CurrentText())

	
func _process(_delta):
	
	if Input.is_action_just_pressed("interact"):
		if !player.get_CanContinue() && !player.get_HasChoices():
			get_tree().change_scene_to(main_scene)
		
		else:
			
			if !player.get_HasChoices(): #create normal text 
				
				player.Continue()
				var currentLine = player.get_CurrentText() #get current text from ink player
				
				if ":" in currentLine: #if line contains a name, parse name and dialogue 
					
					set_current_name(currentLine.split(":", false)[0] + ":")
					create_entry_dialogue(currentLine.split(":", false)[1].strip_escapes().trim_prefix(' '))
					
				else: #create non-dialogue text entry
					
					create_entry(currentLine.strip_escapes())
					
			#scroll_node to bottom when new message appears (make this tween later)
			yield(get_tree(), "idle_frame")
			scroll_node.set_v_scroll(scroll_node.get_v_scrollbar().max_value)


#make a prefab for a normal entry with just text
func create_entry(text):
	
	var newEntry = pre_entrynormal.instance()
	vertical_layout_node.add_child(newEntry)
	newEntry.text = text

func create_entry_dialogue(newtext):
	
	var newpre_entrydialogue = pre_entrydialogue.instance()
	vertical_layout_node.add_child(newpre_entrydialogue)
	

	newpre_entrydialogue.set_nametag(currentSpeaker, Globals.colorManager.get_current_color())
	newpre_entrydialogue.remove_placeholders()
	
	var newParagraph = pre_entrynormal.instance()
	newParagraph.text = newtext
	newpre_entrydialogue.set_dialogue(newParagraph)
	
#for the color manager; set the name that it should return
func set_current_name(source):
	
	currentSpeaker = source
	Globals.colorManager.set_current_color(source)
