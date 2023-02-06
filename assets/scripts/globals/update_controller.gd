extends Node

var _closest_object = null
var _can_interact = false
var _camera_normal_position = null


func _start():
	pass


func _physics_process(_delta):
	if Input.is_action_just_pressed("reset"):
		reset_game()
	
	if Globals.GameMode == Globals.GameModes.TALK:
		
		if Globals.DialogueBox.is_displaying_choices:
			if Input.is_action_just_released("ui_down"):
				Globals.DialogueBox.toggle_choice_selections(1)
				
			elif Input.is_action_just_released("ui_up"):
				Globals.DialogueBox.toggle_choice_selections(-1)
				
			if Input.is_action_just_pressed("interact"):
				Globals.DialogueBox.select_current_choice()
				Globals.DialogueBox.proceed()
				
		elif Input.is_action_just_pressed("interact"):
			if Globals.DialogueBox.is_typing:
				Globals.DialogueBox.escape_typewriter_effect()
			else:
				Globals.DialogueBox.proceed()
				
			#var followingVector = find_current_speaker_position()
			#Globals.GameCanvas.set_camera_following_vector(Vector2(followingVector.x + camera_offset_dialogue, followingVector.y))
			
	elif Globals.GameMode == Globals.GameModes.WALK:
		check_input_character_movement()
		
		if Input.is_action_just_pressed("party_leader_switch"):
			Globals.PartyObject.change_leader()
			
			if _closest_object:
				if _closest_object.get_overlapping_bodies().size() > 0:
					_closest_object.call_deferred("_check_if_can_interact")
					
		_camera_normal_position = Globals.PartyObject.get_leader().get_global_position()
		Globals.GameCanvas.set_camera_following_vector(_camera_normal_position)
			
		if _can_interact:
			if Input.is_action_just_pressed("interact"):
				if Globals.GameMode == Globals.GameModes.WALK:
					Globals.GameMode = Globals.GameModes.TALK
					#Globals.GameCanvas.set_camera_following_vector(Vector2(_camera_normal_position.x + camera_offset_dialogue, _camera_normal_position.y))
					
					# tell inkparser to go to a knot based on this object's name
					
					#METHOD IS OBSOLETE
					#Globals.DialogueBox.open_at_knot(_closest_object._get_object_name() + _closest_object._get_visitedinworld_status())
					
					Globals.DialogueBox.open_at_knot(_closest_object._get_object_name())
					Globals.DialogueBox.background_panel_node.set_visible(true)


func check_input_character_movement():
	var directionVector = Vector2(0,0)

	if Input.is_action_pressed("ui_up"):
		directionVector += Vector2.UP
		
	if Input.is_action_pressed("ui_down"):
		directionVector += Vector2.DOWN
		
	if Input.is_action_pressed("ui_left"):
		directionVector += Vector2.LEFT
		
	if Input.is_action_pressed("ui_right"):
		directionVector += Vector2.RIGHT
		
	Globals.PartyObject.move_party_by_vector(directionVector)

func reset_game():
	#set the default room's starting pos to the default starting pos
	#make current party character nick
	#reset the ink
	#room enter signal for default room
	#RoomEngine.Rooms[RoomEngine.Rooms.defaultRoomIndex].set_party_starting_position(RoomEngine.defaultStartingPos)
	Globals.PartyObject.update_leader_to(0)
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

