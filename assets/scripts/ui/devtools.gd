extends Control


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
