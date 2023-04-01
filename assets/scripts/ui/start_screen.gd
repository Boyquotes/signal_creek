extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.StartScreen = self


func _on_StartButton_pressed():
	start_game()
	pass # Replace with function body.

func start_game():
	self.set_visible(false)
	Globals.GameState = Globals.GameStates.GAME
	Globals.SoundManager.set_mute_audio(false)
