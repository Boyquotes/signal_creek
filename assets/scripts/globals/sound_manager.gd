class_name SoundManager
extends Node

# Manages all audio streams and audio functions

export var music_bandn : AudioStream
export var music_hallway : AudioStream
export var music_topicspot : AudioStream
export var music_elevator : AudioStream
export var music_starter : AudioStream
export var music_musicstand : AudioStream
export var music_aplequest : AudioStream
export var music_aplequestemo : AudioStream
export var music_aplequestwater : AudioStream
export var smooth_change_volume_rate := 0.5

var decreasing_music_volume
var increasing_music_volume

# VOLUME RANGE: -40dB to 2.4dB

# I hate this but it is what it is.
export var sound_effects : Dictionary = {
	"applefall": preload("res://assets/sounds/sfx/applefall.wav"),
	"applefallsplat": preload("res://assets/sounds/sfx/applefallsplat.wav"),
	"boomyelevator": preload("res://assets/sounds/sfx/boomyelevator.wav"),
	"boomyelevator2": preload("res://assets/sounds/sfx/boomyelevator2.wav"),
	"buttonpress": preload("res://assets/sounds/sfx/buttonpress.wav"),
	"choiceselect": preload("res://assets/sounds/sfx/choiceselect.wav"),
	"clack": preload("res://assets/sounds/sfx/clack.wav"),
	"clickydoor": preload("res://assets/sounds/sfx/clickydoor.wav"),
	"dialoguecloseorganic": preload("res://assets/sounds/sfx/dialoguecloseorganic.wav"),
	"dialogueopenorganic": preload("res://assets/sounds/sfx/dialogueopenorganic.wav"),
	"dukedeliciouslaugh": preload("res://assets/sounds/sfx/dukedeliciouslaugh.wav"),
	"earlearligoldlaugh": preload("res://assets/sounds/sfx/earlearligoldlaugh.wav"),
	"elevatorcrash": preload("res://assets/sounds/sfx/elevatorcrash.wav"),
	"elevatorup": preload("res://assets/sounds/sfx/elevatorup.wav"),
	"emperorevercrisplaugh": preload("res://assets/sounds/sfx/emperorevercrisplaugh.wav"),
	"fatherfujilaugh": preload("res://assets/sounds/sfx/fatherfujilaugh.wav"),
	"footsteps": preload("res://assets/sounds/sfx/footsteps.wav"),
	"footsteps2": preload("res://assets/sounds/sfx/footsteps2.wav"),
	"grandduchessgrannylaugh": preload("res://assets/sounds/sfx/grandduchessgrannylaugh.wav"),
	"insertcoin": preload("res://assets/sounds/sfx/insertcoin.wav"),
	"leavesrustling": preload("res://assets/sounds/sfx/leavesrustling.wav"),
	"mellowchime": preload("res://assets/sounds/sfx/mellowchime.wav"),
	"menucloseorganic": preload("res://assets/sounds/sfx/menucloseorganic.wav"),
	"menunavorganic": preload("res://assets/sounds/sfx/menunavorganic.wav"),
	"menuopenorganic": preload("res://assets/sounds/sfx/menuopenorganic.wav"),
	"menuselectorganic": preload("res://assets/sounds/sfx/menuselectorganic.wav"),
	"newchoiceentry": preload("res://assets/sounds/sfx/newchoiceentry.wav"),
	"newentry": preload("res://assets/sounds/sfx/newentry.wav"),
	"oneshotchime": preload("res://assets/sounds/sfx/oneshotchime.wav"),
	"pinkladylaugh": preload("res://assets/sounds/sfx/pinkladylaugh.wav"),
	"poopman": preload("res://assets/sounds/sfx/poopman.wav"),
	"princependragonlaugh": preload("res://assets/sounds/sfx/princependragonlaugh.wav"),
	"shlorp": preload("res://assets/sounds/sfx/shlorp.wav"),
	"shlorpbackwards": preload("res://assets/sounds/sfx/shlorpbackwards.wav"),
	"shlorpspeed": preload("res://assets/sounds/sfx/shlorpspeed.wav"),
	"sodacandrop": preload("res://assets/sounds/sfx/sodacandrop.wav"),
	"spookychime": preload("res://assets/sounds/sfx/spookychime.wav"),
	"typewriter": preload("res://assets/sounds/sfx/typewriter.wav"),
	"typewriter2": preload("res://assets/sounds/sfx/typewriter2.wav"),
	"typewriter3": preload("res://assets/sounds/sfx/typewriter3.wav"),
	"SFXW001_indoor_roomtone_entrance hall": preload("res://assets/sounds/ambient/SFXW001_indoor_roomtone_entrance hall.wav"),
	"wetkiss": preload("res://assets/sounds/sfx/wetkiss.wav")
}

export var character_voices : Dictionary = {
	"nour": preload("res://assets/sounds/sfx/typewriter.wav"),
	"nick": preload("res://assets/sounds/sfx/typewriter.wav"),
	"ms. suwan": preload("res://assets/sounds/sfx/typewriter.wav"),
	"chad": preload("res://assets/sounds/sfx/typewriter.wav"),
	"brody": preload("res://assets/sounds/sfx/typewriter.wav"),
	"kristy": preload("res://assets/sounds/sfx/typewriter.wav"),
	"manager": preload("res://assets/sounds/sfx/typewriter.wav"),
	"placeholder": preload("res://assets/sounds/sfx/typewriter.wav")
}

onready var room_music = [music_bandn, music_hallway, music_topicspot, music_elevator, music_starter]

onready var sound_player = $SoundEffects
onready var ambient_player = $Ambience
onready var music_player = $Music
onready var ui_sound_player = $UISounds
onready var nour_footstep_player = $FootStepsNour
onready var nick_footstep_player = $FootStepsNick
onready var suwan_footstep_player = $FootStepsSuwan

onready var music_tracks : Dictionary = {
	"BandNMusic": music_bandn,
	"HallwayMusic": music_hallway,
	"TopicSpotMusic": music_topicspot,
	"ElevatorMusic": music_elevator,
	"MusicStandMusic": music_musicstand,
	"ApleQuestMusic": music_aplequest,
	"ApleQuestEmoMusic": music_aplequestemo,
	"ApleQuestWaterMusic": music_aplequestwater
}

func _ready():
#	set_mute_audio(true)

#	print_new_sfx_dictionary()
		
	Globals.Nour.footstep_audio_stream = nour_footstep_player
	Globals.Nick.footstep_audio_stream = nick_footstep_player
	Globals.Suwan.footstep_audio_stream = suwan_footstep_player


func _process(_delta):
#	if decreasing_music_volume:
#		smooth_decrease_stream_volume(music_player)
#
#	elif increasing_music_volume:
#		smooth_increase_stream_volume(music_player)
	pass


func play_sound(audioName: String) -> void:
	if sound_effects.get(audioName) != null:
		sound_player.stream = sound_effects.get(audioName)
		sound_player.play()
		sound_player.set_stream_paused(false)
	else:
		printerr("sound does not exist: " + audioName)

func play_sound_ui(audioName: String) -> void:
	ui_sound_player.stream = sound_effects.get(audioName)
	ui_sound_player.play()


func play_ambience(audioName: String) -> void:
	ambient_player.stream = audioName
	ambient_player.play()


func play_music(audioName: String) -> void:
	if music_tracks.get(audioName):
		music_player.stream = music_tracks.get(audioName)
#		music_player.play()
#		set_stream_volume(music_player, -10.0)
		$AnimationPlayer.play("MusicOn")

func set_footsteps_pause_mode(stream: AudioStreamPlayer, pauseMode: bool) -> void:
#	footstep_player.play()
	stream.set_stream_paused(pauseMode)

# used when changing rooms
func play_music_by_index(songIndex: int) -> void:
	music_player.stream = room_music[songIndex]
	music_player.play()


func set_music_pause_mode(mode: bool) -> void:
	music_player.set_stream_paused(mode)


func set_mute_audio(mode: bool) -> void:
	print("audio muted")
	sound_player.set_stream_paused(mode)
	ambient_player.set_stream_paused(mode)
	music_player.set_stream_paused(mode)


func set_stream_volume(stream, streamVolume: float) -> void:
	stream.set_volume_db(streamVolume)


func set_typewriter_sound(soundName: String) -> void:
	sound_effects["TypewriterSound"] = character_voices.get(soundName)


func smooth_decrease_music_volume() -> void:
	$AnimationPlayer.play("DecreaseMusicVolume")


func smooth_increase_music_volume() -> void:
	
	$AnimationPlayer.play("IncreaseMusicVolume")
#	var currentVolume = stream.get_volume_db()
#
#	if stream.get_volume_db() < 0.0:
#		stream.set_volume_db(currentVolume + smooth_change_volume_rate)
#		return
#
#	increasing_music_volume = false
#	stream.set_volume_db(0.0)


# For developer; make a new dictionary to put at the top.
# Godot doesn't let you load audio resources at runtime
func print_new_sfx_dictionary() -> void:
	var soundEffectFolderContents = StaticFunctions.get_dir_contents("res://assets/sounds/sfx/", "wav")
	var soundKeys = []
	var soundKeyImports = []
	# CONVERT LIST OF FILE PATHS TO KEYS

#
#	var soundEffectFolderContentsImport = StaticFunctions.get_dir_contents("res://assets/sounds/sfx/", "import")
#	for filePath in soundEffectFolderContents:
#		print("new sound added")
#		var splitFilePath = filePath.split("/")
##		splitFilePath = splitFilePath()
#		var keyName = splitFilePath[splitFilePath.size() - 1].trim_suffix(".wav.import")
#		soundKeyImports.push_back(keyName)
	
#	var i = 0
#	for key in soundKeys:
#		sound_effects[soundKeyImports[i]] = load(soundEffectFolderContentsImport[i].trim_suffix(".import"))
#		i += 1
	for filePath in soundEffectFolderContents:
		var splitFilePath = filePath.split("/")
		var keyName = splitFilePath[splitFilePath.size() - 1].trim_suffix(".wav")
		soundKeys.push_back(keyName)
		print('"' + keyName + '": preload("' + filePath + '"),')
