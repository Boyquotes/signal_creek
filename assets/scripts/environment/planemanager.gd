extends Node

#change current world you are in (dream world or real world)

onready var ground_node = $Ground
onready var walls_node = $Overworld/Walls
onready var objects = []

export (TileSet) var dreamset 
export (TileSet) var realset

onready var dream_gradient = preload("res://assets/shaders/gradient_dream.tres")
onready var real_gradient = preload("res://assets/shaders/gradient_real.tres")


func _ready():
	for node in get_tree().get_nodes_in_group("shiftable"):
		objects.push_back(node)
	pass

func _physics_process(_delta):
	
	if Input.is_action_just_pressed("planeshift"):
		shift_planes()

func shift_planes():
	
	Globals.GameOverlay.plane_shift()
	
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		set_real_world()
		Globals.GameWorldEnvironment.get_environment().set_adjustment_color_correction(real_gradient)
		
	else:
		set_dream_world()
		Globals.GameWorldEnvironment.get_environment().set_adjustment_color_correction(dream_gradient)

#to be used when walking into a different room
func set_correct_plane():
	
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		set_dream_world()
	else:
		set_real_world()

func set_dream_world():
	Globals.CurrentWorld = Globals.Worlds.DREAM
	set_tilesets(dreamset)
	Globals.PartyObject.change_assets_world(Globals.CurrentWorld)

func set_real_world():
	Globals.CurrentWorld = Globals.Worlds.REAL
	set_tilesets(realset)
	Globals.PartyObject.change_assets_world(Globals.CurrentWorld)

func set_tilesets(setId):
	
	ground_node.set_tileset(setId)
	walls_node.set_tileset(setId)
	set_objects_sprites()
	move_objects()

func set_objects_sprites():
	
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		for object in objects:
			object.set_sheet(object.dreamsheet)
			
	else:
		for object in objects:
			object.set_sheet(object.realsheet)

func move_objects():
	
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		for object in objects:
			object.set_position(object.dream_world_position)
			
	else:
		for object in objects:
			object.set_position(object.real_world_position)
