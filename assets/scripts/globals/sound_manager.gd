class_name SoundManager
extends Node

# Manages all audio streams and audio functions

export var music_bandn : AudioStreamMP3
export var music_hallway : AudioStreamMP3
export var music_topicspot : AudioStreamMP3
export var music_elevator : AudioStreamMP3
export var music_starter : AudioStreamMP3
export var smooth_change_volume_rate := 0.5

var decreasing_music_volume
var increasing_music_volume

# VOLUME RANGE: -40dB to 2.4dB

export var music_tracks : Dictionary = {
	"BandNMusic": music_bandn,
	"HallwayMusic": music_hallway,
	"TopicspotMusic": music_topicspot,
	"ElevatorMusic": music_elevator
}

export var sound_effects : Dictionary = {

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


func _ready():
	set_mute_audio(true)
	var soundEffectFolderContents = StaticFunctions.get_dir_contents("res://assets/sounds/sfx/", "wav")
	var soundKeys = []
	# CONVERT LIST OF FILE PATHS TO KEYS
	for filePath in soundEffectFolderContents:
		var splitFilePath = filePath.split("/")
		var keyName = splitFilePath[splitFilePath.size() - 1].trim_suffix(".wav")
		soundKeys.push_back(keyName)
	
	var i = 0
	for key in soundKeys:
		sound_effects[soundKeys[i]] = load(soundEffectFolderContents[i])
		i += 1
		
		
	Globals.Nour.footstep_audio_stream = nour_footstep_player
	Globals.Nick.footstep_audio_stream = nick_footstep_player
	Globals.Suwan.footstep_audio_stream = suwan_footstep_player


func _process(_delta):
	if decreasing_music_volume:
		smooth_decrease_stream_volume(music_player)
		
	elif increasing_music_volume:
		smooth_increase_stream_volume(music_player)


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
	music_player.stream = music_tracks.get(audioName)
	music_player.play()

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


func smooth_decrease_stream_volume(stream) -> void:
	var currentVolume = stream.get_volume_db()
	
	if stream.get_volume_db() > -40.0:
		stream.set_volume_db(currentVolume - smooth_change_volume_rate)
		return
	
	decreasing_music_volume = false
	stream.set_stream_paused(true)


func smooth_increase_stream_volume(stream) -> void:
	var currentVolume = stream.get_volume_db()
	
	if stream.get_volume_db() < 0.0:
		stream.set_volume_db(currentVolume + smooth_change_volume_rate)
		return
	
	increasing_music_volume = false
	stream.set_volume_db(0.0)
