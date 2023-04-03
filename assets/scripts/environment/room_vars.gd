class_name RoomVars
extends Node2D

# Room Variables
# Knows its own PlaneManager
# Places the party when they land in this room
# Knows the minimum and maximum bounds for the camera

export(Vector2) var party_starting_position = Vector2(472, 280)
export(Vector2) var room_bounds_min = Vector2(0,0)
export(Vector2) var room_bounds_max = Vector2(464, 320)
export(Vector2) var party_teleport_position = Vector2(room_bounds_max.x / 2, room_bounds_max.y / 2)
export var room_index : int

onready var plane_manager = $PlaneManager



func _ready():
	pass


# Places partyNode as a child of self
# Sets party's position to starting position
# TODO: Offset can be removed once partymanager is refined
# PartyCamera's bounds are updated to suit this room
func place_party(partyNode: Node2D) -> void:
	$PlaneManager/Overworld.add_child(partyNode)
	move_party_to_position(partyNode, party_starting_position)
	self.add_child(Globals.PartyCamera)
	
	Globals.GameRoot.set_camera_following_vector(partyNode.get_leader().get_global_position())
	Globals.GameRoot.set_camera_pos(partyNode.get_leader().get_global_position(), Globals.PartyCamera)
	Globals.GameRoot.play_loading_screen()
	Globals.PartyCamera.set_camera_bounds(room_bounds_min, room_bounds_max)


# Removes partyNode as a child of self
func remove_party(partyNode: Node2D) -> void:
	$PlaneManager/Overworld.remove_child(partyNode)
	self.remove_child(Globals.PartyCamera)


# move specified party object to global vector position
func move_party_to_position(partyNode: Node2D, newPosition: Vector2) -> void:
	var offset = -15
	
	for character in partyNode.get_character_objects():
		character.set_global_position(Vector2(newPosition.x + offset, newPosition.y))
		character.following_vector_queue = [character.get_global_position()]
		offset += 15


func remove_object(objectNode: Node2D) -> void:
	$PlaneManager/Overworld.remove_child(objectNode)
	

func place_object(objectNode: Node2D) -> void:
	$PlaneManager/Overworld.add_child(objectNode)


func move_object_to_position(objectNode: Node2D, objectPosition: Vector2) -> void:
	objectNode.set_global_position(objectPosition)


# Set the Vector2 position the party starts in
func set_party_starting_position(partyPos: Vector2) -> void:
	party_starting_position = partyPos


# Return the Vector2 position the party starts in
func get_party_starting_position() -> Vector2:
	return self.party_starting_position


# Return PlaneManager belonging to self
func get_plane_manager() -> Node2D:
	return plane_manager
