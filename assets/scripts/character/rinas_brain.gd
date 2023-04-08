extends NPCBehavior

export var rina_positions : Dictionary = {
	"VOID": Vector2(-1000, -1000),
	"START": Vector2(472, 280),
	"BANDN": Vector2(146, -256),
	"TOPICSPOT": Vector2(284, -21),
	"HALLWAY": Vector2(869, -309),
	"END": Vector2(472, 280)
}

var current_room_index = 1
var current_position = "VOID"
var next_room_index = 3 # store the next room for whenever the player is actually in it
var _next_position



func _ready():
	Globals.Rina = self
	# SAVE SYSTEM: Keep track of rina's current state in ink
	self.get_parent().set_global_position(rina_positions.get(current_position))
	
	set_monitoring_ready()


# change states (starting knot name)
# newPosition: String name of the new position, passed from Ink
# doesn't IMMEDIATELY move rina unless player is already in the room.
# sets current_room_index and next_room_index vars
func move_rina(newPosition):
	print("will move rina in: " + newPosition)
	print("Rina's COORDINATES: " + String(rina_positions.get(newPosition)))
	
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
			
		"VOID":
			newPositionRoomIndex = 1
	
	next_room_index = newPositionRoomIndex
	current_position = newPosition
		 
	if RoomEngine.CurrentRoomIndex == current_room_index: # we are in the same room
		shlorp_out()

	elif RoomEngine.CurrentRoomIndex == newPositionRoomIndex:
		place_rina_in_new_room()
		shlorp_in()


# call this only when the player is actually in the room
func place_rina_in_new_room():
	if !Globals.Rina:
		return
	RoomEngine.move_object_to_new_room(self.get_parent(), RoomEngine.Rooms[current_room_index], RoomEngine.Rooms[next_room_index])
	self.get_parent().set_global_position(rina_positions.get(current_position))
	current_room_index = next_room_index
	shlorp_in()


func shlorp():
	var timeValue = _shlorping_target.material.get_shader_param("progress")
	
	if _shlorping_out:
		_shlorping_target.material.set_shader_param("progress", timeValue + .05)
		if timeValue > .95:
			_shlorping_target.set_visible(false)
			_shlorping_out = false
			_shlorping_target.material.set_shader_param("progress", 1.0)
			
			if _physical_collider:
				_physical_collider.set_deferred("disabled", true)
			
			if current_room_index == next_room_index:
				self.get_parent().set_global_position(rina_positions.get(current_position))
#				_shlorping_in = true
				shlorp_in()
				
			return
			
			
	elif _shlorping_in:
		_shlorping_target.material.set_shader_param("progress", timeValue - .05)
		if timeValue < 0.05:
			_shlorping_in = false
			_shlorping_target.material.set_shader_param("progress", 0)
			
			if _physical_collider:
				_physical_collider.set_deferred("disabled", false)
			
			return


## Appear from the void (visually)
#func shlorp_in():
#	_shlorping_target.set_visible(true)
#	print("shlorping in")
#	_shlorping_target.material.set_shader_param("progress", 1.0)
#	_shlorping_in = true
#	visibility = true
#	if not _override_set_monitoring:
#		self.set_monitoring(false)
#
#
## Disappear into the void (visually)
#func shlorp_out() -> void:
#	print(_shlorping_target)
#	print("shlorping out")
#	_shlorping_out = true
##	visibility = false
