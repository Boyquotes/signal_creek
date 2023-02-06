class_name Interactive
extends Area2D
# Interactive script for the INTERACT area collider of an interactive object
# Knows if player is close enough to interact with itself
# Says which characters can interact with itself
# Knows if the player has visited itself in the dream & real worlds
# Emits signal, parent "shiftable" script uses it for the outline shader

signal can_interact
signal cannot_interact

export var _interactive_by_nick = false
export var _interactive_by_nour = false 
export var _interactive_by_suwan = false

var _can_interact = false
var _party_is_inside = false

#OBSOLETE; THIS IS NOW CHECKED IN INK
#var _dream_visited = false
#var _real_visited = false


func _ready():
	pass


# When a body enters self, check if player can interact
func _on_InteractArea_body_entered(body):
	if body == Globals.PartyObject.get_leader():
		_check_if_can_interact()


# When a body exits self, check if player can interact
func _on_InteractArea_body_exited(body):
	if body == Globals.PartyObject.get_leader():
		_check_if_can_interact()


# check if player can interact with object
# communicate with updatecontroller
func _check_if_can_interact():
	if _check_if_leader_in_area() and _check_correct_leader():
		Globals.UpdateController.set_can_interact(true)
		Globals.UpdateController.set_closest_object(self)
		print(Globals.PartyObject.get_leader().get_name() + " Can Interact: " + _get_object_name())
		emit_signal("can_interact")
		return
	
	Globals.UpdateController.set_can_interact(false)
	print("Cannot Interact: " + _get_object_name())
	emit_signal("cannot_interact")


# Check if party leader is inside area
# return true or false
func _check_if_leader_in_area():
	for body in self.get_overlapping_bodies():
		if body == Globals.PartyObject.get_leader():
			return true
	
	return false


# Check if leader can interact with self
# Return true or false
func _check_correct_leader():
	var currentLeader = Globals.PartyObject.leaderIndex
	
	if currentLeader == 0 and _interactive_by_nick:
		return true
		
	elif currentLeader == 1 and _interactive_by_nour:
		return true
		
	elif currentLeader == 2 and _interactive_by_suwan:
		return true
		
	else:
		return false


# return name of self as it is stated in the prefab file name
# excludes obj_ prefix in filename
func _get_object_name():
	var rawfilename = self.get_parent().filename
	
	return rawfilename.right(rawfilename.find_last("/") + 1).trim_suffix(".tscn").trim_prefix("obj_")


# Gets the world the player is currently in
# Gets whether we've visited this object in the other world
# Returns appropriate combination of strings
# FUNCTION OBSOLETE; STATUS CHECKED IN INK
#func _get_visitedinworld_status():
#	if Globals.CurrentWorld == Globals.Worlds.DREAM:
#		if _real_visited:
#			_dream_visited = true
#			return "_realvisited"
#
#		else:
#			_dream_visited = true
#			return "_dream"
#
#	else:
#		if _dream_visited:
#			_real_visited = true
#			return "_dreamvisited"
#
#		else:
#			_real_visited = true
#			return "_real"
