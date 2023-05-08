class_name StartScreen
extends Panel

# Start Screen. This is a really simple script. figure it out bro
onready var animation_player = $AnimationPlayer


func _ready():
	Globals.StartScreen = self
#	$VBoxContainer/StartButton.grab_focus()


func _on_StartButton_pressed() -> void:
	if Globals.GameState == Globals.GameStates.START:
		start_game()


func start_game() -> void:
	$AnimationPlayer.play("StartGame")
	yield(get_tree().create_timer(8.0), "timeout")
	self.set_visible(false)
	Globals.GameState = Globals.GameStates.GAME
