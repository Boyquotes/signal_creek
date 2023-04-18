extends NPCBehavior

export var rina_positions : Dictionary = {
	"VOID": Vector2(-1000, -1000),
	"START": Vector2(472, 280),
	"BANDN": Vector2(373, -327),
	"TOPICSPOT": Vector2(284, -21),
	"HALLWAY": Vector2(974, 333),
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

	if RoomEngine.CurrentRoomIndex == newPositionRoomIndex:
		place_rina_in_new_room(RoomEngine.CurrentRoom)
#		shlorp_in()


# call this only when the player is actually in the room
func place_rina_in_new_room(newRoom):
	print("moving rina")
	if !Globals.Rina:
		print("no rina found")
		return
	RoomEngine.move_object_to_new_room(self.get_parent(), RoomEngine.Rooms[current_room_index], newRoom)
	self.get_parent().set_global_position(rina_positions.get(current_position))
	print(rina_positions.get(current_position))
	current_room_index = next_room_index
	shlorp_in()


func shlorp_out():
	_shlorping_target.play(_shlorp_animation_name)
	
	if _physical_collider:
		_physical_collider.set_deferred("disabled", true)
			
	
	var camPosWithOffset = Vector2(self.get_global_position().x + Globals.DialogueBox.camera_offset_dialogue, self.get_global_position().y)
	

	if Globals.Elevator and Globals.Elevator.focus_camera_on_elevator:
		Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.25, 0.25))
		
	else:
		Globals.GameRoot.set_camera_following_vector(camPosWithOffset) #add the fuckin uhh camera offset
		Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.5, 0.5))
	
#	if current_room_index == next_room_index:
#		self.get_parent().set_global_position(rina_positions.get(current_position))
#		shlorp_in()
