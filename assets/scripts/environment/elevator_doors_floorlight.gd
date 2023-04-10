class_name ElevatorDoorsFloorlight
extends Light2D

# For the light that shines on the floor of INT. ELEVATOR when the doors are open/opening

export var door_speed := 0.9

var _closing = false
var _opening = false
onready var _max_door_width = self.scale.x



func _ready():
	Globals.ElevatorDoorLight = self


func close_doors() -> void:
	$AnimationPlayer.play("Closing")


func open_doors() -> void:
	$AnimationPlayer.play("Opening")
