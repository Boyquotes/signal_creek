extends Node

onready var planeManager = null

onready var rooms = null
onready var currentRoom = null

onready var bandn = null
onready var hallway = null
onready var topicspot = null

func set_current_room(previousRoom, newRoom, viewport):

	viewport.add_child(newRoom)
	viewport.remove_child(previousRoom)
	currentRoom = newRoom
	
	move_party_to_new_room(Globals.party, previousRoom, newRoom)

	planeManager = newRoom.get_plane_manager()
	planeManager.set_correct_plane()

#move partyObject from the old room to new room
func move_party_to_new_room(partyObject, previousRoom, newRoom):

	previousRoom.remove_party(partyObject)
	newRoom.place_party(partyObject)
	Globals.gameCanvas.set_camera_pos(partyObject.get_leader().get_global_position())

func reset_game():

	currentRoom.get_tree().change_scene(currentRoom.get_tree().current_scene.filename)
