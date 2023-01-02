extends YSort
# Derived from original script by Jaden @cep450 !!!

# Party Manager Script
# Stores all 3 character objects
# Determines which character is the "leader" (being controlled)
# The other 2 follow


export var dream_character_sheet : Texture
export var real_character_sheet : Texture
export(Array, Texture) var dream_portraits = []
export(Array, Texture) var real_portraits = []
#export(Array, Texture) var dream_character_sheet = []
#export(Array, Texture) var real_character_sheet = []

var partyMembers = [
	Globals.Characters.NICK,
	Globals.Characters.NOUR,
	Globals.Characters.SUWAN
]

# Keeps track of current leader
var leaderIndex = 0 setget update_leader_to

onready var characterObjects = [
	self.get_child(0),
	self.get_child(1),
	self.get_child(2)
]

func _ready():
	Globals.Nick = characterObjects[0]
	Globals.Nour = characterObjects[1]
	Globals.Suwan = characterObjects[2]


func move_party_by_vector(directionVector):
	# TODO: pathfind_to the closest object if there is one (and face the object)
	characterObjects[leaderIndex].move_character_by_vector(directionVector)
	characterObjects[wrapi(leaderIndex + 1, 0,3)].pathfind_to(get_leader())
	characterObjects[wrapi(leaderIndex - 1, 0,3)].pathfind_to(get_leader())


# Update leader based on index
func change_leader():
	leaderIndex = wrapi(leaderIndex + 1, 0,3)
	update_leader_to(leaderIndex)


# called automatically whenever leaderIndex is changed, thanks to setget.
# changes the index variable, updates UI, any other logic anywhere else using signals.
func update_leader_to(newIndex):
	leaderIndex = newIndex
	Globals.PartyCamera.camera_following = characterObjects[leaderIndex]
	
	if Globals.CurrentWorld == Globals.Worlds.DREAM:
		change_portrait(dream_portraits[leaderIndex])
		
	else:
		change_portrait(real_portraits[leaderIndex])


func get_leader():
	return characterObjects[leaderIndex]


func get_leader_inkname():
	return get_leader().inkName


func get_character_objects():
	return self.characterObjects


func change_party_sprites(sheet):
	for character in characterObjects:
		# will be an array index when they are animated
		character.set_sprite(sheet)


# Change CornerPortrait in the ui
func change_portrait(sprite):
	Globals.CornerPortrait.set_character(sprite, get_leader_inkname())


func change_assets_world(currentPlane):
	if currentPlane == Globals.Worlds.DREAM:
		change_party_sprites(dream_character_sheet)
		
	else:
		change_party_sprites(real_character_sheet)
		
	update_leader_to(leaderIndex)
