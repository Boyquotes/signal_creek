extends Control
# DialogueBox Entries (Dialogue and Choice)
# Dialogue is normal text with a name attached to it
# Choice also has a list of choices inside it
# Changes color of nametag and border
# Placeholders can be removed when object is created
# Can add dialogue paragraph as a child (Dialogue type)
# Can add new choices as a child (Choice type)

export(NodePath) var content_box
export(NodePath) var nametag
export(NodePath) var portrait

func _ready():
	pass


# Remove all children of object (they're placeholders)
func remove_placeholders():
	#contentbox
	var placeholders = get_node(content_box).get_children()
	for placeholder in placeholders:
		get_node(content_box).remove_child(placeholder)


# Set color and text contents of name to newName and newColor
func set_nametag(newName, newColor):
	get_node(nametag).bbcode_text = '[b]' + newName + '[/b]'
	get_node(nametag).set("custom_colors/default_color", newColor)
# 	$HBoxContainer/VBoxContainer/Name.bbcode_text = '[b]' + newName + '[/b]'
#	$HBoxContainer/VBoxContainer/Name.set("custom_colors/default_color", newColor)

#	var newboxstyle = $HBoxContainer/VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").duplicate()
#	$HBoxContainer/VBoxContainer/DialogueTextContainer/Background.add_stylebox_override("panel", newboxstyle)
#	$HBoxContainer/VBoxContainer/DialogueTextContainer/Background.get_stylebox("panel").set("border_color", newColor)


# add paragraph child to dialogue entry
func set_dialogue(dialoguetext):
	# contentbox
	get_node(content_box).add_child(dialoguetext)


# add paragraph child to normal entry
func set_text(dialoguetext):
	get_node(content_box).add_child(dialoguetext)

func get_text_normal():
	return get_node(content_box).get_children()[0]

func get_dialogue_text():
	return get_node(content_box).get_children()[0]


# functions specifically if self is a choicebox

# Add new choice as a child of choice entry (self)
func add_choice_child(newNode):
	get_node(content_box).add_child(newNode)


# Get all choice nodes inside choice entry (self)
func get_choices():
	#contentbox
	return get_node(content_box).get_children()


# Source texture - preloaded asset
func set_portrait(sourceTexture):
	#portraitnode
	get_node(portrait).set_texture(sourceTexture)
	
