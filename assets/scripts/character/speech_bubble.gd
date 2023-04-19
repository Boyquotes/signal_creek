class_name SpeechBubble
extends Node2D

# Bubble to indicate that a character is talking
# Follows Vector2 position of following_node

var following_node


func _ready():
	Globals.SpeechBubble = self


func _process(_delta):
	if following_node:
		self.set_global_position(following_node.get_global_position())


func set_following_node(nodeToFollow: Node2D) -> void:
	if following_node == nodeToFollow:
		return
	$AnimationPlayer.play("Close")
	yield(get_tree().create_timer(0.1), "timeout")
	following_node = nodeToFollow
