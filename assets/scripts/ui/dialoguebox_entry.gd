extends MarginContainer
# DialogueBox Entries (Dialogue and Choice)
# Dialogue is normal text with a name attached to it
# Choice also has a list of choices inside it
# Changes color of nametag and border
# Placeholders can be removed when object is created
# Can add dialogue paragraph as a child (Dialogue type)
# Can add new choices as a child (Choice type)


func _ready():
	pass


# Remove all children of object (they're placeholders)
func remove_placeholders():
	var placeholders = $HBoxContainer/VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
	for placeholder in placeholders:
		$HBoxContainer/VBoxContainer/DialogueTextContainer/Background/VBoxContainer.remove_child(placeholder)


# Set color and text contents of name to newName and newColor
func set_nametag(newName, newColor):
	$HBoxContainer/VBoxContainer/Name.bbcode_text = '[b]' + newName + '[/b]'
	$HBoxContainer/VBoxContainer/Name.set("custom_colors/default_color", newColor)

	var newboxstyle = $HBoxContainer/VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").duplicate()
	$HBoxContainer/VBoxContainer/DialogueTextContainer/Background.add_stylebox_override("panel", newboxstyle)
	$HBoxContainer/VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").set("border_color", newColor)


# Bro im too tired to describe this
func set_dialogue(dialoguetext):
	$HBoxContainer/VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(dialoguetext)


func get_dialogue_text():
	return $HBoxContainer/VBoxContainer/DialogueTextContainer/Background/VBoxContainer/Dialogue


# functions specifically if self is a choicebox

# Add new choice as a child of choice entry (self)
func add_choice_child(newNode):
	$HBoxContainer/VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(newNode)


# Get all choice nodes inside choice entry (self)
func get_choices():
	return $HBoxContainer/VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
