extends Control

#InkParser parses ink passages and interfaces with the ink player
#inkparser.gd

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


func _ready():
	
	#Hide dialoguebox and delete placeholders
	Globals.delete_children(vertical_layout_node)
	background_panel_node.set_visible(false)
	
	save_ink_state() #for now, we're going to NOT have persistent save state; this makes a clean save file
	bind_external_functions()

	#for testing purposes; it starts opened if this is set to true
	if _startTalking:
		Globals.mode = Globals.GameModes.TALK
		

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
		clear_and_reset_ui()
		
	elif !player.get_HasChoices(): #create normal text entry
		player.Continue()
		
		var currentLine = player.get_CurrentText() #get current text from ink player
		
		if currentLine.substr(0, 1) == "&":
			Globals.planeManager.shiftPlane()
			currentLine = currentLine.trim_prefix('&')
			
		if currentLine.substr(0, 1) == ":": #this is a name for the choice entry nametag; not an entry to put in
			print("checked")
			set_current_name(currentLine.substr(1).strip_escapes())
			displayChoices()
		
		elif ":" in currentLine: #if line contains a name, parse name and dialogue after
			set_current_name(currentLine.split(":", false)[0] + ":")
			create_entry_dialogue(currentLine.split(":", false)[1].strip_escapes().trim_prefix(' '))
		
		else: #it's a normal text entry
			create_entry(currentLine.strip_escapes())
		
	elif !isDisplayingChoices:
		displayChoices()
		
	#scroll_node to bottom when new message appears (make this tween later)
	yield(get_tree(), "idle_frame")
	scroll_node.set_v_scroll(scroll_node.get_v_scrollbar().max_value)

#initialize the choice-selection of a new choice entry prefab
func displayChoices():
	
	currentChoiceStrings = player.get_CurrentChoices()
	
	create_entry_choices(currentChoiceStrings)
	isDisplayingChoices = true
	
	currentlyHighlightedChoice = 0
	currentChoiceEntryChoices[currentlyHighlightedChoice].set_highlighted(true)

#make a prefab for a normal entry with just text
func create_entry(text):
	
	var newEntry = pre_entrynormal.instance()
	vertical_layout_node.add_child(newEntry)
	
	newEntry.text = text
	isDisplayingChoices = false
	
	Globals.soundManager.play_sound(Globals.soundManager.new_entry_sound)

#make a prefab for an entry that contains character dialogue
func create_entry_dialogue(newtext):
	
	var newpre_entrydialogue = pre_entrydialogue.instance()
	vertical_layout_node.add_child(newpre_entrydialogue)
	

	newpre_entrydialogue.set_nametag(currentSpeaker, Globals.colorManager.get_current_color())
	newpre_entrydialogue.remove_placeholders()
	
	var newParagraph = pre_entrynormal.instance()
	newParagraph.text = newtext
	newpre_entrydialogue.set_dialogue(newParagraph)
	
	isDisplayingChoices = false
	
	Globals.soundManager.play_sound(Globals.soundManager.new_entry_sound)

#make prefab for entry that contains new prefabs for all the choices
func create_entry_choices(choices):
	
	var newChoiceEntry = pre_entrychoices.instance()
	vertical_layout_node.add_child(newChoiceEntry)
	
	newChoiceEntry.remove_placeholders()
	
	
	newChoiceEntry.set_nametag(currentSpeaker, Globals.colorManager.get_current_color())
	
	for option in choices: #iterate through choices, add nodes as children
		var newDivert = pre_choice.instance()
		
		var newText
		
		if ":" in option:
			var nameSubstring = option.split(":", false)[0].strip_escapes()
			var colorCode = Globals.colorManager.get_current_color()

			var textSubstring = option.split(":", false)[1].strip_escapes()
			
			newText = '[color=#' + colorCode.to_html() + '][b]' + nameSubstring + ':[/b][/color]' + textSubstring 
			
		else:
			newText = '[' + option + ']'
		
		newDivert.set_choice_text(newText)
		newChoiceEntry.add_choice_child(newDivert)
		
	currentlyHighlightedChoiceEntry = newChoiceEntry
	currentChoiceEntryChoices = newChoiceEntry.get_choices()
	
	Globals.soundManager.play_sound(Globals.soundManager.new_choice_entry_sound)


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


#references to GODOT functions called by external ink functions.
#(C# functions can be linked in InkLinker.cs.)
#saving these here saves time on bind external functions

#var f_world_inkname = funcref(Globals, "world_inkname")
#var f_shift_planes = funcref(Globals, "planemanager.shift_planes")
#var f_get_leader_inkname = funcref(Globals, "party.get_leader_inkname")


func bind_external_functions():
	
	#player.BindExternalFunction("getWorld", f_world_inkname, false)
	#player.BindExternalFunction("shiftWorld", f_shift_planes, false)
	#player.BindExternalFunction("getName", self, f_get_leader_inkname)
	
	pass

#var f_leader_nick = funcref(Globals, "party.leader_nick")
#var f_leader_nour = funcref(Globals, "party.leader_nour")
#var f_leader_suwan = funcref(Globals, "party.leader_suwan")
#var f_get_morale_nick = funcref(Globals, "nick.get_morale")
#var f_get_morale_nour = funcref(Globals, "nour.get_morale")
#var f_get_morale_suwan = funcref(Globals, "suwan.get_morale")
#var f_gain_morale_nick = funcref(Globals, "nick.gain_morale")
#var f_gain_morale_nour = funcref(Globals, "nour.gain_morale")
#var f_gain_morale_suwan = funcref(Globals, "suwan.gain_morale")
#var f_lose_morale_nick = funcref(Globals, "nick.lose_morale")
#var f_lose_morale_nour = funcref(Globals, "nour.lose_morale")
#var f_lose_morale_suwan = funcref(Globals, "suwan.lose_morale")
##TODO: make sure Globals.nick ect actually calls functions on those objects-
##	nick, nour, suwan get assigned at runtime, so hopefully these functions
##	point to those objects and not to null their initial value. 
## also, make sure "party.leader_nick" ect where the "party" is in the string works
#func bind_external_functions():
#
#	#TODO: if can't bind funcs not in the file, check if they exist first with contains 
#	#TODO: godot--C# is slow, ideally call these in InkLinker? check back later. 
#	#	basically, where is the marshalling? in the player.Bind or the passing in a godot func 
#
#
#	#godot functions 
#	#the boolean at the end is if it's lookahead safe- 
#	#	if the func can be called before it actually reaches that line
#
#
#	player.BindExternalFunction("getWorld", f_world_inkname, false)
#	player.BindExternalFunction("shiftWorld", f_shift_planes, false)
#
#	player.BindExternalFunction("getPartyLeader", f_get_leader_inkname, true)
#	player.BindExternalFunction("leaderIsNick", f_leader_nick, true)
#	player.BindExternalFunction("leaderIsNour", f_leader_nour, true)
#	player.BindExternalFunction("leaderIsSuwan", f_leader_suwan, true)
#
#	player.BindExternalFunction("getMoraleNick", f_get_morale_nick, false)
#	player.BindExternalFunction("getMoraleNour", f_get_morale_nour, false)
#	player.BindExternalFunction("getMoraleSuwan", f_get_morale_suwan, false)
#
#	player.BindExternalFunction("gainMoraleNick", f_gain_morale_nick, false)
#	player.BindExternalFunction("gainMoraleNour", f_gain_morale_nour, false)
#	player.BindExternalFunction("gainMoraleSuwan", f_gain_morale_suwan, false)
#
#	player.BindExternalFunction("loseMoraleNick", f_lose_morale_nick, false)
#	player.BindExternalFunction("loseMoraleNour", f_lose_morale_nour, false)
#	player.BindExternalFunction("loseMoraleSuwan", f_lose_morale_suwan, false)
#
#	#C# functions happen in the C# file 
#	#inkLinker.BindExternalFunctions()
#	#TODO: InkLinker.cs seems to no longer be recognised in the project. 
#	#	fix that and this will work again 
