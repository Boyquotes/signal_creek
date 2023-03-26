extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.PauseMenu = self
	self.set_visible(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func toggle_visible():
	if self.visible:
		self.set_visible(false)
		return
	
	self.set_visible(true)


func _on_Resolution_item_selected(index):
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
	Globals.UpdateController.reset_game()


func _on_MusicVolumeSlider_value_changed(value):
	Globals.SoundManager.set_stream_volume(Globals.SoundManager.musicPlayer, value)


func _on_SFXVolumeSlider_value_changed(value):
	Globals.SoundManager.set_stream_volume(Globals.SoundManager.soundPlayer, value)


func _on_UIVolumeSlider_value_changed(value):
	Globals.SoundManager.set_stream_volume(Globals.SoundManager.uiSoundPlayer, value)


func _on_MuteAudio_toggled(button_pressed):
	Globals.SoundManager.set_mute_audio(button_pressed)
