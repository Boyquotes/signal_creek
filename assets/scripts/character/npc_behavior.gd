class_name NPCBehavior
extends Interactive

export (NodePath) var _shlorping_target_path : NodePath
export var _shlorp_animation_name : String
export (NodePath) var _physical_collider_path : NodePath
export var _knot_name := "Abstract"
export var _final_knot_name := "Abstract"
export var _override_set_monitoring : bool
export var start_visible := true

var _physical_collider

onready var _shlorping_target : AnimationPlayer = get_node(_shlorping_target_path)



func _ready():
	if _physical_collider_path:
		_physical_collider = get_node(_physical_collider_path)
	set_monitoring_ready()


#func _process(_delta):
#	if _shlorping_in or _shlorping_out:
#		shlorp()


func _on_ActiveArea_can_interact() -> void:
	pass


func _on_ActiveArea_cannot_interact() -> void:
	pass


func _get_object_name() -> String:
	return _knot_name


func set_monitoring_ready():
	if Globals.DialogueBox._ink_player.VisitCountAtPathString(_final_knot_name) > 0:
		self.set_monitoring(false)
		
		if _physical_collider:
			_physical_collider.set_deferred("disabled", true)
		return
	
	if not _override_set_monitoring:
		self.set_monitoring(true)
		
		if _physical_collider:
			_physical_collider.set_deferred("disabled", false)
	
#	_shlorping_target.set_visible(visibility)
	
	if _physical_collider:
		_physical_collider.set_deferred("disabled", false)


# Appear from the void (visually)
func shlorp_in():
	if _physical_collider:
		_physical_collider.set_deferred("disabled", false)
		
	if start_visible:
		_shlorping_target.play_backwards(_shlorp_animation_name)
		
	else:
		_shlorping_target.play(_shlorp_animation_name)
	
	# For the position of the center, get the positoin of self relative to camera
	var camPosWithOffset = Vector2(self.get_global_position().x + Globals.DialogueBox.camera_offset_dialogue, self.get_global_position().y)
	Globals.GameRoot.set_camera_following_vector(camPosWithOffset) #add the fuckin uhh camera offset
	Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.5, 0.5))
	
	if not _override_set_monitoring:
		self.set_monitoring(true)


# Disappear into the void (visually)
func shlorp_out() -> void:
	if start_visible:
		_shlorping_target.play(_shlorp_animation_name)
		
	else:
		_shlorping_target.play_backwards(_shlorp_animation_name)
	
	if _physical_collider:
		_physical_collider.set_deferred("disabled", true)
			
	
	var camPosWithOffset = Vector2(self.get_global_position().x + Globals.DialogueBox.camera_offset_dialogue, self.get_global_position().y)
	

	if Globals.Elevator and Globals.Elevator.focus_camera_on_elevator:
		Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.25, 0.25))
		
	else:
		Globals.GameRoot.set_camera_following_vector(camPosWithOffset) #add the fuckin uhh camera offset
		Globals.GameOverlay.play_shlorp_shockwave(Vector2(0.5, 0.5))
	
	
	
	if not _override_set_monitoring:
		self.set_monitoring(false)
