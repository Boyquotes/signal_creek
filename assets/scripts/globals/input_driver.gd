class_name InputDriver
extends Node

# MAIN DRIVER of the game based on player input

export var _elevator_focus_position : Vector2 = Vector2(344, 168)
export var _leader_switching_enabled = false
export var exhibition_build : bool
export var exhibition_time = 30.0 #in seconds

var _closest_object = null
var _camera_normal_position = null
var _elevator_tutorial = false

var exhibition_timer


func _ready():
	if exhibition_build:
		exhibition_timer = Timer.new()
		add_child(exhibition_timer)
		exhibition_timer.wait_time = exhibition_time
		exhibition_timer.set_one_shot(true)


func _process(_delta):
	if Input.is_action_just_pressed("open_menu"):
		if Globals.GameMode != Globals.GameModes.TALK:
			print("togglin")
			Globals.PauseMenu.toggle_visible()
			
	if Globals.GameState == Globals.GameStates.START and Globals.GameMode != Globals.GameModes.PAUSE:
		if Input.is_action_just_pressed("interact"):
			Globals.StartScreen.start_game()
		
		if exhibition_build:
			exhibition_timer.start()
			
	elif Globals.GameState == Globals.GameStates.END and Globals.GameMode != Globals.GameModes.PAUSE:
		if Input.is_action_just_pressed("interact"):
			Globals.StartScreen.start_game()
		
	elif Globals.GameState == Globals.GameStates.GAME:
		if Input.is_action_just_pressed("reset"):
			reset_game()
			
		Globals.PartyObject.move_followers_by_pathfind()
		
		if Globals.GameMode == Globals.GameModes.TALK:
				
			if Globals.PartyObject.force_nour_movement:
				Globals.PartyObject.force_move_leader()
			
			if Globals.DialogueBox.is_displaying_choices:
				if Input.is_action_just_released("move_down") or Input.is_action_just_released("ui_down"):
					Globals.DialogueBox.toggle_choice_selections(1)
					
				elif Input.is_action_just_released("move_up") or Input.is_action_just_released("ui_up"):
					Globals.DialogueBox.toggle_choice_selections(-1)
					
				if Input.is_action_just_pressed("interact"):
					Globals.DialogueBox.select_current_choice()
					
					var inkCommand = Globals.DialogueBox.proceed()
					
					while inkCommand and "command" in inkCommand:
						inkCommand = Globals.DialogueBox.proceed()
					
			elif Input.is_action_just_pressed("interact"):
				if Globals.DialogueBox.is_typing:
					Globals.DialogueBox.typewriter_effect(true)
				
				elif !Globals.DialogueBox.fastforward or Globals.DialogueBox._ink_player.get_HasChoices() or !Globals.DialogueBox._ink_player.get_CanContinue():
					var inkCommand = Globals.DialogueBox.proceed()
					
					while inkCommand and "command" in inkCommand:
						inkCommand = Globals.DialogueBox.proceed()
						
					
		elif Globals.GameMode == Globals.GameModes.WALK:
			if exhibition_build and exhibition_timer.get_time_left() < 1.0:
				reset_game()
				return
				
			if !Globals.DevTools.typing_knot_name:
				check_input_character_movement()
				if Input.is_action_just_pressed("toggle_map"):
					Globals.FloorMap.toggle_map()
			
			# IN CASE OF LEADER SWITCHING
			if _leader_switching_enabled:
				if Input.is_action_just_pressed("party_leader_switch") and _leader_switching_enabled:
					Globals.PartyObject.change_leader()
						
			_camera_normal_position = Globals.PartyObject.get_leader().get_global_position()
			Globals.GameRoot.set_camera_following_vector(_camera_normal_position)
				
			if Input.is_action_just_pressed("interact") and _closest_object and Globals.Nour in _closest_object.get_overlapping_bodies():
				print("tryna interact bro")
				if Globals.GameMode == Globals.GameModes.WALK:
					for character in Globals.PartyObject.characterObjects:
						character.animate_idle()
						
					Globals.GameMode = Globals.GameModes.TALK
					Globals.DialogueBox.open_at_knot(_closest_object._get_object_name())
					Globals.DialogueBox.background_panel_node.set_visible(true)
				
			if Globals.Elevator && Globals.Elevator.focus_camera_on_elevator == true:
				Globals.GameRoot.set_camera_following_vector(_elevator_focus_position)


func check_input_character_movement():
	var directionVector = Vector2(0,0)

	if Input.is_action_pressed("move_up"):
		directionVector += Vector2.UP
		
	if Input.is_action_pressed("move_down"):
		directionVector += Vector2.DOWN
		
	if Input.is_action_pressed("move_left"):
		directionVector += Vector2.LEFT
		
	if Input.is_action_pressed("move_right"):
		directionVector += Vector2.RIGHT
		
	Globals.PartyObject.move_leader_by_vector(directionVector)


#Reset overworld tree and dialoguebox
func reset_game() -> void:
	Globals.GameRoot.reload()
	Globals.DialogueBox.reset_story()
	Globals.GameState = Globals.GameStates.START
	Globals.StartScreen.set_visible(true)
	
	if Globals.GameRoot.testing_enabled:
		print("GAME RESET")


# Closest Interactive object available for interaction
func set_closest_object(objectName: Interactive) -> void:
	_closest_object = objectName


func _on_StartButton_pressed() -> void:
	Globals.StartScreen.set_visible(false)
	Globals.GameState = Globals.GameStates.GAME
