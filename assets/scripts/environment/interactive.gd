extends Area2D

#for the INTERACT area collider of an interactive object

#export var inkFileDream : Resource
#export var inkFileReal : Resource

var canInteract = false

#NOTES ABOUT THIS APPROACH: IT WON'T BE KEPT IN SAVE FILES; DON'T WORRY ABOUT IT FOR DEMO
#IT'S NOT A LONG-TERM SOLUTION, BUT IT'S NOT SOMETHING TO CARE ABOUT IMMEDIATELY.
#Idea: check for signals of all interactive objects, when they're emitted, add to a variable list. swag?
var dreamvisited = false
var realvisited = false

export var interactiveByNick = false
export var interactiveByNour = false 
export var interactiveBySuwan = false

signal can_interact
signal cannot_interact


func _process(_delta):
	
	if canInteract:
		
		if Input.is_action_just_pressed("interact"):
			
			if Globals.mode == Globals.GameModes.WALK:
				
				Globals.mode = Globals.GameModes.TALK
				
				#tell inkparser to go to a knot based on this object's name
				#also tell the parser if this object has already been visited in the other world
				Globals.dialogueBox.open(get_object_name() + get_visitedinworld_status())
					
				Globals.dialogueBox.background_panel_node.set_visible(true)


func _on_InteractArea_body_entered(body):
	
	if body.is_in_group("Player") && body == Globals.party.get_leader():
		
		var currentLeader = Globals.party.leaderIndex
		
		if currentLeader == 0 && interactiveByNick:
			canInteract = true
			emit_signal("can_interact")
			
		elif currentLeader == 1 && interactiveByNour:
			canInteract = true
			emit_signal("can_interact")
			
		elif currentLeader == 2 && interactiveBySuwan:
			canInteract = true
			emit_signal("can_interact")
			


func _on_InteractArea_body_exited(body):
	
	if body.is_in_group("Player"):
		
		canInteract = false
		emit_signal("cannot_interact")

#recieves signals on character switch 
#ex. when we switch to nour, show a nour can interact outline 

#return name of this object as it is stated in the prefab file name, excluding obj_ prefix
func get_object_name():
	var rawfilename = self.get_parent().filename
	
	#print(rawfilename.right(rawfilename.find_last("/") + 1).trim_suffix(".tscn").trim_prefix("obj_"))
	
	return rawfilename.right(rawfilename.find_last("/") + 1).trim_suffix(".tscn").trim_prefix("obj_")
	


#gets the world we're currently in, then gets whether we've visited this object in the other world
func get_visitedinworld_status():
	
	if Globals.world == Globals.Worlds.DREAM:
		if realvisited:
			dreamvisited = true
			return "_realvisited"
		else:
			dreamvisited = true
			return "_dream"
	else:
		if dreamvisited:
			realvisited = true
			return "_dreamvisited"
		else:
			realvisited = true
			return "_real"
			
