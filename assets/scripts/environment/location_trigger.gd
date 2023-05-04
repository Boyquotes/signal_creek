class_name LocationTrigger
extends Interactive

# Attached to invisible area that triggers dialogue upon first entry

export var _knot_name : String = "abstract"
export var _automatic : bool = true



func _ready():
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_knot_name) > 0 and _automatic:
		self.set_deferred("monitoring", false)
		return
	
	self.set_deferred("monitoring", true)


# Check if body entering self is the player
func _on_LocationTrigger_body_entered(body) -> void:
	if body == Globals.Nour and Globals.GameMode == Globals.GameModes.WALK:
		Globals.InputDriver.set_closest_object(self)
		
		if _automatic:
			start_interaction()


# When a body exits self, check if player can interact
func _on_LocationTrigger_body_exited(body) -> void:
	pass


func _get_object_name() -> String:
	return _knot_name


func start_interaction() -> void:
	for character in Globals.PartyObject.characterObjects:
		character.animate_idle()
			
	Globals.GameMode = Globals.GameModes.TALK
	Globals.DialogueBox.open_at_knot(_knot_name)
	Globals.DialogueBox.background_panel_node.set_visible(true)
	
	if _automatic:
		self.set_deferred("monitoring", false)
