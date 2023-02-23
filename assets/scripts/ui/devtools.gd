extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_Reset_pressed():
	Globals.UpdateController.reset_game()
	pass # Replace with function body.


func _on_Hallway_pressed():
	Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[1], RoomEngine.Rooms[1].party_starting_position)
	pass # Replace with function body.


func _on_TopicSpot_pressed():
	Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[2], RoomEngine.Rooms[2].party_starting_position)
	pass # Replace with function body.


func _on_BandN_pressed():
	Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[0], RoomEngine.Rooms[0].party_starting_position)
	pass # Replace with function body.


func _on_Fast_Forward_Dialogue_toggled(button_pressed):
	Globals.DialogueBox.fastforward = button_pressed
	pass # Replace with function body.
