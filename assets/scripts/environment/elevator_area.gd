extends Interactive

var focus_on_elevator = false


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.Elevator = self
	pass # Replace with function body.


# IN CASE OF LEADER SWITCHING
# When a body enters self, check if player can interact
func _on_InteractArea_body_entered(body):
	if body == Globals.PartyObject.get_leader():
		_check_if_can_interact()
		focus_on_elevator = true


# When a body exits self, check if player can interact
func _on_InteractArea_body_exited(body):
	if Globals.PartyObject and body == Globals.PartyObject.get_leader():
		emit_signal("cannot_interact")
		_check_if_can_interact()
		focus_on_elevator = false
