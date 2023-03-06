extends Control
# DialogueBox, attached to Root node
# Gets input from DialogueBox UI (via UpdateController)
# Sends input to InkPlayer
# Tells DialogueEngine to make new prefabs based on InkPlayer's output
# Adds newly produced prefabs to DialogueBox UI

# Entry Prefab Types
export var camera_offset_dialogue = 50.0
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
var is_expanding_background_panel = false
var is_shrinking_background_panel = false
var background_panel_max_height

# Story state save file location 
var _save_file_path = "res://saves"
var _ink_story

var fastforward = false

onready var background_panel_node = $Panel
onready var _scroll_node = $Panel/MarginContainer/ScrollContainer
onready var _vertical_layout_node = $Panel/MarginContainer/ScrollContainer/VBoxContainer
onready var _ink_player = $InkPlayer


func _ready():
	_ink_story = _ink_player.story
	
	#Hide dialoguebox and delete placeholders
	Globals.delete_children(_vertical_layout_node)
	background_panel_node.set_visible(false)
	
	var bgPanelDefaultPos = background_panel_node.get_position()
	background_panel_max_height = background_panel_node.get_size().y
	background_panel_node.set_position(Vector2(bgPanelDefaultPos.x, -background_panel_max_height))


func _process(_delta):
	if is_typing:
		typewriter_effect(false)
		
	if fastforward and !_ink_player.get_HasChoices() and _ink_player.get_CanContinue():
		if !Globals.PartyObject.get_following_done():
			pass
			
		proceed()
#		escape_typewriter_effect()
		
	if is_expanding_background_panel:
		expand_background_panel()
	
	elif is_shrinking_background_panel:
		shrink_background_panel()
		
	if is_auto_scrolling:
		auto_scroll_down()

# Opening the player as-is
# tell _ink_player to open knot with name that matches pathstring
func open_at_knot(pathstring):
	_ink_player.SetVariable("currentPartyChar", Globals.PartyObject.get_leader_inkname())
	_ink_player.SetVariable("currentWorld", Globals.get_world_inkname())
	
	
	_ink_player.ChoosePathString(pathstring)
	
	current_speaker = Globals.PartyObject.get_leader_inkname()
	
	proceed()
	set_camera_position_to_speaker()
	
	is_expanding_background_panel = true


# change which choice is currently highlighted
# changevalue: 1 if we're going down, -1 if we're going up
func toggle_choice_selections(changeValue):
	_current_choice_entry_choices[_current_choice_index].set_highlighted(false)
	#move to new choice
	_current_choice_index = wrapi(_current_choice_index + changeValue, 0, _current_choice_strings.size())
	_current_choice_entry_choices[_current_choice_index].set_highlighted(true)
	
	Globals.SoundManager.play_sound(Globals.SoundManager.choice_select_sound)


# select the currently highlighted choice
func select_current_choice():
	_ink_player.ChooseChoiceIndex(_current_choice_index)
	_current_choice_entry.queue_free() #remove the choicebox

	is_displaying_choices = false
	choice_chosen = true

# proceeding to the next string that ink should return
func proceed():
	if !_ink_player.get_CanContinue() && !_ink_player.get_HasChoices():
		clear_and_reset_ui()
		is_shrinking_background_panel = true
		return
	
	elif !_ink_player.get_HasChoices(): #create normal text entry
		_ink_player.Continue()
		
		if !fastforward:
			print_state()
			
		var currentLine = _ink_player.get_CurrentText()
		
		if choice_chosen:
			if !":" in currentLine and '"' in currentLine:
				currentLine = "NOUR: " + currentLine
			
			choice_chosen = false
		
		if currentLine.substr(0, 1) == "&":
			parse_commands(currentLine)
			return "command"
		
		currentLine = currentLine.replacen('<', '[')
		currentLine = currentLine.replacen('>', ']')
		
		check_entry_type(currentLine)
			
	else: #default to nour if no nametag provided
		is_displaying_choices = true
		current_speaker = "NOUR"
		display_choices("NOUR")
		set_camera_position_to_speaker()
		
	yield(get_tree(), "idle_frame")
	scroll_to_bottom()
	return "no command"


# Parse function requests from ink writing
func parse_commands(currentLine):
	if "&SHAKE" in currentLine:
		Globals.GameOverlay.start_shaking(false)
		
	elif "&BLACK" in currentLine:
		Globals.GameOverlay.set_to_black()
		
	elif "&FDEIN" in currentLine:
		Globals.GameOverlay.start_fade_in()
		
	elif "&MOV_RINA" in currentLine:
		Globals.Rina.move_rina(currentLine.split("_")[2].strip_escapes())
		
	elif "&SHLORP_RINA" in currentLine:
		Globals.Rina.rina_shlorp_out()
		
	elif "&POS" in currentLine: #move nick to vector2
		var charName = currentLine.split("_")[1].strip_escapes()
		var vectorPos = currentLine.split("_")[2].strip_escapes()
		vectorPos = vectorPos.split(",")
		vectorPos = Vector2(vectorPos[0], vectorPos[1])
		
		match charName:
			"NICK":
				Globals.Nick.place_character_at_vector(vectorPos)
				
			"NOUR":
				Globals.Nour.place_character_at_vector(vectorPos)
				
			"SUWAN":
				Globals.Suwan.place_character_at_vector(vectorPos)
				
	elif "&FOLLOW" in currentLine:
		var charName = currentLine.split("_")[1].strip_escapes()
		var posNodeName = currentLine.split("_")[2].strip_escapes()
		var posNode
		
		if posNodeName == "NOUR":
			posNode = Globals.Nour
			
		elif posNodeName != "stop":
			posNode = RoomEngine.CurrentRoom.plane_manager.get_node(posNodeName)
		
		match charName:
			"NICK":
				Globals.Nick.set_following_node(posNode)
				
			"NOUR":
				if "stop" in posNodeName:
					Globals.PartyObject.force_nour_movement = false
					
				else:
					Globals.PartyObject.force_nour_movement = true
					Globals.Nour.set_following_node(posNode)
				
			"SUWAN":
				Globals.Suwan.set_following_node(posNode)
		
	elif "&EMOTE" in currentLine:
		var charName = currentLine.split("_")[1].strip_escapes()
		var emoteName = currentLine.split("_")[2].strip_escapes()
		
		match charName:
			"NICK":
				Globals.Nick.animate_emote(emoteName)
				
			"NOUR":
				Globals.Nour.animate_emote(emoteName)
				
			"SUWAN":
				Globals.Suwan.animate_emote(emoteName)
		
	elif "&LIGHT" in currentLine:
	
		# EXAMPLE WRITTEN IN INK: &LIGHT_Nick0
		
		var lightName = currentLine.split("_")[1].strip_escapes()
		
		# When parsed, lightName will look like this: Nick0
		
		Globals.RouteLights.turn_on_light(lightName)
		
		if !Globals.RouteLights.first_light_turned_on:
			Globals.RouteLights.first_light_turned_on = true
			
		
	elif "&ELEVATOR" in currentLine:
		var action = currentLine.split("_")[1].strip_escapes()
		
		if "OPEN" in action:
			Globals.ElevatorDoorLight.open_doors()
			
		elif "CLOSE" in action:
			Globals.ElevatorDoorLight.close_doors()
	
	elif "&FIRSTLIGHT" in currentLine:
		Globals.RouteLights.activate_light_tutorial()
		
	elif "&CAMERA" in currentLine:
		var vectorPos = currentLine.split("_")[1].strip_escapes()
		vectorPos = vectorPos.split(",")
		vectorPos = Vector2(vectorPos[0], vectorPos[1])
		
		Globals.GameCanvas.set_camera_following_vector(vectorPos)


# Parses entryText for special characters, determines what type of entry this is
# Entries are normal, dialogue, or choice
# Call corresponding functionality for type of entry
func check_entry_type(entryText):
		
	if entryText.substr(0, 1) == ":": #this is a name for the choice entry nametag; not an entry to put in
		var chooserName = entryText.substr(1).strip_escapes()
		_ink_player.Continue()
		is_displaying_choices = true
		current_speaker = chooserName
		display_choices(chooserName)
		set_camera_position_to_speaker()
		
	elif ":" in entryText: #if line contains a name, parse name and dialogue after
		var newDialogue = DialogueEngine.create_entry_dialogue(entryText, _entry_prefab_dialogue, _entry_prefab_paragraph)
		current_speaker = entryText.split(":")[0]
		#print(entryText.split(":")[0])
		_vertical_layout_node.add_child(newDialogue)
		
		#track the text label for typewriter effect
		current_text_box = newDialogue.get_dialogue_text()
		#init typewriter effect
		is_typing = true
		
		set_camera_position_to_speaker()
	
	else: #it's a normal text entry
		var newText = DialogueEngine.create_entry(entryText.strip_escapes(), _entry_prefab_normal, _entry_prefab_paragraph)
		if !fastforward:
			print("NORMAL TEXT")
			
		#track the text label for typewriter effect
		current_text_box = newText.get_text_normal()
		#init typewriter effect
		is_typing = true
		
		_vertical_layout_node.add_child(newText)


func scroll_to_bottom():
	_scroll_node.set_v_scroll(_scroll_node.get_v_scrollbar().max_value)


#used when a new entry is created
func auto_scroll_down():
	var scrollValue = _scroll_node.get_v_scrollbar().get_value()
	var maxScrollValue = _scroll_node.get_v_scrollbar().max_value
	_scroll_node.set_v_scroll(lerp(scrollValue, maxScrollValue, scroll_increment))
	if scrollValue >= maxScrollValue:
		is_auto_scrolling = false
		return


#smoothly decrease size of background panel after dialogue concludes
func shrink_background_panel():
	var panelPosition = background_panel_node.get_position()
	
	if panelPosition.y <= -background_panel_max_height + panel_opening_speed:
		background_panel_node.set_position(Vector2(panelPosition.x, -background_panel_max_height))
		is_shrinking_background_panel = false
		background_panel_node.set_visible(false)
		#RESET DIALOGUE BOX
		clear_and_reset_ui()
		
	else:
		background_panel_node.set_position(Vector2(panelPosition.x, lerp(panelPosition.y, -background_panel_max_height, panel_opening_speed)))


#smoothly increase size of background panel when dialogue starts
func expand_background_panel():
	var panelPosition = background_panel_node.get_position()
	
	if panelPosition.y >= -panel_opening_speed:
		background_panel_node.set_position(Vector2(panelPosition.x, 0))
		is_expanding_background_panel = false
		print("expanded dialogue panel")
	
	else:
		background_panel_node.set_position(Vector2(panelPosition.x, lerp(panelPosition.y, 0, panel_opening_speed)))


#increment visible characters in most recent richtextlabel
func typewriter_effect(escape):
	if fastforward or escape:
		current_text_box.set_percent_visible(1.0)
		is_typing = false
		
	var currentVisibility = current_text_box.get_percent_visible()
	#var totalCharCount = current_text_box.get_total_character_count()
	var visibleCharacters = current_text_box.get_visible_characters()
	#var increment = totalCharCount * typewriter_speed
	
	if currentVisibility >= 1.0:
		is_typing = false
	
	else:
		current_text_box.set_visible_characters(visibleCharacters + typewriter_speed)


func escape_typewriter_effect():
	current_text_box.set_percent_visible(1.0)
	is_typing = false


#initialize the choice-selection of a new choice entry prefab
func display_choices(chooserName):
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
	_current_choice_entry = newChoiceEntry


# parse json story state from ink player; print the stuff we care about
func print_state():
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


# Clear and reset the UI panel
func clear_and_reset_ui():
	background_panel_node.set_visible(false)
	Globals.delete_children(_vertical_layout_node)
	Globals.GameMode = Globals.GameModes.WALK


func get_current_speaker():
	return current_speaker


func find_current_speaker_position():
	var currentSpeaker = get_current_speaker().to_lower()
	if !fastforward:
		print("Current Speaker: " + currentSpeaker + "\n")
	
	var currentSpeakerIndex = -1

	# Move camera to party character if they are speaking
	if "nick" in currentSpeaker:
		currentSpeakerIndex = 0

	elif "nour" in currentSpeaker:
		currentSpeakerIndex = 1

	elif "suwan" in currentSpeaker:
		currentSpeakerIndex = 2
		
	else:
		currentSpeakerIndex = Globals.PartyObject.get_leader_index()
		
	return Globals.PartyObject.get_character_objects()[currentSpeakerIndex].get_global_position()


func set_camera_position_to_speaker():
	var followingVector
	
	if Globals.Elevator and Globals.Elevator.focus_on_elevator:
		followingVector = Globals.UpdateController._elevator_focus_position
		Globals.GameCanvas.set_camera_following_vector(Vector2(followingVector.x + camera_offset_dialogue, followingVector.y))
		return
		
	followingVector = find_current_speaker_position()
	Globals.GameCanvas.set_camera_following_vector(Vector2(followingVector.x + camera_offset_dialogue, followingVector.y))
	


func set_current_world(worldName):
	_ink_player.SetVariable("currentWorld", worldName)


func reset_story():
	clear_and_reset_ui()
	_ink_player.Reset()
	_ink_player.LoadStory(_ink_story)


func fast_forward(state):
	fastforward = state
	
