class_name TutorialTrigger
extends Area2D

# Like location trigger, but specifically for the conversation that happens after the first route light turns on.

export var _knot_name : String = "abstract"
export var _prerequisite_knot_name: String = "abstract"



func _ready():
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_knot_name) > 0:
		self.set_monitoring(false)
	
	self.set_monitoring(true)


func _on_TutorialTrigger_body_entered(body) -> void:
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_prerequisite_knot_name) < 1:
		return
		
	if body == Globals.PartyObject.get_leader() and Globals.GameMode == Globals.GameModes.WALK:
		call_deferred("start_tutorial")


func start_tutorial() -> void:
		for character in Globals.PartyObject.characterObjects:
			character.animate_idle()
			
		Globals.GameMode = Globals.GameModes.TALK
		Globals.DialogueBox.open_at_knot(_knot_name)
		Globals.DialogueBox.background_panel_node.set_visible(true)
		
		self.set_deferred("monitoring", false)
