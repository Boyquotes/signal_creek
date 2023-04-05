class_name DialogueBoxEntry
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
export(NodePath) var name_separator
export(NodePath) var portrait
export var nametag_space_from_separator := 72.0



func _ready():
	pass


# Remove all children of object (they're placeholders)
func remove_placeholders() -> void:
	var placeholders = get_node(content_box).get_children()
	for placeholder in placeholders:
		get_node(content_box).remove_child(placeholder)


# Set color and text contents of name to newName and newColor
func set_nametag(newName: String, newColor: Color) -> void:
	var name_tag = get_node(nametag)
	name_tag.bbcode_text = '[b]' + newName + '[/b]'
	
	var nameStringSize = get_node(nametag).get_font("bold_font").get_string_size(newName).x
	var parentSize = get_node(nametag).get_parent().rect_size.x
	
	name_tag.size_flags_stretch_ratio =  nameStringSize
	get_node(name_separator).size_flags_stretch_ratio = parentSize - nameStringSize - nametag_space_from_separator
	
	name_tag.set("custom_colors/default_color", newColor)
	var newlinestyle = get_node(name_separator).get_stylebox("separator").duplicate()
	
	get_node(name_separator).add_stylebox_override("separator", newlinestyle)
	get_node(name_separator).get_stylebox("separator").set("color", newColor)


# add paragraph child to dialogue entry
func set_dialogue(dialoguetext: RichTextLabel) -> void:
	get_node(content_box).add_child(dialoguetext)


# add paragraph child to normal entry
func set_text(dialoguetext: RichTextLabel) -> void:
	get_node(content_box).add_child(dialoguetext)


func get_text_normal() -> Control:
	return get_node(content_box).get_children()[0]


func get_dialogue_text() -> Control:
	return get_node(content_box).get_children()[0]


# BELOW: Functions for if self is a choicebox

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
	
