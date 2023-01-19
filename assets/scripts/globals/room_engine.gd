extends Node
# Room Engine
# responsible for functions that change the room the player is currently in

const room_BandN = preload("res://assets/scenes/rooms/room_bandn.tscn")
const room_hallway = preload("res://assets/scenes/rooms/room_hallway.tscn")
const room_topicSpot = preload("res://assets/scenes/rooms/room_topicspot.tscn")

onready var PlaneManager = null
onready var CurrentRoom = null
onready var CurrentRoomIndex = 1
onready var bandn = null
onready var hallway = null
onready var topicspot = null
onready var Rooms = null


func _ready():
	bandn = room_BandN.instance()
	hallway = room_hallway.instance()
	topicspot = room_topicSpot.instance()
	Rooms = [bandn, hallway, topicspot]


# Remove previousRoom from viewport, add newRoom to viewport
func change_current_room(previousRoom, newRoom, viewport):
	viewport.add_child(newRoom)
	viewport.remove_child(previousRoom)
	CurrentRoom = newRoom
	
	move_party_to_new_room(Globals.PartyObject, previousRoom, newRoom)
	
	PlaneManager = newRoom.get_plane_manager()
	PlaneManager.set_correct_world()


# Move partyObject from previousRoom to newRoom
func move_party_to_new_room(partyObject, previousRoom, newRoom):
	previousRoom.remove_party(partyObject)
	newRoom.place_party(partyObject)
	
	Globals.GameCanvas.set_camera_pos(partyObject.get_leader().get_global_position(), Globals.PartyCamera)
