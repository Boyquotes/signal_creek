extends Light2D

export var door_speed := 0.9

var _closing = false
var _opening = false
onready var _max_door_width = self.scale.x

# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.ElevatorDoorLight = self
	pass # Replace with function body.

#func _process(_delta):
#	if _closing:
#		self.scale.x *= door_speed
#		if self.scale.x <= 0.1:
#			self.scale.x = 0
#			_closing = false
#
func close_doors():
	$AnimationPlayer.play("Closing")
	pass

func open_doors():
	$AnimationPlayer.play("Opening")
	pass
