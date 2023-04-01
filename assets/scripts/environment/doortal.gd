class_name Doortal
extends Area2D

# Attached to Door Portal Collision Areas
# Knows what room it leads to
# Knows where to place the party in the new room
# TODO: Track what direction the player is moving in; to avoid entering by walking sideways

export var room_index : int = 0 #what room this leads to
export var exit_position : Vector2 #where to place the party in the new room
export var entrance_timer_interval := 0.2
export var entrance_direction := Vector2(0, 1)

var entrance_timer

func _ready():
	entrance_timer = Timer.new()
	add_child(entrance_timer)
	entrance_timer.wait_time = entrance_timer_interval
	entrance_timer.connect("timeout", self, "entrance_timer_timeout")
	entrance_timer.set_one_shot(true)


# Check if entering body is a player; start timer for changing rooms if so
func _on_Doortal_body_entered(body) -> void:
	if Globals.GameMode == Globals.GameModes.WALK and body == Globals.PartyObject.get_leader():
		
		if body.direction_vector == entrance_direction:
			Globals.GameOverlay.start_fade_out()
			Globals.GameRoot.loadingscreen_animation.play("Off")
			entrance_timer.start()


func _on_Doortal_body_exited(body):
	pass # Replace with function body.


# After timer, change rooms
func entrance_timer_timeout() -> void:
	Globals.GameRoot.emit_signal("doorway_entered", RoomEngine.Rooms[room_index], exit_position)
