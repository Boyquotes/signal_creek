extends Light2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var _closing = false
var _opening = false
onready var _max_door_width = self.scale.x

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(_delta):
	if _closing:
		
		pass

func close_doors():
	_closing = true
	pass
	
func open_doors():
	_opening = true
	pass
