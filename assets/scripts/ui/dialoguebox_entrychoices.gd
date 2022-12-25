extends "res://assets/scripts/ui/dialoguebox_entrydialogue.gd"
#extend normal dialogue entry for border and nametag color setting


func add_choice_child(newNode):
	$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(newNode)

func get_choices():
	return $VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
