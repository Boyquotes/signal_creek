extends Node2D

onready var plane_manager = $PlaneManager
export(Vector2) var party_starting_position = Vector2(260, 140)
export(Vector2) var room_bounds_min = Vector2(0,0)
export(Vector2) var room_bounds_max = Vector2(464, 320)


func get_plane_manager():
	
	return plane_manager

func place_party(partyNode):
	
	$PlaneManager/Overworld.add_child(partyNode)
	partyNode.get_leader().set_global_position(party_starting_position)
	
	var offset = 0
	
	for character in partyNode.get_character_objects():
		offset += 0.5
		character.set_global_position(party_starting_position + Vector2(offset, offset))
	
	self.add_child(Globals.PartyCamera)
	Globals.PartyCamera.set_camera_bounds(room_bounds_min, room_bounds_max)

func remove_party(partyNode):
	
	$PlaneManager/Overworld.remove_child(partyNode)
	self.remove_child(Globals.PartyCamera)

func set_party_starting_position(position):
	
	party_starting_position = position

func get_party_starting_position():
	
	return self.party_starting_position
