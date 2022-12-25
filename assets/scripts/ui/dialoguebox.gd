extends Control

onready var background_panel_node = $Panel
onready var scroll_node = $Panel/MarginContainer/ScrollContainer
onready var vertical_layout_node = $Panel/MarginContainer/ScrollContainer/VBoxContainer
onready var player = $InkPlayer

#load resources to make new prefabs
var pre_entrynormal = preload("res://assets/ui/prefabs/dialoguebox_entrynormal.tscn")
var pre_entrydialogue = preload("res://assets/ui/prefabs/dialoguebox_entrydialogue.tscn")
var pre_entrychoices = preload("res://assets/ui/prefabs/dialoguebox_entrychoices.tscn")
var pre_choice = preload("res://assets/ui/prefabs/dialoguebox_entrychoices_choice.tscn")

export var _startTalking : bool #for isolated testing purposes; default to false for full game

#DIALOGUE ENTRY VARS
var currentSpeaker = "THE PARTY" #stores the current name to put into entry nametags

#CHOICE ENTRY VARS
var currentChoiceStrings
var isDisplayingChoices
var currentlyHighlightedChoice = 0
var currentlyHighlightedChoiceEntry
var currentChoiceEntryChoices

#Story state save file location 
var saveFilePath = "res://saves"

var inkstory


func _ready():
	
	inkstory = player.story
	
	#Hide dialoguebox and delete placeholders
	Globals.delete_children(vertical_layout_node)
	background_panel_node.set_visible(false)
	
	save_ink_state() #for now, we're going to NOT have persistent save state; this makes a clean save file
	bind_external_functions()


#this is where we'll listen to the player's button presses and tell the UI & ink player to do stuff. 
func _process(_delta):
	
	if Globals.mode == Globals.GameModes.TALK:
		if isDisplayingChoices:
			if Input.is_action_just_released("ui_down"):
				
				currentChoiceEntryChoices[currentlyHighlightedChoice].set_highlighted(false)
				currentlyHighlightedChoice += 1
				
				if currentlyHighlightedChoice >= currentChoiceStrings.size():
					currentlyHighlightedChoice = 0
					
				currentChoiceEntryChoices[currentlyHighlightedChoice].set_highlighted(true)
				
				Globals.soundManager.play_sound(Globals.soundManager.choice_select_sound)
				
				
			if Input.is_action_just_released("ui_up"):
				
				currentChoiceEntryChoices[currentlyHighlightedChoice].set_highlighted(false)
				currentlyHighlightedChoice -= 1
				
				if currentlyHighlightedChoice < 0:
					currentlyHighlightedChoice = currentChoiceStrings.size() - 1
					
				currentChoiceEntryChoices[currentlyHighlightedChoice].set_highlighted(true)
				
				Globals.soundManager.play_sound(Globals.soundManager.choice_select_sound)
				
			
			if Input.is_action_just_pressed("interact"):
				
				vertical_layout_node.remove_child(currentlyHighlightedChoiceEntry) #remove the choicebox
				
				if currentlyHighlightedChoice < 0:
					currentlyHighlightedChoice = 0
				
				player.ChooseChoiceIndex(currentlyHighlightedChoice)
				_proceed()
		
		elif Input.is_action_just_pressed("interact"):
			_proceed()


#proceeding to the next string that ink should return
func _proceed():
	
	if !player.get_CanContinue() && !player.get_HasChoices():
		player.SwitchToDefaultFlow()
		clear_and_reset_ui()
		
	elif !player.get_HasChoices(): #create normal text entry
		player.Continue()
		
		var currentLine = player.get_CurrentText()
		
		if currentLine.substr(0, 1) == "&":
			Globals.planeManager.shift_planes()
			currentLine = currentLine.trim_prefix('&')
			
		if currentLine.substr(0, 1) == ":": #this is a name for the choice entry nametag; not an entry to put in
			print("checked")
			var chooserName = currentLine.substr(1).strip_escapes()
			_proceed()
			displayChoices(chooserName)
		
		elif ":" in currentLine: #if line contains a name, parse name and dialogue after

			DialogueEngine.create_entry_dialogue(currentLine, pre_entrydialogue, pre_entrynormal)
		
		else: #it's a normal text entry
			DialogueEngine.create_entry(currentLine.strip_escapes(), pre_entrynormal)
		
		
	#scroll_node to bottom when new message appears (make this tween later)
	yield(get_tree(), "idle_frame")
	scroll_node.set_v_scroll(scroll_node.get_v_scrollbar().max_value)

#initialize the choice-selection of a new choice entry prefab
func displayChoices(chooserName):
	
	currentChoiceStrings = player.get_CurrentChoices()
	
	if currentChoiceStrings.size() <= 0: #TO AVOID CRASHING
		return
	
	DialogueEngine.create_entry_choices(currentChoiceStrings, chooserName, pre_entrychoices, pre_choice)

	currentlyHighlightedChoice = 0
	currentChoiceEntryChoices[currentlyHighlightedChoice].set_highlighted(true)




#Opening the story for the first time
func load_story(inkFile):	
	#player.LoadStoryAndSetState(inkFile, Globals.inkvars)

	player.LoadStory(inkFile)
	player.SetVariable("currentPartyChar", Globals.party.get_leader_inkname())
	

#Opening the player as-is
#string pathstring: name of the knot we're opening
func open(pathstring):
	player.SetVariable("currentPartyChar", Globals.party.get_leader_inkname())
	player.SetVariable("currentWorld", Globals.get_world_inkname())
	
	player.ChoosePathString(pathstring)
	
	print(player.GetState())
	

#Saving story state to disk
func save_ink_state():

	#print("saving ink state to disk")

	Globals.inkvars = player.GetState()
	player.SaveStateOnDisk(player.GetState())
	
	#print("finished saving state")

#Clear and reset the UI panel prefab
func clear_and_reset_ui():
	
	save_ink_state()
	
	background_panel_node.set_visible(false)
	Globals.delete_children(vertical_layout_node)
	Globals.mode = Globals.GameModes.WALK

#for the color manager; set the name that it should return
func set_current_name(source):
	
	currentSpeaker = source
	Globals.colorManager.set_current_color(source)


func bind_external_functions():
	
	#player.BindExternalFunction("getWorld", f_world_inkname, false)
	#player.BindExternalFunction("shiftWorld", f_shift_planes, false)
	#player.BindExternalFunction("getName", self, f_get_leader_inkname)
	
	pass
