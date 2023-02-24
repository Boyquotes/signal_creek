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


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.Rina = self
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#change states (starting knot name)
func move_rina(room):
	print("moving rina to " + room)
	var roomNum = 0
	
	match room:
		"START": # start in hallway
			roomNum = 1
			
		"BANDN":
			roomNum = 0
			
		"TOPICSPOT":
			roomNum = 2
			
		"HALLWAY":
			roomNum = 1
			
		"END": # end in hallway
			roomNum = 1
	
	if roomNum != current_room_index:
		current_room_index = roomNum
	
	self.get_parent().set_global_position(rina_positions.get(room))
	

func place_rina():
	RoomEngine.move_object_to_new_room(self.get_parent(), RoomEngine.Rooms[current_room_index], RoomEngine.Rooms[roomNum])

#appear from the void

#disappear into the void
