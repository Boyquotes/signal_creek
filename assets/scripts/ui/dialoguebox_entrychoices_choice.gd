extends RichTextLabel
# A singular choice in a Choice Entry (list of choices)

export var normalColor : Color
export var selectedColor : Color


func _ready():
	pass


# Set the contents of this choice's text
func set_choice_text(buttontxt):
	self.bbcode_text = buttontxt
	self.set("custom_colors/default_color", normalColor)


# Change styling based on whether or not this choice is highlighted
func set_highlighted(status):
	if status == true:
		self.set("custom_colors/default_color", selectedColor)
	else:
		self.set("custom_colors/default_color", normalColor)
