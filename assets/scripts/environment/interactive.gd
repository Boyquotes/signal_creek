extends Area2D

#for the INTERACT area collider of an interactive object

var canInteract = false
var party_is_inside = false

#this will be inkside
var dreamvisited = false
var realvisited = false

export var interactiveByNick = false
export var interactiveByNour = false 
export var interactiveBySuwan = false

signal can_interact
signal cannot_interact


func _process(_delta):
	
	if Input.is_action_just_pressed("party_leader_switch"):
		if get_overlapping_bodies().size() > 0:
			call_deferred("check_leader_on_switch") #has to be done on idle frame bc the global leader var has to be updated first (bad structure rip)
	
	if canInteract:
		
		if Input.is_action_just_pressed("interact"):
			
			if Globals.mode == Globals.GameModes.WALK:
				
				Globals.mode = Globals.GameModes.TALK
				
				#tell inkparser to go to a knot based on this object's name
				#also tell the parser if this object has already been visited in the other world
				
				#TODO: Ink can check if the knot has been visited; make this variable check inkside instead
				Globals.dialogueBox.open(get_object_name() + get_visitedinworld_status())
					
				Globals.dialogueBox.background_panel_node.set_visible(true)

func _on_InteractArea_body_entered(body):
	
	party_is_inside = true
	check_correct_leader(body)

#check if party leader is inside
func check_leader_on_switch():
	
	for body in self.get_overlapping_bodies():
		
		if check_correct_leader(body) == true:
			break

func check_correct_leader(body):
	
	if body == Globals.party.get_leader():
		print("Leader In Interact Area: " + body.get_name())
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
			
		else:
			canInteract = false
			emit_signal("cannot_interact")
			
		return true

func _on_InteractArea_body_exited(body):
	
	if body.is_in_group("Player"):
		
		canInteract = false
		emit_signal("cannot_interact")
		party_is_inside = false

#recieves signals on character switch 
#ex. when we switch to nour, show a nour can interact outline 

#return name of this object as it is stated in the prefab file name, excluding obj_ prefix
func get_object_name():
	
	var rawfilename = self.get_parent().filename
	
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
