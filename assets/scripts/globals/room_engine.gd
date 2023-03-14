extends Node
# Room Engine
# responsible for functions that change the room the player is currently in

const room_BandN = preload("res://assets/scenes/rooms/room_bandn.tscn")
const room_hallway = preload("res://assets/scenes/rooms/room_hallway.tscn")
const room_topicSpot = preload("res://assets/scenes/rooms/room_topicspot.tscn")
const room_elevator = preload("res://assets/scenes/rooms/room_elevator.tscn")

var defaultRoomIndex = 4
var defaultStartingPos = null

onready var PlaneManager = null
onready var CurrentRoom = null
onready var CurrentRoomIndex = defaultRoomIndex
onready var starter
onready var bandn = null
onready var hallway = null
onready var topicspot = null
onready var elevator = null
onready var Rooms = null


func _ready():
	bandn = room_BandN.instance()
	hallway = room_hallway.instance()
	topicspot = room_topicSpot.instance()
	elevator = room_elevator.instance()
	
	Rooms = [bandn, hallway, topicspot, elevator, starter]
	#defaultStartingPos = Rooms[defaultRoomIndex].get_party_starting_position()


# Remove previousRoom from viewport, add newRoom to viewport
func change_current_room(previousRoom, newRoom, viewport):
	viewport.add_child(newRoom)
	viewport.remove_child(previousRoom)
	CurrentRoom = newRoom
	CurrentRoomIndex = newRoom.room_index
	
	move_party_to_new_room(Globals.PartyObject, previousRoom, newRoom)
	
	PlaneManager = newRoom.get_plane_manager()
	PlaneManager.set_correct_world()


# Move partyObject from previousRoom to newRoom
func move_party_to_new_room(partyObject, previousRoom, newRoom):
	previousRoom.remove_party(partyObject)
	newRoom.place_party(partyObject)
	
	Globals.GameCanvas.set_camera_pos(partyObject.get_leader().get_global_position(), Globals.PartyCamera)
	Globals.GameOverlay.start_fade_in()
	
	if Globals.Rina and newRoom == Rooms[Globals.Rina.next_room_index]:
		Globals.Rina.place_rina_in_new_room()
		print("rina moved")


# move objectNode from previousRoom to newRoom
func move_object_to_new_room(objectNode, previousRoom, newRoom):
	previousRoom.remove_object(objectNode)
	newRoom.place_object(objectNode)

func reload():
	bandn = room_BandN.instance()
	hallway = room_hallway.instance()
	topicspot = room_topicSpot.instance()
	elevator = room_elevator.instance()
	
	Rooms = [bandn, hallway, topicspot, elevator, starter]
