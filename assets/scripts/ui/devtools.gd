extends Control

export var devmode = false

var hidden = true
var typing_knot_name = false


func _ready():
	Globals.DevTools = self
	self.set_visible(false)
	
	if devmode:
		call_deferred("_start_in_devmode")

func _process(_delta):
	if Input.is_action_just_pressed("open_dev_tools"):
		if hidden:
			self.set_visible(true)
			hidden = false
			
		else:
			self.set_visible(false)
			hidden = true


func _on_Reset_pressed():
	Globals.UpdateController.reset_game()


func _on_Hallway_pressed():
	if RoomEngine.CurrentRoom != RoomEngine.Rooms[1]:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[1], RoomEngine.Rooms[1].party_teleport_position)


func _on_TopicSpot_pressed():
	if RoomEngine.CurrentRoom != RoomEngine.Rooms[2]:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[2], RoomEngine.Rooms[2].party_teleport_position)


func _on_BandN_pressed():
	if RoomEngine.CurrentRoom != RoomEngine.Rooms[0]:
		Globals.GameCanvas.emit_signal("doorway_entered", RoomEngine.Rooms[0], RoomEngine.Rooms[0].party_teleport_position)


func _on_Open_At_Knot_pressed():
	if Globals.GameMode == Globals.GameModes.WALK:
		Globals.GameMode = Globals.GameModes.TALK
		Globals.DialogueBox.open_at_knot($VBoxContainer/LineEdit.text)
		Globals.DialogueBox.background_panel_node.set_visible(true)


func _on_FastForwardDialogue_toggled(button_pressed):
	Globals.DialogueBox.fastforward = button_pressed


func _start_in_devmode():
	self.set_visible(true)
	hidden = false
	$VBoxContainer/FastForwardDialogue.set_pressed(true)
	$VBoxContainer/MuteAudio.set_pressed(true)


func _on_MuteAudio_toggled(_button_pressed):
#	Globals.SoundManager.set_mute_audio(_button_pressed)
	pass # Replace with function body.


func _on_LineEdit_focus_entered():
	typing_knot_name = true


func _on_LineEdit_focus_exited():
	typing_knot_name = false


func _on_Resolution_item_selected(index):
	if index == 0:
		OS.window_size = Vector2(960, 540)
		Globals.PartyCamera.rescale_camera(6)
		
	elif index == 1:
		OS.window_size = Vector2(1920, 1080)
		Globals.PartyCamera.rescale_camera(12)
		
	elif index == 2:
		OS.window_size = Vector2(2880, 1620)
		Globals.PartyCamera.rescale_camera(18)
		
		
