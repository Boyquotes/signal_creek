class_name Doortal
extends Area2D
# Attached to Door Portal Collision Areas
# Knows what room it leads to
# Knows where to place the party in the new room

export var room_index : int = 0 #what room this leads to
export var exit_position : Vector2 #where to place the party in the new room
export var entrance_timer_interval := 0.2

var entrance_timer

func _ready():
	entrance_timer = Timer.new()
	add_child(entrance_timer)
	entrance_timer.wait_time = entrance_timer_interval
	entrance_timer.connect("timeout", self, "entrance_timer_timeout")
	entrance_timer.set_one_shot(true)


func _on_Doortal_body_entered(body):
	
	if Globals.GameMode == Globals.GameModes.WALK and body.is_in_group("Player") && body == Globals.PartyObject.get_leader():
		entrance_timer.start()
		
		

func entrance_timer_timeout():
#	Globals.GameOverlay.start_fade_out()
	Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[room_index], exit_position)
