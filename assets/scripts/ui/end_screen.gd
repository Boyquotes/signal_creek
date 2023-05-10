extends Control

# Its the end screen. idk what to tell you.

func _ready():
	Globals.EndScreen = self


func _on_ReturnButton_pressed():
	if Globals.GameState == Globals.GameStates.END:
		Globals.GameState = Globals.GameStates.START
		Globals.StartScreen.animation_player.play("RESET")
		Globals.StartScreen.set_visible(true)
		Globals.GameOverlay.set_fade(0.0)
		

		
		self.set_visible(false)


func activate_screen():
	$VBoxContainer/ReturnButton.grab_focus()
	self.set_visible(true)


func end_screen_fade_in():
	Globals.InputDriver.reset_game()
	
	# this is a mess and will be cleansed
	Globals.DialogueBox.clear_and_reset_ui()
	Globals.DialogueBox.is_displaying_choices = false
	$AnimationPlayer.play("FadeIn")


func _on_QuitButton_pressed():
	if Globals.GameState == Globals.GameStates.END:
		get_tree().quit()
