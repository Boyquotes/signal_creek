class_name Doortal
extends Area2D
# Attached to Door Portal Collision Areas
# Knows what room it leads to
# Knows where to place the party in the new room

export var room_index : int = 0 #what room this leads to
export var exit_position : Vector2 #where to place the party in the new room


func _on_Doortal_body_entered(body):
	
	if body.is_in_group("Player") && body == Globals.PartyObject.get_leader():
		
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[room_index], exit_position)
