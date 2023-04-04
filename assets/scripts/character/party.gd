class_name PartyManager
extends YSort

# Derived from original script by Jaden @cep450 !!!

# Party Manager Script: parent of 3 CharacterNavigator objects
# Determines which character is the "leader" (being controlled by the player), the other two follow
# LEADER IS ALWAYS NOUR; leader switching is not used currently


export(Array, Texture) var dream_character_sheets = []
export(Array, Texture) var real_character_sheets = []

var force_nour_movement = false
var partyMembers = [
	Globals.Characters.NOUR,
	Globals.Characters.NICK,
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
	Globals.Nour = characterObjects[0]
	Globals.Nick = characterObjects[1]
	Globals.Suwan = characterObjects[2]
	
	Globals.Nick.following_node = Globals.Nour
	Globals.Suwan.following_node = Globals.Nick


# Control leader movement; others follow
func move_leader_by_vector(directionVector: Vector2) -> void:
	characterObjects[leaderIndex].move_character_by_vector(directionVector)


# move following party members toward the node they are following
func move_followers_by_pathfind() -> void:
	var follower1 = characterObjects[wrapi(leaderIndex + 1, 0,3)]
	var follower2 = characterObjects[wrapi(leaderIndex - 1, 0,3)]
	
	follower1.pathfind_to(follower1.following_node)
	follower2.pathfind_to(follower2.following_node)


# Make leader move to position, regardless of player input
func force_move_leader() -> void:
	characterObjects[leaderIndex].pathfind_to(characterObjects[leaderIndex].following_node)


# Change sprite assets to match dream or real world
func change_assets_world(currentPlane) -> void:
	if currentPlane == Globals.Worlds.DREAM:
		change_party_sprites(false)
		
	else:
		change_party_sprites(true)
		
	# IN CASE OF LEADER SWITCHING
	update_leader_to(leaderIndex)


# Used in plane-shifting; update character's walking sprite sheet
func change_party_sprites(isInRealWorld: bool) -> void:
	if isInRealWorld:
		return# Once we use the shifting mechanic again, this will become relevant.
		
	# In the dream world
	for character in characterObjects:
		character.set_sprite(character.walking_spritesheet)


# Return array of children of self
func get_character_objects() -> Array:
	return self.characterObjects
	

# BELOW: IN CASE OF LEADER SWITCHING

# Update leader based on index
func change_leader() -> void:
	leaderIndex = wrapi(leaderIndex + 1, 0,3)
	update_leader_to(leaderIndex)


# called automatically whenever leaderIndex is changed, thanks to setget.
# changes the index variable, updates UI, any other logic anywhere else using signals.
func update_leader_to(newIndex: int) -> void:
	leaderIndex = newIndex
	Globals.PartyCamera.camera_following = characterObjects[leaderIndex]
	Globals.ColorManager.set_current_color(characterObjects[leaderIndex].get_name())


# Return currently controlled character in the party
func get_leader() -> Node2D:
	return characterObjects[leaderIndex]


# Return the index of the currently controlled character in the party array
func get_leader_index() -> int:
	return leaderIndex

