extends Interactive

export var rina_positions : Dictionary = {
	"START": Vector2(322, 114),
	"BANDN": Vector2(100, 100),
	"TOPICSPOT": Vector2(100, 100),
	"HALLWAY": Vector2(100, 100),
	"END": Vector2(100, 100)
}

var current_room_index = 1
var current_position = Vector2(100, 100)
var next_room_index = 3 # store the next room for whenever the player is actually in it
var _shlorping_in = false
var _shlorping_out = false
var _next_position

onready var rina_sprite = self.get_parent().get_child(0)
# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.Rina = self


func _process(_delta):
	if _shlorping_in or _shlorping_out:
		rina_shlorp()


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
		 
	if RoomEngine.CurrentRoomIndex == current_room_index: # we are in the same room
		rina_shlorp_out()
		
		#rina_shlorp_in()

	elif RoomEngine.CurrentRoomIndex == newPositionRoomIndex:
		#rina_shlorp_out(true, rina_positions.get(newPosition))
		place_rina_in_new_room()
		rina_shlorp_in()

# call this only when the player is actually in the room
func place_rina_in_new_room():
	RoomEngine.move_object_to_new_room(self.get_parent(), RoomEngine.Rooms[current_room_index], RoomEngine.Rooms[next_room_index])
	self.get_parent().set_global_position(rina_positions.get(current_position))
	current_room_index = next_room_index
	rina_shlorp_in()


# appear from the void (visually)
func rina_shlorp_in():
	rina_sprite.material.set_shader_param("time", 0.0)
	_shlorping_in = true
	get_parent().set_pause_mode(false)


func rina_shlorp():
	var timeValue = rina_sprite.material.get_shader_param("time")
	
	if _shlorping_in:
		if timeValue > 1.56:
			_shlorping_in = false
			rina_sprite.material.set_shader_param("time", 1.57)
			
			return
			
		rina_sprite.material.set_shader_param("time", timeValue + .05)
	
	elif _shlorping_out:
		if timeValue < .05:
			_shlorping_out = false
			rina_sprite.material.set_shader_param("time", 0)
			self.get_parent().set_global_position(RoomEngine.CurrentRoom.room_bounds_min)
			
			if current_room_index == next_room_index:
				self.get_parent().set_global_position(rina_positions.get(current_position))
				_shlorping_in = true
				#get_parent().set_pause_mode(true)
				
			return
			
		rina_sprite.material.set_shader_param("time", timeValue - .05)


# disappear into the void (visually)
func rina_shlorp_out():
	_shlorping_out = true

