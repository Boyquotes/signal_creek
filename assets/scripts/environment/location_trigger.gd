class_name LocationTrigger
extends Area2D

# Attached to invisible area that triggers dialogue upon first entry

export var _knot_name : String = "abstract"



func _ready():
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_knot_name) > 0:
		self.set_monitoring(false)
		return
	
	self.set_monitoring(true)


# Check if body entering self is the player
func _on_LocationTrigger_body_entered(body) -> void:
	if body == Globals.PartyObject.get_leader() and Globals.GameMode == Globals.GameModes.WALK:
		for character in Globals.PartyObject.characterObjects:
			character.animate_idle()
			
		Globals.GameMode = Globals.GameModes.TALK
		Globals.DialogueBox.open_at_knot(_knot_name)
		Globals.DialogueBox.background_panel_node.set_visible(true)
		
		self.set_deferred("monitoring", false)
