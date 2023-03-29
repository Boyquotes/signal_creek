extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var following_node

# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.SpeechBubble = self
	pass # Replace with function body.


func _process(_delta):
	if following_node:
		self.set_global_position(following_node.get_global_position())


func set_following_node(nodeToFollow):
	following_node = nodeToFollow
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
