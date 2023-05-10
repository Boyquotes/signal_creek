class_name DialogueBox
extends Control

# DialogueBox, attached to Root node
# Gets input from DialogueBox UI (via InputDriver)
# Sends input to InkPlayer
# Tells DialogueEngine to make new prefabs based on InkPlayer's output
# Adds newly produced prefabs to DialogueBox UI

# Entry Prefab Types
export var print_information = false
export var camera_offset_dialogue = 40.0
export var typewriter_speed : int = 1
export var scroll_increment : float = 0.75
export var panel_opening_speed : float = 0.25
export var _entry_prefab_normal = preload("res://assets/ui/prefabs/dialoguebox_entrynormal.tscn")
export var _entry_prefab_paragraph = preload("res://assets/ui/prefabs/dialoguebox_entry_paragraph.tscn")
export var _entry_prefab_dialogue = preload("res://assets/ui/prefabs/dialoguebox_entrydialogue.tscn")
export var _entry_prefab_choices = preload("res://assets/ui/prefabs/dialoguebox_entrychoices.tscn")
export var _choice_prefab = preload("res://assets/ui/prefabs/dialoguebox_entrychoices_choice.tscn")

# Choice Entry Vars
var _current_choice_strings
var _current_choice_index = 0
var _current_choice_entry
var _current_choice_entry_choices
var is_displaying_choices
var choice_chosen
var current_speaker = "NICK"
var is_typing = false
var current_text_box
var is_auto_scrolling = false
#var is_expanding_background_panel = false
#var is_shrinking_background_panel = false
var background_panel_max_height
var max_scroll_length := 0

# Story state save file location 
var _save_file_path = "res://saves/save1.txt"
var _ink_story

var fastforward = false
var pause = false
var pause_timer

onready var background_panel_node = $Panel
onready var _scroll_node = $Panel/MarginContainer/ScrollContainer
onready var _scrollbar = _scroll_node.get_v_scrollbar()
onready var _vertical_layout_node = $Panel/MarginContainer/ScrollContainer/VBoxContainer
onready var _ink_player = $InkPlayer
onready var _pause_timer
onready var _down_arrow = $Panel/DownArrow
onready var _down_arrow_animate = $Panel/DownArrow/AnimationPlayer



func _ready():
	_ink_story = _ink_player.story
	
	#Hide dialoguebox and delete placeholders
	StaticFunctions.delete_children(_vertical_layout_node)
	background_panel_node.set_visible(false)
	
	var bgPanelDefaultPos = background_panel_node.get_position()
	background_panel_max_height = background_panel_node.get_size().y
	background_panel_node.set_position(Vector2(bgPanelDefaultPos.x, -background_panel_max_height))
	
	_scrollbar.connect("changed", self, "scroll_to_bottom")
	max_scroll_length = _scrollbar.max_value
	
	_pause_timer = Timer.new()
	add_child(_pause_timer)
	_pause_timer.connect("timeout", self, "_pause_timer_timeout")
	_pause_timer.set_one_shot(true)


func _pause_timer_timeout():
	_down_arrow_animate.play("CanProceed")
	pause = false


func _process(_delta):
	if Globals.GameState == Globals.GameStates.START:
		return
	
	if is_typing:
		typewriter_effect(false)
		
	if fastforward and !_ink_player.get_HasChoices() and _ink_player.get_CanContinue():
		proceed()
		
#	if is_expanding_background_panel:
#		expand_background_panel()
#
#	elif is_shrinking_background_panel:
#		shrink_background_panel()


# Opening the player as-is
# Tell _ink_player to open knot with name that matches pathstring
func open_at_knot(pathstring: String) -> void:
	_ink_player.ChoosePathString(pathstring)
	
	current_speaker = Globals.PartyObject.get_leader().get_name()
	
	var inkCommand = proceed()
	
	while inkCommand and "command" in inkCommand:
		inkCommand = proceed()
	
	set_camera_position_to_speaker()
	
	expand_background_panel()


# Change which choice is currently highlighted
# Changevalue: 1 if we're going down, -1 if we're going up
func toggle_choice_selections(changeValue: int) -> void:
	_current_choice_entry_choices[_current_choice_index].set_highlighted(false)
	#move to new choice
	_current_choice_index = wrapi(_current_choice_index + changeValue, 0, _current_choice_strings.size())
	_current_choice_entry_choices[_current_choice_index].set_highlighted(true)
	
	Globals.SoundManager.play_sound("choiceselect")


# Select the currently highlighted choice
func select_current_choice() -> void:
	if !is_displaying_choices:
		return
		
	free_old_choicebox()
	_ink_player.ChooseChoiceIndex(_current_choice_index)
	is_displaying_choices = false
	choice_chosen = true


# Remove most recent choice entry from tree
func free_old_choicebox() -> void:
	if _current_choice_entry:
		_current_choice_entry.queue_free() #remove the choicebox


# Proceeding to the next string that ink should return
func proceed() -> String:
	
	if pause:
		_down_arrow_animate.play("Idle")
		return
		
	if !_ink_player.get_CanContinue() && !_ink_player.get_HasChoices():
		clear_and_reset_ui()
		is_displaying_choices = false
		shrink_background_panel()
		return
	
	elif !_ink_player.get_HasChoices(): #create normal text entry
		_ink_player.Continue()
		
		if !fastforward and print_information:
			print_state()
			
		var currentLine = _ink_player.get_CurrentText()
		
		if choice_chosen:
			if !":" in currentLine and '"' in currentLine:
				currentLine = "NOUR: " + currentLine
			
			choice_chosen = false
		
		if currentLine.substr(0, 1) == "&":
			InkCommands.parse_commands(currentLine)
			return "command"
		
		currentLine = currentLine.replacen('<', '[')
		currentLine = currentLine.replacen('>', ']')
		
		check_entry_type(currentLine)
		
			
	else: #default to nour if no nametag provided
		is_displaying_choices = true
		current_speaker = "NOUR"
		display_choices("NOUR")
		set_camera_position_to_speaker()
		
#	var last_child = _vertical_layout_node.get_child(_vertical_layout_node.get_child_count() - 1)
#	_vertical_layout_node.set_focus
	
	
#	_scroll_node.scroll_vertical(159)
	yield(VisualServer, 'frame_post_draw')
	_scroll_node.scroll_to_bottom()
#	_scroll_node.scrolling_to_bottom = true
	return "no command"

# Parses entryText for special characters, determines what type of entry this is
# Entries are normal, dialogue, or choice
# Call corresponding functionality for type of entry
func check_entry_type(entryText: String) -> void:
	if entryText.substr(0, 1) == ":": #this is a name for the choice entry nametag; not an entry to put in
		var chooserName = entryText.substr(1).strip_escapes()
		_ink_player.Continue()
		is_displaying_choices = true
		current_speaker = chooserName
		display_choices(chooserName)
		set_camera_position_to_speaker()
		
	elif ":" in entryText and !"/" in entryText.split(":")[0]: #if line contains a name, parse name and dialogue after
		var newDialogue = DialogueEngine.create_entry_dialogue(entryText, _entry_prefab_dialogue, _entry_prefab_paragraph)
		current_speaker = entryText.split(":")[0]
		_vertical_layout_node.add_child(newDialogue)
#		newDialogue.grab_focus()
#		yield(VisualServer, 'frame_post_draw')
#		_scroll_node.ensure_control_visible(newDialogue)
		
		#track the text label for typewriter effect
		current_text_box = newDialogue.get_dialogue_text()
		#init typewriter effect
		is_typing = true
		set_camera_position_to_speaker()
		
#		Globals.SoundManager.play_sound("NewEntrySound")
	
	else: #it's a normal text entry
#		Globals.SoundManager.play_sound("NewEntrySound")
		var newText = DialogueEngine.create_entry(entryText.strip_escapes(), _entry_prefab_normal, _entry_prefab_paragraph)
		if not fastforward and Globals.GameRoot.testing_enabled:
			print("NORMAL TEXT")
			
		#track the text label for typewriter effect
		current_text_box = newText.get_text_normal()
		is_typing = true
		
		_vertical_layout_node.add_child(newText)
		Globals.SpeechBubble.set_visible(false)


# Scroll to bottom of dialoguebox
func scroll_to_bottom() -> void:
	if _scrollbar.max_value != max_scroll_length:
		max_scroll_length = _scrollbar.max_value
		_scroll_node.set_v_scroll(_scrollbar.max_value)


# Smoothly decrease size of background panel after dialogue concludes
func shrink_background_panel() -> void:
	$AnimationPlayer.play("Hiding")
#	var panelPosition = background_panel_node.get_position()
#
#	if panelPosition.y <= -background_panel_max_height + panel_opening_speed:
#		background_panel_node.set_position(Vector2(panelPosition.x, -background_panel_max_height))
#		is_shrinking_background_panel = false
#		background_panel_node.set_visible(false)
#
#		clear_and_reset_ui()
#		Globals.ColorManager.set_party_portraits_to_neutral()
#		Globals.PartyObject.force_nour_movement = false
#
#	else:
#		background_panel_node.set_position(Vector2(panelPosition.x, lerp(panelPosition.y, -background_panel_max_height, panel_opening_speed)))


# Smoothly increase size of background panel when dialogue starts
func expand_background_panel() -> void:
	$AnimationPlayer.play("Expanding")
#	var panelPosition = background_panel_node.get_position()
#
#	if panelPosition.y >= -panel_opening_speed:
#		background_panel_node.set_position(Vector2(panelPosition.x, 0))
#		is_expanding_background_panel = false
#
#		if Globals.GameRoot.testing_enabled:
#			print("expanded dialogue panel")
#
#	else:
#		background_panel_node.set_position(Vector2(panelPosition.x, lerp(panelPosition.y, 0, panel_opening_speed)))


#increment visible characters in most recent richtextlabel
func typewriter_effect(escape: bool) -> void:
	if fastforward or escape:
		current_text_box.set_percent_visible(1.0)
		is_typing = false
		_down_arrow_animate.play("CanProceed")
		
	_down_arrow_animate.play("Idle")
	
	#INSERT ERROR HANDLER HERE
	if !is_instance_valid(current_text_box):
		print("we have avoided a crisis.")
		return
		
	var currentVisibility = current_text_box.get_percent_visible()
	var visibleCharacters = current_text_box.get_visible_characters()
	
	if currentVisibility >= 1.0:
		is_typing = false
		_down_arrow_animate.play("CanProceed")
	
	else:
		current_text_box.set_visible_characters(visibleCharacters + typewriter_speed)
		Globals.SoundManager.play_sound_ui("typewriter")


# Escape the typewriter effect and show all text
func escape_typewriter_effect() -> void:
	current_text_box.set_percent_visible(1.0)
	is_typing = false


# Initialize the choice-selection of a new choice entry prefab
func display_choices(chooserName: String) -> void:
	_current_choice_strings = _ink_player.get_CurrentChoices()
	
	if _current_choice_strings.size() <= 0: #TO AVOID CRASHING; escape choice selection if no choices left
		is_displaying_choices = false
		proceed()
		return
	
	var newChoiceEntry = DialogueEngine.create_entry_choices(_current_choice_strings, chooserName, _entry_prefab_choices, _choice_prefab)

	_current_choice_index = 0
	_current_choice_entry_choices = newChoiceEntry.get_choices()
	_current_choice_entry_choices[_current_choice_index].set_highlighted(true)
	_vertical_layout_node.add_child(newChoiceEntry)
#	newChoiceEntry.grab_focus()
#	yield(VisualServer, 'frame_post_draw')
#	_scroll_node.ensure_control_visible(newChoiceEntry)
	
	_current_choice_entry = newChoiceEntry
	
	Globals.SoundManager.play_sound("choiceselect")


# Parse json story state from ink player; print the stuff we care about
func print_state() -> void:
	var splitstate = _ink_player.GetState().json_escape().split("\\")
	
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


# Remove old children from ui panel, exit talking mode
func clear_and_reset_ui():
#	background_panel_node.set_visible(false)
	StaticFunctions.delete_children(_vertical_layout_node)
	
	if Globals.Nour and Globals.Nick:
		Globals.Nick.set_following_node(Globals.Nour)
		Globals.Suwan.set_following_node(Globals.Nick)
		
	if Globals.PartyObject:
		for character in Globals.PartyObject.characterObjects:
			character.reset_speed()
			character.following_vector_queue = [character.get_global_position()] 
			
		Globals.SpeechBubble.set_visible(false)
		
	Globals.GameMode = Globals.GameModes.WALK


func get_current_speaker():
	return current_speaker


# CALLED BY: set_camera_position_to_speaker
# Find the global position of the character that is currently speaking
# Move/activate speech bubble accordingly
func find_current_speaker_position():
	var currentSpeaker = get_current_speaker().to_lower()
	if !fastforward and print_information:
		print("Current Speaker: " + currentSpeaker + "\n")
		
	var currentSpeakerNode = Globals.Nour
	
	if '"' in _ink_player.get_CurrentText() and !'"..."' in _ink_player.get_CurrentText():
		Globals.SpeechBubble.set_visible(true)
		
	else:
		Globals.SpeechBubble.set_visible(false)

	# Match the string of the current speaker's name to their Object in game
	match currentSpeaker:
		"nour":
			currentSpeakerNode = Globals.Nour
		"nick":
			currentSpeakerNode = Globals.Nick
		"ms. suwan":
			currentSpeakerNode = Globals.Suwan
		"chad":
			currentSpeakerNode = Globals.Chad
		"brody":
			currentSpeakerNode = Globals.Brody
		"kristy":
			currentSpeakerNode = Globals.Kristy
		"rina":
			currentSpeakerNode = Globals.Rina
		"manager":
			currentSpeakerNode = Globals.Manager
		"chad":
			currentSpeakerNode = Globals.Chad
		"brody":
			currentSpeakerNode = Globals.Brody
		"kristy":
			currentSpeakerNode = Globals.Kristy
		"duke delicious":
			currentSpeakerNode = Globals.DukeDelicious
		"father fuji":
			currentSpeakerNode = Globals.FatherFuji
		"grand duchess granny":
			currentSpeakerNode = Globals.GrandDuchessGranny
		"prince pendragon":
			currentSpeakerNode = Globals.PrincePendragon
		"emperor evercrisp":
			currentSpeakerNode = Globals.EmperorEvercrisp
		"earl earligold":
			currentSpeakerNode = Globals.EarlEarligold
		"kannika":
			currentSpeakerNode = Globals.Suwan
		"tim":
			currentSpeakerNode = Globals.Tim
		"???":
			Globals.SpeechBubble.set_visible(false)
		
	Globals.SpeechBubble.set_following_node(currentSpeakerNode)
	
	return currentSpeakerNode.get_global_position()


# Move the camera's Vector2 position to the character that is speaking
func set_camera_position_to_speaker():
	var followingVector

	if Globals.Elevator and Globals.Elevator.focus_camera_on_elevator:
		followingVector = Globals.InputDriver._elevator_focus_position
		var _speechBubblePos = find_current_speaker_position()
		Globals.GameRoot.set_camera_following_vector(Vector2(followingVector.x + camera_offset_dialogue, followingVector.y))
		return
		
	
	# Mid point between nour and current speaker
	followingVector = find_current_speaker_position().linear_interpolate(Globals.Nour.get_global_position(), 0.75)
	
	Globals.GameRoot.set_camera_following_vector(Vector2(followingVector.x + camera_offset_dialogue, followingVector.y - camera_offset_dialogue/2))
	


func set_current_world(worldName):
	_ink_player.SetVariable("currentWorld", worldName)


func reset_story():
	clear_and_reset_ui()
	_ink_player.Reset()
	_ink_player.LoadStory(_ink_story)


func fast_forward(state):
	fastforward = state


func pause_dialogue(pauseDuration: float):
	pause = true
	_pause_timer.wait_time = pauseDuration
	_pause_timer.start()


func save_story():
	_ink_player.SaveStateOnDisk(_save_file_path)
	print("game saved")


func hide_background_panel() -> void:
	background_panel_node.set_visible(false)
	
func show_background_panel() -> void:
	background_panel_node.set_visible(true)
