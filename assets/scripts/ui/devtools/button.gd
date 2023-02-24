extends MenuButton


enum button_functions { none, reset_game, fast_forward, goto_hallway, goto_topicspot, goto_bandn}
export(button_functions) var functionality = button_functions.none


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	match functionality:
		button_functions.none:
			return
			
		button_functions.reset_game:
			return
			
		button_functions.fast_forward:
			return
			
		button_functions.goto_hallway:
#			RoomEngine.call_deferred("change_current_room", RoomEngine.CurrentRoom, RoomEngine.Rooms[1], Globals.GameCanvas.viewport)
#			Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[1], RoomEngine.Rooms[1].party_starting_position)
			#return
			return
			
		button_functions.goto_topicspot:
			return
#			Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[2], RoomEngine.Rooms[2].party_starting_position)
#			return
			
		button_functions.goto_bandn:
			return
#			Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[0], RoomEngine.Rooms[0].party_starting_position)
#			return
	pass # Replace with function body.
