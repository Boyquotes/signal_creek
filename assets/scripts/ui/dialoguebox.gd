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

#DIALOGUE ENTRY VARS
#var currentSpeaker = "THE PARTY" #stores the current name to put into entry nametags

#CHOICE ENTRY VARS
var currentChoiceStrings
var isDisplayingChoices
var choiceIndex = 0
var currentChoiceEntry
var currentChoiceEntryChoices

#Story state save file location 
var saveFilePath = "res://saves"
var inkstory


func _ready():
	
	inkstory = player.story
	
	#Hide dialoguebox and delete placeholders
	Globals.delete_children(vertical_layout_node)
	background_panel_node.set_visible(false)


#change which choice is currently highlighted
#changevalue: 1 if we're going down, -1 if we're going up
func toggle_choice_selections(changeValue):
	currentChoiceEntryChoices[choiceIndex].set_highlighted(false)
	#move to new choice
	choiceIndex = wrapi(choiceIndex + changeValue, 0, currentChoiceStrings.size())
	currentChoiceEntryChoices[choiceIndex].set_highlighted(true)
	
	Globals.soundManager.play_sound(Globals.soundManager.choice_select_sound)

#select the currently highlighted choice
func select_current_choice():
	player.ChooseChoiceIndex(choiceIndex)
	currentChoiceEntry.queue_free() #remove the choicebox
	isDisplayingChoices = false
	proceed()

#proceeding to the next string that ink should return
func proceed():
	
	if !player.get_CanContinue() && !player.get_HasChoices():
		clear_and_reset_ui()
		
	elif !player.get_HasChoices(): #create normal text entry
		player.Continue()
		print_state()
		
		var currentLine = player.get_CurrentText()
		
		if currentLine.substr(0, 1) == "&":
			Globals.planeManager.shift_planes()
			currentLine = currentLine.trim_prefix('&')
			
		check_entry_type(currentLine)
		
	#scroll_node to bottom when new message appears (make this tween later)
	yield(get_tree(), "idle_frame")
	scroll_node.set_v_scroll(scroll_node.get_v_scrollbar().max_value)

func check_entry_type(entryText):
	
		if entryText.substr(0, 1) == ":": #this is a name for the choice entry nametag; not an entry to put in
			
			var chooserName = entryText.substr(1).strip_escapes()
			player.Continue()
			isDisplayingChoices = true
			display_choices(chooserName)
		
		elif ":" in entryText: #if line contains a name, parse name and dialogue after

			var newDialogue = DialogueEngine.create_entry_dialogue(entryText, pre_entrydialogue, pre_entrynormal)
			vertical_layout_node.add_child(newDialogue)
		
		else: #it's a normal text entry
			var newText = DialogueEngine.create_entry(entryText.strip_escapes(), pre_entrynormal)
			vertical_layout_node.add_child(newText)

#initialize the choice-selection of a new choice entry prefab
func display_choices(chooserName):
	
	currentChoiceStrings = player.get_CurrentChoices()
	
	if currentChoiceStrings.size() <= 0: #TO AVOID CRASHING
		return
	
	var newChoiceEntry = DialogueEngine.create_entry_choices(currentChoiceStrings, chooserName, pre_entrychoices, pre_choice)

	choiceIndex = 0
	currentChoiceEntryChoices = newChoiceEntry.get_choices()
	currentChoiceEntryChoices[choiceIndex].set_highlighted(true)
	
	vertical_layout_node.add_child(newChoiceEntry)
	currentChoiceEntry = newChoiceEntry

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

#parse json story state from ink player; print the stuff we care about
func print_state():
	
	var splitstate = player.GetState().json_escape().split("\\")
	
	var i = 0
	var addVariables = false
	var variables = ""
	
	print("----------\nINK STATE:")
	
	for item in splitstate:
		if "cPath" in item:
			print("cPath: " + splitstate[i + 2] + '"')
		
		elif "variablesState" in item:
			addVariables = true
			
		if addVariables:
			if "}" in item:
				addVariables = false
				print(variables + "}")
				
			else:
				var variableLine = item.trim_prefix('"')
				if "^" in variableLine:
					variables += variableLine.trim_prefix("^")
				else:
					variables += variableLine
					
				
		i += 1
		
	print("----------")

#Clear and reset the UI panel prefab
func clear_and_reset_ui():
	
	background_panel_node.set_visible(false)
	Globals.delete_children(vertical_layout_node)
	Globals.mode = Globals.GameModes.WALK
