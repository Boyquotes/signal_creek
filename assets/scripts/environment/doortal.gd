extends Area2D

export var room_index : int = 0
export var exit_position : Vector2

func _on_Doortal_body_entered(body):
	if body.is_in_group("Player") && body == Globals.party.get_leader():
		Globals.gameCanvas.emit_signal("doorway_entered", Globals.gameCanvas.rooms[room_index], exit_position)
		
