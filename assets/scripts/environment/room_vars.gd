class_name RoomVars
extends Node2D
# Room Variables
# Knows its own PlaneManager
# Knows where the party should be placed when landing in the room
# Knows the minimum and maximum bounds for the camera

export(Vector2) var party_starting_position = Vector2(260, 140)
export(Vector2) var room_bounds_min = Vector2(0,0)
export(Vector2) var room_bounds_max = Vector2(464, 320)
export var room_index : int

onready var plane_manager = $PlaneManager


func _ready():
	pass


# Places partyNode as a child of self
# Sets party's position to starting position
# TODO: Offset can be removed once partymanager is refined
# PartyCamera's bounds are updated to suit this room
func place_party(partyNode):
	$PlaneManager/Overworld.add_child(partyNode)
	#partyNode.get_leader().set_global_position(party_starting_position)
	
	move_party_to_position(partyNode, party_starting_position)
	
	self.add_child(Globals.PartyCamera)
	Globals.PartyCamera.set_camera_bounds(room_bounds_min, room_bounds_max)

func move_party_to_position(partyNode, newPosition):
	var offset = -16
	
	for character in partyNode.get_character_objects():
		offset += 16
		character.set_global_position(Vector2(newPosition.x + offset, newPosition.y))


# Removes partyNode as a child of self
func remove_party(partyNode):
	$PlaneManager/Overworld.remove_child(partyNode)
	self.remove_child(Globals.PartyCamera)


# Set the Vector2 position the party starts in
func set_party_starting_position(partyPos):
	party_starting_position = partyPos


# Return the Vector2 position the party starts in
func get_party_starting_position():
	return self.party_starting_position


# Return PlaneManager belonging to self
func get_plane_manager():
	return plane_manager
