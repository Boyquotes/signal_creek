extends Node2D

# TODO: make dictionary of bools

#export(NodePath) var Chad
#export(NodePath) var Brody
#export(NodePath) var Kristy

var _shlorping_in : Dictionary = {
	"Chad": false,
	"Brody": false,
	"Kristy": false
}

var _shlorping_out : Dictionary = {
	"Chad": false,
	"Brody": false,
	"Kristy": false
}


func _ready():
	Globals.ChadBrodyKristy = self
	Globals.Chad = $Chad
	Globals.Brody = $Brody
	Globals.Kristy = $Kristy
	print("cbk started")
	#SAVE SYSTEM: if cbk final visited, remove self from everything


func _process(_delta):
#	if Input.is_action_just_pressed("party_leader_switch"):
#		cbk_shlorp_out("Brody")
	if _shlorping_in["Chad"] or _shlorping_out["Chad"]:
		cbk_shlorp("Chad")
		
	if _shlorping_in["Brody"] or _shlorping_out["Brody"]:
		cbk_shlorp("Brody")
		
	if _shlorping_in["Kristy"] or _shlorping_out["Kristy"]:
		cbk_shlorp("Kristy")


func _on_ActiveArea_can_interact():
	pass


func _on_ActiveArea_cannot_interact():
	pass


# appear from the void (visually)
func cbk_shlorp_in(characterName):
	get_node(characterName).material.set_shader_param("time", 0.0)
	_shlorping_in[characterName] = true
#	get_parent().set_pause_mode(false)


# disappear into the void (visually)
func cbk_shlorp_out(characterName):
	print("shlorpin out chad")
	_shlorping_out[characterName] = true


func cbk_shlorp(characterName):
	var timeValue = get_node(characterName).material.get_shader_param("time")
	
	if _shlorping_out[characterName]:
		get_node(characterName).material.set_shader_param("time", timeValue - .05)
		if timeValue < .05:
			_shlorping_out[characterName] = false
			get_node(characterName).material.set_shader_param("time", 0)
			get_node(characterName).set_global_position(RoomEngine.CurrentRoom.room_bounds_min)
			
			
	elif _shlorping_in[characterName]:
		get_node(characterName).material.set_shader_param("time", timeValue + .05)
		if timeValue > 1.56:
			_shlorping_in[characterName] = false
			get_node(characterName).material.set_shader_param("time", 1.57)
