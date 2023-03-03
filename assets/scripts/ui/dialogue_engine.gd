extends Node
# Functions to create DialogueBox entry prefabs
# Autoload with Globals and RoomEngine


func _ready():
	pass


# use newText to make a new NORMAL entryAsset
# return newly created entryAsset
func create_entry(newText, entryAsset):
	var newEntry = entryAsset.instance()
	newEntry.bbcode_text = newText.strip_escapes()

	return newEntry


# use newText to make an entryParagraph and put it in a new DIALOGUE entryAsset
# return newly created entryAsset
func create_entry_dialogue(newText, entryAsset, entryParagraph):
	var newEntry = entryAsset.instance()
	var dialogueLine = newText.split(":", false)
	var newDialogue = dialogueLine[1].strip_escapes().trim_prefix(' ')
	
	Globals.ColorManager.set_current_color(dialogueLine[0])
	
	newEntry.set_nametag(dialogueLine[0] + ":", Globals.ColorManager.get_current_color())
	newEntry.set_portrait(Globals.ColorManager.get_current_portrait())
	newEntry.remove_placeholders()
	
	var newParagraph = entryParagraph.instance()
	newParagraph.bbcode_text = newDialogue
	newEntry.set_dialogue(newParagraph)

	return newEntry


# Use newChoices and currentSpeaker to create a CHOICE entryAsset
# Create all the choiceAssets it needs
# Return newly created entryAsset
func create_entry_choices(newChoices, currentSpeaker, entryAsset, choiceAsset):
	var newEntry = entryAsset.instance()
	newEntry.remove_placeholders()
	
	Globals.ColorManager.set_current_color(currentSpeaker)
	
	newEntry.set_nametag(currentSpeaker, Globals.ColorManager.get_current_color())
	
	for option in newChoices: #iterate through choices, add nodes as children
		var newDivert = choiceAsset.instance()
		var newText
		
		if ":" in option: #this option contains a character name
			var nameSubstring = option.split(":", false)[0].strip_escapes()
			Globals.ColorManager.set_current_color(nameSubstring)
			var colorCode = Globals.ColorManager.get_current_color()
			var textSubstring = option.split(":", false)[1].strip_escapes()
			newText = '[color=#' + colorCode.to_html() + '][b]'  + nameSubstring + ':[/b][/color]' + textSubstring 
			
		else:
			newText = '[' + option + ']'
		
		newDivert.set_choice_text(newText)
		newEntry.add_choice_child(newDivert)
		
	return newEntry
