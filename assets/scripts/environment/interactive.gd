class_name Interactive
extends Area2D
# Interactive script for the INTERACT area collider of an interactive object
# Knows if player is close enough to interact with itself
# Says which characters can interact with itself
# Knows if the player has visited itself in the dream & real worlds

signal can_interact
signal cannot_interact

export var _interactive_by_nick = false
export var _interactive_by_nour = false 
export var _interactive_by_suwan = false

var _can_interact = false
var _party_is_inside = false
#this will be inkside
var _dream_visited = false
var _real_visited = false


func _ready():
	pass


func _process(_delta):
	if Input.is_action_just_pressed("party_leader_switch"):
		if get_overlapping_bodies().size() > 0:
			call_deferred("_check_leader_on_switch")
			
	if _can_interact:
		if Input.is_action_just_pressed("interact"):
			if Globals.GameMode == Globals.GameModes.WALK:
				Globals.GameMode = Globals.GameModes.TALK
				
				# tell inkparser to go to a knot based on this object's name
				# also tell the parser if this object has already been visited in the other world
				
				# TODO: Ink can check if the knot has been visited; make this variable check inkside instead
				Globals.DialogueBox.open(_get_object_name() + _get_visitedinworld_status())
				Globals.DialogueBox.background_panel_node.set_visible(true)


# When a body enters self, check if player can interact
func _on_InteractArea_body_entered(body):
	_party_is_inside = true
	_check_if_leader_can_interact(body)


# When a body exits self, if it is the party, the player cannot interact with self
func _on_InteractArea_body_exited(body):
	if body.is_in_group("Player"):
		_can_interact = false
		emit_signal("cannot_interact")
		_party_is_inside = false


# When switching leaders, check if new party leader is inside self
func _check_leader_on_switch():
	for body in self.get_overlapping_bodies():
		if _check_if_leader_can_interact(body):
			break


# Check if body is a leader that can interact with self
func _check_if_leader_can_interact(body):
	if body == Globals.PartyObject.get_leader():
		print("Leader In Interact Area: " + body.get_name())
		var currentLeader = Globals.PartyObject.leaderIndex
		
		if currentLeader == 0 and _interactive_by_nick:
			_can_interact = true
			emit_signal("can_interact")
			
		elif currentLeader == 1 and _interactive_by_nour:
			_can_interact = true
			emit_signal("can_interact")
			
		elif currentLeader == 2 and _interactive_by_suwan:
			_can_interact = true
			emit_signal("can_interact")
			
		else:
			_can_interact = false
			emit_signal("cannot_interact")
			
		return true
		
	return false


# return name of self as it is stated in the prefab file name
# excludes obj_ prefix in filename
func _get_object_name():
	var rawfilename = self.get_parent().filename
	
	return rawfilename.right(rawfilename.find_last("/") + 1).trim_suffix(".tscn").trim_prefix("obj_")


# Gets the world the player is currently in
# Gets whether we've visited this object in the other world
# Returns appropriate combination of strings
# TODO: Should this check be inkside instead?
func _get_visitedinworld_status():
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		if _real_visited:
			_dream_visited = true
			return "_realvisited"
			
		else:
			_dream_visited = true
			return "_dream"
			
	else:
		if _dream_visited:
			_real_visited = true
			return "_dreamvisited"
			
		else:
			_real_visited = true
			return "_real"
