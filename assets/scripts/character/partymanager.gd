extends YSort

var partyMembers = [Globals.Characters.NICK, Globals.Characters.NOUR, Globals.Characters.SUWAN]
onready var characterObjects = [self.get_child(0), self.get_child(1), self.get_child(2)]

#export(Array, Texture) var dream_character_sheet = []
#export(Array, Texture) var real_character_sheet = []

export var dream_character_sheet : Texture
export var real_character_sheet : Texture

export(Array, Texture) var dream_portraits = []
export(Array, Texture) var real_portraits = []

var leaderIndex = 0 setget update_leader_to #Keeps track of the current leader.

func _ready():
	Globals.nick = characterObjects[0]
	Globals.nour = characterObjects[1]
	Globals.suwan = characterObjects[2]
	pass

func _process(_delta):
	if Globals.mode == Globals.GameModes.WALK:
		check_input()

func _physics_process(_delta):
	if Globals.mode == Globals.GameModes.WALK:
		check_input_physics()

func check_input_physics():
	
	var directionVector = Vector2(0,0)

	if Input.is_action_pressed("ui_up"):
		directionVector += Vector2.UP
		
	if Input.is_action_pressed("ui_down"):
		directionVector += Vector2.DOWN
	
	if Input.is_action_pressed("ui_left"):
		directionVector += Vector2.LEFT
		
	if Input.is_action_pressed("ui_right"):
		directionVector += Vector2.RIGHT
	
	characterObjects[leaderIndex].move(directionVector)
	characterObjects[wrapi(leaderIndex + 1, 0,3)].pathfind_to(get_leader())
	characterObjects[wrapi(leaderIndex - 1, 0,3)].pathfind_to(get_leader())

func check_input():
#	if Input.is_action_just_pressed("char_switch_left"):
#		rotate_leader_left()
	if Input.is_action_just_pressed("party_leader_switch"):
		change_leader()


#called by key input- TODO 
func change_leader():
	leaderIndex = wrapi(leaderIndex + 1, 0,3)
	update_leader_to(leaderIndex)

#called automatically whenever leaderIndex is changed, thanks to setget.
#changes the index variable, updates UI, any other logic anywhere else using signals.
func update_leader_to(newIndex):
	leaderIndex = newIndex
	
	
	if Globals.world == Globals.Worlds.DREAM:
		change_portrait(dream_portraits[leaderIndex])
	else:
		change_portrait(real_portraits[leaderIndex])

	#camera centers on this character
	
	Globals.camera.camera_following = characterObjects[leaderIndex]


func get_leader():
	return characterObjects[leaderIndex]

func get_leader_inkname():
	return get_leader().inkName
	
func get_character_objects():
	return self.characterObjects
	
func change_party_sprites(sheet):
	
	for character in characterObjects:
		#will be an array index when they are animated
		character.set_sprite(sheet)
		
	
#change portrait in the ui
func change_portrait(sprite):
	
	Globals.portrait.set_character(sprite, get_leader_inkname())
	

func change_assets_world(world):
	
	if world == Globals.Worlds.DREAM:
		change_party_sprites(dream_character_sheet)
		
	else:
		change_party_sprites(real_character_sheet)
		
	update_leader_to(leaderIndex)
