extends Control

var hidden = true


func _ready():
	self.set_visible(false)

func _process(_delta):
	if Input.is_action_just_pressed("open_dev_tools"):
		if hidden:
			print(hidden)
			self.set_visible(true)
			hidden = false
			
		else:
			print(hidden)
			self.set_visible(false)
			hidden = true

func _on_Reset_pressed():
	Globals.UpdateController.reset_game()


func _on_Hallway_pressed():
	if RoomEngine.CurrentRoom != RoomEngine.Rooms[1]:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[1], RoomEngine.Rooms[1].party_teleport_position)


func _on_TopicSpot_pressed():
	if RoomEngine.CurrentRoom != RoomEngine.Rooms[2]:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[2], RoomEngine.Rooms[2].party_teleport_position)


func _on_BandN_pressed():
	if RoomEngine.CurrentRoom != RoomEngine.Rooms[0]:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[0], RoomEngine.Rooms[0].party_teleport_position)


func _on_Fast_Forward_Dialogue_toggled(button_pressed):
	Globals.DialogueBox.fastforward = button_pressed
	pass # Replace with function body.


func _on_Open_At_Knot_pressed():
	if Globals.GameMode == Globals.GameModes.WALK:
		Globals.GameMode = Globals.GameModes.TALK
		Globals.DialogueBox.open_at_knot($VBoxContainer/LineEdit.text)
		Globals.DialogueBox.background_panel_node.set_visible(true)
