extends Node
# MAIN DRIVER of the game based on player input

export var _elevator_focus_position : Vector2 = Vector2(344, 168)
export var _leader_switching_enabled = false

var _closest_object = null
var _can_interact = false
var _camera_normal_position = null


func _start():
	pass


func _physics_process(_delta):
	if Input.is_action_just_pressed("reset"):
		reset_game()
	
	Globals.PartyObject.move_followers_by_pathfind()

	#print(Globals.Suwan.get_global_position())
	
	if Globals.GameMode == Globals.GameModes.TALK:
		if Globals.PartyObject.force_nour_movement:
			Globals.PartyObject.force_move_leader()
		
		if Globals.DialogueBox.is_displaying_choices:
			if Input.is_action_just_released("move_down"):
				Globals.DialogueBox.toggle_choice_selections(1)
				
			elif Input.is_action_just_released("move_up"):
				Globals.DialogueBox.toggle_choice_selections(-1)
				
			if Input.is_action_just_pressed("interact"):
				Globals.DialogueBox.select_current_choice()
				Globals.DialogueBox.proceed()
				
		elif Input.is_action_just_pressed("interact"):
			if Globals.DialogueBox.is_typing:
				Globals.DialogueBox.typewriter_effect(true)
			
			elif !Globals.DialogueBox.fastforward or Globals.DialogueBox._ink_player.get_HasChoices() or !Globals.DialogueBox._ink_player.get_CanContinue():
				
				if Globals.PartyObject.get_following_done():
					var inkCommand = Globals.DialogueBox.proceed()
					
					while inkCommand and "command" in inkCommand:
						inkCommand = Globals.DialogueBox.proceed()
				
			#var followingVector = find_current_speaker_position()
			#Globals.GameCanvas.set_camera_following_vector(Vector2(followingVector.x + camera_offset_dialogue, followingVector.y))
			
	elif Globals.GameMode == Globals.GameModes.WALK:
		
		if !Globals.DevTools.typing_knot_name:
			check_input_character_movement()
		
		# IN CASE OF LEADER SWITCHING
		if _leader_switching_enabled:
			if Input.is_action_just_pressed("party_leader_switch") and _leader_switching_enabled:
				Globals.PartyObject.change_leader()
#
			if _closest_object:
				if _closest_object.get_overlapping_bodies().size() > 0:
					_closest_object.call_deferred("_check_if_can_interact")
					
		_camera_normal_position = Globals.PartyObject.get_leader().get_global_position()
		Globals.GameCanvas.set_camera_following_vector(_camera_normal_position)
		
		if Globals.Elevator && Globals.Elevator.focus_on_elevator == true:
			Globals.GameCanvas.set_camera_following_vector(_elevator_focus_position)
			
		if _can_interact:
			if Input.is_action_just_pressed("interact"):
				if Globals.GameMode == Globals.GameModes.WALK:
					for character in Globals.PartyObject.characterObjects:
						character.animate_idle()
						
					Globals.GameMode = Globals.GameModes.TALK
					Globals.DialogueBox.open_at_knot(_closest_object._get_object_name())
					Globals.DialogueBox.background_panel_node.set_visible(true)


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

func reset_game():
	#set the default room's starting pos to the default starting pos
	#make current party character Nour
	#reset the ink
	#room enter signal for default room
	Globals.PartyObject.update_leader_to(1)
	Globals.CurrentWorld = Globals.Worlds.DREAM
#	Globals.set_to_dream_world()
	if RoomEngine.CurrentRoomIndex != RoomEngine.defaultRoomIndex:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[RoomEngine.defaultRoomIndex], RoomEngine.defaultStartingPos)
		
	else:
		RoomEngine.CurrentRoom.move_party_to_position(Globals.PartyObject, RoomEngine.defaultStartingPos)
		
	RoomEngine.PlaneManager.set_correct_world()
	Globals.DialogueBox.reset_story()
	print("GAME RESET")
	pass


func set_closest_object(objectName):
	_closest_object = objectName


func set_can_interact(condition):
	_can_interact = condition

