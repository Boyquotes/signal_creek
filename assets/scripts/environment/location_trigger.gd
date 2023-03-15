extends Area2D

export var _knot_name : String = "abstract"

onready var _talked_to = false
onready var _default_position = self.get_global_position()

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_pause_mode(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.GameMode == Globals.GameModes.WALK && _talked_to:
		self.set_global_position(Vector2(-1000, -1000))


func _on_LocationTrigger_body_entered(body):
	if body == Globals.PartyObject.get_leader() && Globals.GameMode == Globals.GameModes.WALK:
		for character in Globals.PartyObject.characterObjects:
			character.animate_idle()
			
		Globals.GameMode = Globals.GameModes.TALK
		_talked_to = true
		
		Globals.DialogueBox.open_at_knot(_knot_name)
		Globals.DialogueBox.background_panel_node.set_visible(true)
		
