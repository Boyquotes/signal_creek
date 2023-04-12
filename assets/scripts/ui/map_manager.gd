extends Control

export var map_pin : NodePath
export var hallway_walkable_top_left := Vector2(-136, -360)
export var hallway_walkable_bottom_right := Vector2(1072, 832)
export var map_walkable_top_left := Vector2(168, 104)
export var map_walkable_bottom_right := Vector2(568, 432)

var party_position := Vector2(0, 0)

# Coordinates of top right and bottom left of map region
# Coordinates of top right and bottom left of hallway map
# Check what room player is in; if hallway, do the stuff
# Coordinates of TopicSpot room pos on map
# Coordinates of B and N room pos on map

onready var pin = get_node(map_pin)

func _ready():
	Globals.FloorMap = self

func _process(_delta):
	pass


func toggle_map() -> void:
	if self.visible:
		self.set_visible(false)
		return
		
	self.set_visible(true)
	# if in hallway
	if RoomEngine.CurrentRoomIndex == 1:
		var roomPosLerpX = inverse_lerp(hallway_walkable_top_left.x, hallway_walkable_bottom_right.x, Globals.Nour.get_global_position().x)
		var roomPosLerpY = inverse_lerp(hallway_walkable_top_left.y, hallway_walkable_bottom_right.y, Globals.Nour.get_global_position().y)
		
		var newPinPosX = lerp(map_walkable_top_left.x, map_walkable_bottom_right.x, roomPosLerpX)
		var newPinPosY = lerp(map_walkable_top_left.y, map_walkable_bottom_right.y, roomPosLerpY)
		pin.set_global_position(Vector2(newPinPosX, newPinPosY))
		
