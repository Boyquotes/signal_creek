extends MarginContainer


func remove_placeholders():
	var placeholders = $VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
	for placeholder in placeholders:
		$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.remove_child(placeholder)


func set_nametag(newname, color):
	
	$VBoxContainer/Name.bbcode_text = '[b]' + newname + '[/b]'
	$VBoxContainer/Name.set("custom_colors/default_color", color)

	var newboxstyle = $VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").duplicate()
	$VBoxContainer/DialogueTextContainer/Background.add_stylebox_override("panel", newboxstyle)
	$VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").set("border_color", color)


func set_dialogue(dialoguetext):
	
	$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(dialoguetext)

#functions specifically for choice prefab

func add_choice_child(newNode):
	$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(newNode)

func get_choices():
	return $VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
