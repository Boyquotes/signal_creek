# AUTOLOAD DialogueEngine
extends Node

# Functions to create DialogueBox entry prefabs
# Autoload with Globals and RoomEngine


func _ready():
	pass



# Use newText to make a new NORMAL entryAsset
func create_entry(newText: String, entryAsset: PackedScene, entryParagraph: PackedScene) -> DialogueBoxEntry:
	var newEntry = entryAsset.instance()
	newText = newText.replacen('/', '')
	
	var newParagraph = entryParagraph.instance()
	newParagraph.bbcode_text = newText
	newEntry.set_text(newParagraph)

	return newEntry


# use newText to make an entryParagraph and put it in a new DIALOGUE entryAsset
func create_entry_dialogue(newText: String, entryAsset: PackedScene, entryParagraph: PackedScene) -> DialogueBoxEntry:
	var newEntry = entryAsset.instance()
	var dialogueLine = newText.split(":", false, 1)
	var newDialogue = dialogueLine[1].strip_escapes().trim_prefix(' ')
	
	Globals.ColorManager.set_current_color(dialogueLine[0])
	
	if Globals.ColorManager.get_current_color():
		var isSussyPortrait = newEntry.set_nametag(dialogueLine[0], Globals.ColorManager.get_current_color())
		newEntry.set_portrait(Globals.ColorManager.get_current_portrait(), isSussyPortrait)
	
	newEntry.remove_placeholders()
	
	var newParagraph = entryParagraph.instance()
	newParagraph.bbcode_text = newDialogue
	newEntry.set_dialogue(newParagraph)

	return newEntry


# Use newChoices and currentSpeaker to create a CHOICE entryAsset
# Create all the choiceAssets it needs
func create_entry_choices(newChoices: Array, currentSpeaker: String, entryAsset: PackedScene, choiceAsset: PackedScene) -> DialogueBoxEntry:
	var newEntry = entryAsset.instance()
	newEntry.remove_placeholders()
	
	Globals.ColorManager.set_current_color(currentSpeaker)
	
	var isSussyPortrait = newEntry.set_nametag(currentSpeaker, Globals.ColorManager.get_current_color())
	newEntry.set_portrait(Globals.ColorManager.get_current_portrait(), isSussyPortrait)
	
	for option in newChoices: #iterate through choices, add nodes as children
		var newDivert = choiceAsset.instance()
		var newText
		
		newText = '[' + option + ']'
		newText = newText.replacen('<', '[')
		newText = newText.replacen('>', ']')
		
		newDivert.set_choice_text(newText)
		newEntry.add_choice_child(newDivert)
		
	return newEntry


