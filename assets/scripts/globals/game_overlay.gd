extends Node
# GameOverlay is for screen-wide shaders (underneath the UI)
# Applied to a Panel Node
# Modifies Panel's materials
# Affects the appearance of everything behind it in the Scene hierarchy
# Includes shifting shader

export var normal_shader = preload("res://assets/shaders/shader_staticaberration.tres")
export var shift_shader = preload("res://assets/shaders/shader_planeshift.tres")
export var shift_offset : float = 0.2
export var shift_timer_interval : float = 1.0

var _old_world_screencap_texture
var _prior_world_mode
var _overlay_material
var _shift_timer
var _is_shifting = false


# initialize timer for shifting shader
func _ready():
	_shift_timer = Timer.new()
	add_child(_shift_timer)
	_shift_timer.wait_time = shift_timer_interval
	_shift_timer.connect("timeout", self, "_on_timer_timeout")
	_shift_timer.set_one_shot(true)
	_overlay_material = self.material


func _process(_delta):
	if _is_shifting:
		_overlay_material.set_shader_param("spread", shift_offset * _shift_timer.get_time_left())


# Takes a screenshot of the old world, uses it as a texture for the shifting shader
# Set self's material's shader to the shifting shader
# Start shifting timer
func plane_shift():
	var viewportimg = get_viewport().get_texture().get_data()
	_old_world_screencap_texture = ImageTexture.new()
	_old_world_screencap_texture.create_from_image(viewportimg)
	
	_set_shader(shift_shader)
	_overlay_material.set_shader_param("oldworld", _old_world_screencap_texture)
	
	_prior_world_mode = Globals.GameMode
	Globals.GameMode = Globals.GameModes.SHIFT
	
	_shift_timer.start()


# When shifting timer ends, start or end the shifting shader
func _on_timer_timeout():
	if !_is_shifting:
		print("start transition")
		
		_is_shifting = true
		_shift_timer.start()
		
	else:
		_set_shader(normal_shader)
		Globals.GameMode = _prior_world_mode
		print("end")


# Set shader of self's material
func _set_shader(newShader):
	_overlay_material.shader = newShader
