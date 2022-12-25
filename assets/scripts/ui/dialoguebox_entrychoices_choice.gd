extends RichTextLabel

export var normalColor : Color
export var selectedColor : Color


func set_choice_text(buttontxt):
	
	self.bbcode_text = buttontxt
	self.set("custom_colors/default_color", normalColor)

func set_highlighted(status):
	
	if status == true:
		self.set("custom_colors/default_color", selectedColor)
	else:
		self.set("custom_colors/default_color", normalColor)
