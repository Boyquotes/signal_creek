extends Node

#make a prefab for a normal entry with just text
static func create_entry(newText, entryAsset):
	
	var newEntry = entryAsset.instance()
	newEntry.text = newText

	return newEntry


#make a prefab for an entry that contains character dialogue
static func create_entry_dialogue(newText, entryAsset, entryParagraph):
	
	var newEntry = entryAsset.instance()
	
	var dialogueLine = newText.split(":", false)
	
	var newDialogue = dialogueLine[1].strip_escapes().trim_prefix(' ')
	
	newEntry.set_nametag(dialogueLine[0] + ":", Globals.colorManager.get_current_color())
	
	newEntry.remove_placeholders()
	
	var newParagraph = entryParagraph.instance()
	newParagraph.text = newText
	newEntry.set_dialogue(newParagraph)

	return newEntry


#make prefab for entry that contains new prefabs for all the choices
static func create_entry_choices(newChoices, currentSpeaker, entryAsset, choiceAsset):
	
	var newEntry = entryAsset.instance()
	newEntry.remove_placeholders()
	newEntry.set_nametag(currentSpeaker, Globals.colorManager.get_current_color())
	
	for option in newChoices: #iterate through choices, add nodes as children
		var newDivert = choiceAsset.instance()
		
		var newText
		
		if ":" in option:
			var nameSubstring = option.split(":", false)[0].strip_escapes()
			var colorCode = Globals.colorManager.get_current_color()

			var textSubstring = option.split(":", false)[1].strip_escapes()
			
			newText = '[color=#' + colorCode.to_html() + '][b]' + nameSubstring + ':[/b][/color]' + textSubstring 
			
		else:
			newText = '[' + option + ']'
		
		newDivert.set_choice_text(newText)
		newEntry.add_choice_child(newDivert)
		
	return newEntry
