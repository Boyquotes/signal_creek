class_name PauseMenu
extends Control


export (NodePath) var map_node : NodePath


var panel_opening_speed := 0.25
var is_expanding_background_panel := false
var is_shrinking_background_panel := false
var background_panel_max_height
var previous_walk_mode
var paused := false

onready var background_panel_node = $Panel


func _ready():
	Globals.PauseMenu = self
#	self.set_visible(false)
#	
#	var bgPanelDefaultPos = background_panel_node.get_position()
#	background_panel_max_height = background_panel_node.get_size().y
#	background_panel_node.set_position(Vector2(bgPanelDefaultPos.x, -background_panel_max_height))
	

func _process(_delta):
	pass
#	if is_expanding_background_panel:
#		expand_background_panel()
#
#	elif is_shrinking_background_panel:
#		shrink_background_panel()


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
#	var panelPosition = background_panel_node.get_position()
#
#	if panelPosition.y >= -panel_opening_speed:
#		background_panel_node.set_position(Vector2(panelPosition.x, 0))
#		is_expanding_background_panel = false
#		$Panel/PauseMenu/VBoxContainer/MusicVolume/MusicVolumeSlider.grab_focus()
#
#	else:
#		background_panel_node.set_position(Vector2(panelPosition.x, lerp(panelPosition.y, 0, panel_opening_speed)))


func shrink_background_panel() -> void:
	$AnimationPlayer.play("Shrink")
#	var panelPosition = background_panel_node.get_position()
#
#	if panelPosition.y <= -background_panel_max_height + panel_opening_speed:
#		background_panel_node.set_position(Vector2(panelPosition.x, -background_panel_max_height))
#		is_shrinking_background_panel = false
#		background_panel_node.set_visible(false)
#
#	else:
#		background_panel_node.set_position(Vector2(panelPosition.x, lerp(panelPosition.y, -background_panel_max_height, panel_opening_speed)))


func toggle_visible() -> void:
	if paused:
#		is_expanding_background_panel = false
#
#		var bgPanelDefaultPos = background_panel_node.get_position()
#		background_panel_max_height = background_panel_node.get_size().y
#		background_panel_node.set_position(Vector2(bgPanelDefaultPos.x, -background_panel_max_height))
#		self.set_visible(false)
		paused = false
		shrink_background_panel()
		return
	
	expand_background_panel()
	paused = true


func get_music_pause_mode() -> bool:
	return $Panel/PauseMenu/VBoxContainer/MuteAudio.is_pressed()


func _on_Close_Menu_pressed():
	toggle_visible()
	Globals.GameMode = Globals.GameModes.WALK
