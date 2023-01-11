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
	var placeholders = $VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
	for placeholder in placeholders:
		$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.remove_child(placeholder)


# Set color and text contents of name to newName and newColor
func set_nametag(newName, newColor):
	$VBoxContainer/Name.bbcode_text = '[b]' + newName + '[/b]'
	$VBoxContainer/Name.set("custom_colors/default_color", newColor)

	var newboxstyle = $VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").duplicate()
	$VBoxContainer/DialogueTextContainer/Background.add_stylebox_override("panel", newboxstyle)
	$VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").set("border_color", newColor)


# Bro im too tired to describe this
func set_dialogue(dialoguetext):
	$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(dialoguetext)


func get_dialogue_text():
	return $VBoxContainer/DialogueTextContainer/Background/VBoxContainer/Dialogue


# functions specifically if self is a choicebox

# Add new choice as a child of choice entry (self)
func add_choice_child(newNode):
	$VBoxContainer/DialogueTextContainer/Background/VBoxContainer.add_child(newNode)


# Get all choice nodes inside choice entry (self)
func get_choices():
	return $VBoxContainer/DialogueTextContainer/Background/VBoxContainer.get_children()
