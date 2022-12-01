extends Node

#audio manager; accessed globally, plays all sounds

onready var soundPlayer = $SoundEffects
onready var ambientPlayer = $Ambience

export var choice_select_sound : AudioStreamSample
export var new_choice_entry_sound : AudioStreamSample
export var new_entry_sound : AudioStreamSample

export var music_bandn : AudioStreamSample
export var music_hallway : AudioStreamSample
export var music_topicspot : AudioStreamSample

func play_sound(soundName):
	
	soundPlayer.stream = soundName
	soundPlayer.play()
