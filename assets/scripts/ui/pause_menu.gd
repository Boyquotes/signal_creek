class_name PauseMenu
extends Control


export (NodePath) var map_node : NodePath


var paused := false

onready var background_panel_node = $Panel
onready var previous_walk_mode = Globals.GameModes.WALK

func _ready():
	Globals.PauseMenu = self


func _process(_delta):
	pass


func _on_Resolution_item_selected(index: int) -> void:
	if index == 0:
		OS.window_size = Vector2(960, 540)
		Globals.PartyCamera.rescale_camera(6)
		OS.window_fullscreen = false
		
	elif index == 1:
		OS.window_size = Vector2(1920, 1080)
		Globals.PartyCamera.rescale_camera(12)
		OS.window_fullscreen = false
		
	elif index == 2:
		OS.window_size = Vector2(2880, 1620)
		Globals.PartyCamera.rescale_camera(18)
		OS.window_fullscreen = false
		
	elif index == 3:
		OS.window_fullscreen = true


func _on_Reset_pressed():
	Globals.InputDriver.reset_game()


func _on_MusicVolumeSlider_value_changed(value):
	Globals.SoundManager.set_stream_volume(Globals.SoundManager.music_player, value)


func _on_SFXVolumeSlider_value_changed(value):
	Globals.SoundManager.set_stream_volume(Globals.SoundManager.sound_player, value)


func _on_UIVolumeSlider_value_changed(value):
	Globals.SoundManager.set_stream_volume(Globals.SoundManager.ui_sound_player, value)


func _on_MuteAudio_toggled(button_pressed):
	Globals.SoundManager.set_mute_audio(button_pressed)


func _on_Save_pressed():
	Globals.DialogueBox.save_story()
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()


func _on_MenuButton_toggled(_toggleMode):
	if _toggleMode:
		Globals.GameMode = Globals.GameModes.PAUSE
		previous_walk_mode = Globals.GameMode
		
	else: 
		Globals.GameMode = previous_walk_mode
	
	toggle_visible()


func expand_background_panel() -> void:
	$AnimationPlayer.play("Expand")


func shrink_background_panel() -> void:
	$AnimationPlayer.play("Shrink")


func toggle_visible() -> void:
	if Globals.GameMode == Globals.GameModes.PAUSE:
		Globals.GameMode = previous_walk_mode
		shrink_background_panel()
		return
	
	previous_walk_mode = Globals.GameMode
	expand_background_panel()
	Globals.GameMode = Globals.GameModes.PAUSE


func get_music_pause_mode() -> bool:
	return $Panel/PauseMenu/VBoxContainer/MuteAudio.is_pressed()


func _on_Close_Menu_pressed():
	toggle_visible()
	Globals.GameMode = Globals.GameModes.WALK
