extends Area2D

export var _knot_name : String = "abstract"

var _talked_to = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.GameMode == Globals.GameModes.WALK && _talked_to:
		self.queue_free()


func _on_LocationTrigger_body_entered(body):
	if body == Globals.PartyObject.get_leader() && Globals.GameMode == Globals.GameModes.WALK:
		for character in Globals.PartyObject.characterObjects:
			character.animate_idle()
			
		Globals.GameMode = Globals.GameModes.TALK
		_talked_to = true
		
		Globals.DialogueBox.open_at_knot(_knot_name)
		Globals.DialogueBox.background_panel_node.set_visible(true)
		
