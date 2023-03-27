extends Node
#audio manager; accessed globally, plays all sounds
#
#export var choice_select_sound : AudioStreamSample
#export var new_choice_entry_sound : AudioStreamSample
#export var new_entry_sound : AudioStreamSample
#export var typewriter_sound : AudioStreamSample

export var music_bandn : AudioStreamMP3
export var music_hallway : AudioStreamMP3
export var music_topicspot : AudioStreamMP3
export var music_elevator : AudioStreamMP3
export var music_starter : AudioStreamMP3

export var music_tracks : Dictionary = {
	"BandNMusic": music_bandn,
	"HallwayMusic": music_hallway,
	"TopicspotMusic": music_topicspot,
	"ElevatorMusic": music_elevator
}

export var sound_effects : Dictionary = {
	"ChoiceSelectSound": preload("res://assets/sounds/uisounds/choiceselect.wav"),
	"InquisitiveSound": preload("res://assets/sounds/uisounds/newchoiceentry.wav"),
	"TapSound": preload("res://assets/sounds/uisounds/newentry.wav"),
	"TypewriterSound": preload("res://assets/sounds/uisounds/typewriter.wav")
}

export var character_voices : Dictionary = {
	"nour": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"nick": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"ms. suwan": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"chad": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"brody": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"kristy": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"manager": preload("res://assets/sounds/uisounds/typewriter.wav"),
	"placeholder": preload("res://assets/sounds/uisounds/typewriter.wav")
}

onready var room_music = [music_bandn, music_hallway, music_topicspot, music_elevator, music_starter]

onready var soundPlayer = $SoundEffects
onready var ambientPlayer = $Ambience
onready var musicPlayer = $Music
onready var uiSoundPlayer = $UISounds

func _ready():
	set_mute_audio(true)


func play_sound(audioName):
#	print("sfx played")
	soundPlayer.stream = sound_effects.get(audioName)
	soundPlayer.play()

func play_sound_ui(audioName):
#	print("sfx played")
	uiSoundPlayer.stream = sound_effects.get(audioName)
	uiSoundPlayer.play()


func play_ambience(audioName):
#	print("ambient sound played")
	ambientPlayer.stream = audioName
	ambientPlayer.play()


func play_music(audioName):
#	print("music played")
	musicPlayer.stream = music_tracks.get(audioName)
	musicPlayer.play()


# used when changing rooms
func play_music_by_index(audioName):
	musicPlayer.stream = audioName
	musicPlayer.play()


func set_music_pause_mode(mode):
	musicPlayer.set_stream_paused(mode)


func set_mute_audio(mode):
	print("audio muted")
	soundPlayer.set_stream_paused(mode)
	ambientPlayer.set_stream_paused(mode)
	musicPlayer.set_stream_paused(mode)
	
func set_stream_volume(stream, streamVolume: float):
	stream.set_volume_db(streamVolume)


func set_typewriter_sound(soundName):
	sound_effects["TypewriterSound"] = character_voices.get(soundName)
