extends Node

#functions to create dialoguebox entry prefabs

#make a prefab for a normal entry with just text
static func create_entry(newText, entryAsset):
	
	var newEntry = entryAsset.instance()
	newEntry.text = newText.strip_escapes()

	return newEntry


#make a prefab for an entry that contains character dialogue
static func create_entry_dialogue(newText, entryAsset, entryParagraph):
	
	var newEntry = entryAsset.instance()
	
	var dialogueLine = newText.split(":", false)
	
	Globals.ColorManager.set_current_color(dialogueLine[0])
	
	var newDialogue = dialogueLine[1].strip_escapes().trim_prefix(' ')
	
	newEntry.set_nametag(dialogueLine[0] + ":", Globals.ColorManager.get_current_color())
	
	newEntry.remove_placeholders()
	
	var newParagraph = entryParagraph.instance()
	newParagraph.text = newDialogue
	newEntry.set_dialogue(newParagraph)

	return newEntry


#make prefab for entry that contains new prefabs for all the choices
static func create_entry_choices(newChoices, currentSpeaker, entryAsset, choiceAsset):
	
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

