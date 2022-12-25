extends Area2D

#door portal

export var room_index : int = 0 #what room this leads to
export var exit_position : Vector2 #where to place the party in the new room

func _on_Doortal_body_entered(body):
	
	if body.is_in_group("Player") && body == Globals.party.get_leader():
		
		Globals.gameCanvas.emit_signal("doorway_entered", Globals.gameCanvas.rooms[room_index], exit_position)
