class_name ElevatorArea
extends Interactive

# For EXT. Elevator object
# Includes interactivity, as well as a trigger to pan the camera upwards

var focus_camera_on_elevator = false



func _ready():
	Globals.Elevator = self


# IN CASE OF LEADER SWITCHING
# When a body enters self, check if player can interact
func _on_InteractArea_body_entered(body) -> void:
	if body == Globals.PartyObject.get_leader():
		_check_if_can_interact()
		
		focus_camera_on_elevator = true


# When a body exits self, check if player can interact
func _on_InteractArea_body_exited(body) -> void:
	if Globals.PartyObject and body == Globals.PartyObject.get_leader():
		emit_signal("cannot_interact")
		_check_if_can_interact()
		
		focus_camera_on_elevator = false
