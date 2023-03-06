extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#reference light
onready var nickLight0 = $Nick0;
onready var nickLight1 = $Nick1;
onready var nickLight2 = $Nick2;

onready var nourLight0 = $Nour0;
onready var nourLight1 = $Nour1;
onready var nourLight2 = $Nour2;

onready var suwanLight0 = $Suwan0;
onready var suwanLight1= $Suwan1;
onready var suwanLight2 = $Suwan2;

var first_light_turned_on = false;
#Called when the node enters the scene tree for the first time.
func _ready():
	Globals.RouteLights = self;
	pass # Replace with function body.

func turn_on_light(light_name): 
	
	get_node(light_name).visible = false;
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
