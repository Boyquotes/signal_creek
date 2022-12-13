extends Node

#audio manager; accessed globally, plays all sounds

onready var soundPlayer = $SoundEffects
onready var ambientPlayer = $Ambience
onready var musicPlayer = $Music

export var choice_select_sound : AudioStreamSample
export var new_choice_entry_sound : AudioStreamSample
export var new_entry_sound : AudioStreamSample

export var music_bandn : AudioStreamSample
export var music_hallway : AudioStreamSample
export var music_topicspot : AudioStreamSample

func play_sound(audioName):
	
	soundPlayer.stream = audioName
	soundPlayer.play()
	
func play_ambience(audioName):
	
	ambientPlayer.stream = audioName
	ambientPlayer.play()

func play_music(audioName):
	
	musicPlayer.stream = audioName
	musicPlayer.play()
	
