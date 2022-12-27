extends Node

var _closest_object = null
var _can_interact = false


func _start():
	pass


func _process(_delta):
	if Globals.GameMode == Globals.GameModes.TALK:
		if Globals.DialogueBox.is_displaying_choices: 
			if Input.is_action_just_released("ui_down"):
				Globals.DialogueBox.toggle_choice_selections(1)
				
			elif Input.is_action_just_released("ui_up"):
				Globals.DialogueBox.toggle_choice_selections(-1)
				
			if Input.is_action_just_pressed("interact"):
				Globals.DialogueBox.select_current_choice()
				
		elif Input.is_action_just_pressed("interact"):
			Globals.DialogueBox.proceed()
			
	elif Globals.GameMode == Globals.GameModes.WALK:
		if Input.is_action_just_pressed("party_leader_switch") and _closest_object:
			if _closest_object.get_overlapping_bodies().size() > 0:
				_closest_object.call_deferred("_check_if_can_interact")
			
		if _can_interact:
			if Input.is_action_just_pressed("interact"):
				if Globals.GameMode == Globals.GameModes.WALK:
					Globals.GameMode = Globals.GameModes.TALK
					
					# tell inkparser to go to a knot based on this object's name
					Globals.DialogueBox.open_at_knot(_closest_object._get_object_name() + _closest_object._get_visitedinworld_status())
					Globals.DialogueBox.background_panel_node.set_visible(true)
		
		if Input.is_action_just_pressed("reset") && Globals.GameMode == Globals.GameModes.WALK:
			reset_game()


func reset_game():
	print("haha stupid idiot you cant reset")
	pass


func set_closest_object(objectName):
	_closest_object = objectName


func set_can_interact(condition):
	_can_interact = condition
