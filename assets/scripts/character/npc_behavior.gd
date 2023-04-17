class_name NPCBehavior
extends Interactive

export (NodePath) var _shlorping_target_path : NodePath
export (NodePath) var _physical_collider_path : NodePath
export var _knot_name := "Abstract"
export var _final_knot_name := "Abstract"
export var _override_set_monitoring : bool
export var visibility := true

var _shlorping_in = false
var _shlorping_out = false
var _physical_collider

onready var _shlorping_target : Sprite = get_node(_shlorping_target_path)




func _ready():
	if _physical_collider_path:
		_physical_collider = get_node(_physical_collider_path)
	set_monitoring_ready()


func _process(_delta):
	if _shlorping_in or _shlorping_out:
		shlorp()


func _on_ActiveArea_can_interact() -> void:
	pass


func _on_ActiveArea_cannot_interact() -> void:
	pass


func _get_object_name() -> String:
	return _knot_name


func set_monitoring_ready():
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_final_knot_name) > 0:
		self.set_monitoring(false)
		_shlorping_target.set_visible(false)
		
		if _physical_collider:
			_physical_collider.set_deferred("disabled", true)
		return
	
	if not _override_set_monitoring:
		self.set_monitoring(true)
		
		if _physical_collider:
			_physical_collider.set_deferred("disabled", false)
	
	_shlorping_target.set_visible(visibility)
	
	if _physical_collider:
		_physical_collider.set_deferred("disabled", false)


# Appear from the void (visually)
func shlorp_in():
	print(_shlorping_target)
	print("shlorping in")
	_shlorping_target.set_visible(true)
	_shlorping_target.material.set_shader_param("progress", 1.0)
	_shlorping_in = true
	visibility = true
	
	# For the position of the center, get the positoin of self relative to camera
	var shlorPos =  Globals.PartyCamera.get_global_position() - self.get_global_position()
	shlorPos *= 0.01
	Globals.GameRoot.set_camera_following_vector(self.get_global_position()) #add the fuckin uhh camera offset
	Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.5, 0.5))
	
	if not _override_set_monitoring:
		self.set_monitoring(true)


# Disappear into the void (visually)
func shlorp_out() -> void:
	print(_shlorping_target)
	print("shlorping out")
	_shlorping_out = true
	visibility = false
	
	Globals.GameRoot.set_camera_following_vector(self.get_global_position())
	Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.5, 0.5))
	
	if not _override_set_monitoring:
		self.set_monitoring(false)


func shlorp():
	var timeValue = _shlorping_target.material.get_shader_param("progress")
	
	if _shlorping_out:
		_shlorping_target.material.set_shader_param("progress", timeValue + .05)
		if timeValue > .95:
			_shlorping_target.set_visible(false)
			_shlorping_out = false
			_shlorping_target.material.set_shader_param("progress", 1.0)
			
			if _physical_collider:
				_physical_collider.set_deferred("disabled", true)
			
			return
			
	elif _shlorping_in:
		_shlorping_target.material.set_shader_param("progress", timeValue - .05)
		if timeValue < 0.05:
			_shlorping_in = false
			_shlorping_target.material.set_shader_param("progress", 0)
			
			if _physical_collider:
				_physical_collider.set_deferred("disabled", false)
			
			return


