class_name NPCBehavior
extends Interactive

export (NodePath) var _shlorping_target_path : NodePath
export var _knot_name := "Abstract"
export var _final_knot_name := "Abstract"
export var _override_set_monitoring : bool

var _shlorping_in = false
var _shlorping_out = false


onready var _shlorping_target : Sprite = get_node(_shlorping_target_path)



func _ready():
	print(_shlorping_target)
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_final_knot_name) > 0:
		self.set_monitoring(false)
		_shlorping_target.set_visible(false)
		return
	
	if not _override_set_monitoring:
		self.set_monitoring(true)
	
	_shlorping_target.set_visible(true)


func _process(_delta):
	if _shlorping_in or _shlorping_out:
		shlorp()


func _on_ActiveArea_can_interact() -> void:
	pass


func _on_ActiveArea_cannot_interact() -> void:
	pass


func _get_object_name() -> String:
	return _knot_name


# Appear from the void (visually)
func shlorp_in():
	_shlorping_target.set_visible(true)
	_shlorping_target.material.set_shader_param("time", 0.0)
	_shlorping_in = true
	if not _override_set_monitoring:
		self.set_monitoring(false)


# Disappear into the void (visually)
func shlorp_out() -> void:
	print(_shlorping_target)
	print("shlorping out")
	_shlorping_out = true


func shlorp():
	var timeValue = _shlorping_target.material.get_shader_param("time")
	
	if _shlorping_out:
		_shlorping_target.material.set_shader_param("time", timeValue - .05)
		if timeValue < .05:
			_shlorping_target.set_visible(false)
			_shlorping_out = false
			_shlorping_target.material.set_shader_param("time", 0)
			
			return
			
			
	elif _shlorping_in:
		_shlorping_target.material.set_shader_param("time", timeValue + .05)
		if timeValue > 1.56:
			_shlorping_in = false
			_shlorping_target.material.set_shader_param("time", 1.57)
			
			return

