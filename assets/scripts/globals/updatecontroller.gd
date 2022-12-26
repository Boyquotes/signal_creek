extends Node

signal doorway_entered(newroom, partyposition)

var rooms = null
var currentRoomIndex = 1

func _start():
	emit_signal("doorway_entered", Globals.rooms[currentRoomIndex], Globals.rooms[currentRoomIndex].get_party_starting_position())


func _process(_delta):
	
	if Globals.mode == Globals.GameModes.TALK:
		
		if Globals.dialogueBox.isDisplayingChoices:
			
			if Input.is_action_just_released("ui_down"):
				Globals.dialogueBox.toggle_choice_selections(1)
				
			elif Input.is_action_just_released("ui_up"):
				Globals.dialogueBox.toggle_choice_selections(-1)
				
			if Input.is_action_just_pressed("interact"):
				Globals.dialogueBox.select_current_choice()
				
		elif Input.is_action_just_pressed("interact"):
			Globals.dialogueBox.proceed()
			
	elif Globals.mode == Globals.GameModes.WALK:
		
		if Input.is_action_just_pressed("reset") && Globals.mode == Globals.GameModes.WALK:
			reset_game()

func reset_game():

	Globals.rooms[currentRoomIndex].get_tree().change_scene(Globals.rooms[currentRoomIndex].get_tree().current_scene.filename)

