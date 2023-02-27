extends Interactive

export var rina_positions : Dictionary = {
	"START": Vector2(100, 100),
	"BANDN": Vector2(100, 100),
	"TOPICSPOT": Vector2(100, 100),
	"HALLWAY": Vector2(100, 100),
	"END": Vector2(100, 100)
}

var current_room_index = 1
var current_position = Vector2(100, 100)
var next_room_index = 3 # store the next room for whenever the player is actually in it


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.Rina = self


# change states (starting knot name)
# newPosition: String name of the new position, passed from Ink
# doesn't IMMEDIATELY move rina unless player is already in the room.
# sets current_room_index and next_room_index vars
func move_rina(newPosition):
	print("will move rina in: " + newPosition)
	
	var newPositionRoomIndex = 0
	
	match newPosition: # determine which room we are going to
		"START": # start in hallway
			newPositionRoomIndex = 1
			
		"BANDN":
			newPositionRoomIndex = 0
			
		"TOPICSPOT":
			newPositionRoomIndex = 2
			
		"HALLWAY":
			newPositionRoomIndex = 1
			
		"END": # end in hallway
			newPositionRoomIndex = 1
	
	next_room_index = newPositionRoomIndex
	current_position = newPosition
		 
	if RoomEngine.CurrentRoomIndex == current_room_index and newPositionRoomIndex == current_room_index: # we are in the same room
		# make rina invisible
		self.get_parent().set_global_position(rina_positions.get(newPosition))
		# make rina visible again

	elif RoomEngine.CurrentRoomIndex == newPositionRoomIndex:
		# make rina invisible
		place_rina_in_new_room()
		# make rina visible again


# call this only when the player is actually in the room
func place_rina_in_new_room():
	RoomEngine.move_object_to_new_room(self.get_parent(), RoomEngine.Rooms[current_room_index], RoomEngine.Rooms[next_room_index])
	self.get_parent().set_global_position(rina_positions.get(current_position))
	current_room_index = next_room_index

#appear from the void (visually)

#disappear into the void (visually)

