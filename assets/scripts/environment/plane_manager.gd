class_name PlaneManager
extends Node

# Changes which world the player is in (Dream or Real world)
# Applies tilesets to walls and floor, appropriate recoloration gradient to the WorldEnvironment
# Moves all room objects to the appropriate positions


export var _shifting_enabled = false
export (TileSet) var dreamset = preload("res://assets/sprites/tilesets/tileset_abstract_dream.tres")
export (TileSet) var realset
export var dream_gradient = preload("res://assets/materials/gradients/gradient_dream.tres")
export var real_gradient = preload("res://assets/materials/gradients/gradient_real.tres")

onready var _ground_node = $Ground
onready var _walls_node = $Overworld/Walls
onready var _room_objects = []



func _ready():
	dreamset = $Ground.get_tileset()
	if !realset:
		realset = dreamset
		
	for node in get_tree().get_nodes_in_group("shiftable"):
		_room_objects.push_back(node)


func _physics_process(_delta):
	if Input.is_action_just_pressed("planeshift") and _shifting_enabled:
		shift_planes()


# Triggers plane shifting shader in GameOverlay
# Calls appropriate function to change room attributes to the world the player is entering
func shift_planes() -> void:
	Globals.GameOverlay.plane_shift()
	
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		_set_to_real_world()
		
	else:
		_set_to_dream_world()


# To be used when walking into a different room; set appropriate sprite assets and positions
func set_correct_world() -> void:
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		_set_to_dream_world()
		
	else:
		_set_to_real_world()


# Sets Global World variable to DREAM
# Sets wall and floor tilesets
# Tells the Party object to use its dream world assets
# Tells the WorldEnvironment to use the dream world gradient
func _set_to_dream_world() -> void:
	Globals.CurrentWorld = Globals.Worlds.DREAM
	_set_tilesets(dreamset)
	_set_room_objects_sprites()
	_move_room_objects()
	Globals.PartyObject.change_assets_world(Globals.CurrentWorld)
	Globals.GameWorldEnvironment.get_environment().set_adjustment_color_correction(dream_gradient)
	Globals.DialogueBox.set_current_world("dream")


# Sets Global World variable to REAL
# Sets wall and floor tilesets
# Tells the Party object to use its real world assets
# Tells the WorldEnvironment to use the real world gradient
func _set_to_real_world() -> void:
	Globals.CurrentWorld = Globals.Worlds.REAL
	_set_tilesets(realset)
	_set_room_objects_sprites()
	_move_room_objects()
	Globals.PartyObject.change_assets_world(Globals.CurrentWorld)
	Globals.GameWorldEnvironment.get_environment().set_adjustment_color_correction(real_gradient)
	Globals.DialogueBox.set_current_world("real")


# Set room tilesets to match current world
func _set_tilesets(setId) -> void:
	_ground_node.set_tileset(setId)
	_walls_node.set_tileset(setId)


# Set object sprites to match current world
func _set_room_objects_sprites() -> void:
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		for object in _room_objects:
			object.set_sheet(object.dreamsheet)
			
	else:
		for object in _room_objects:
			object.set_sheet(object.realsheet)


# Set object's current position to match current world
func _move_room_objects() -> void:
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		for object in _room_objects:
			object.set_position(object.dream_world_position)
			
	else:
		for object in _room_objects:
			object.set_position(object.real_world_position)
