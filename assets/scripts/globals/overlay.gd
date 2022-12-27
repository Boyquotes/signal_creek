extends Node

var shiftTimer
export var shift_offset : float = 0.2
export var shift_timer_interval : float = 1.0

var overlay_material

var normal_shader = preload("res://assets/shaders/shader_staticaberration.tres")
var shift_shader = preload("res://assets/shaders/shader_planeshift.tres")

var transitioning = false

var old_world_texture

var prior_world_mode

func _ready():
	
	shiftTimer = Timer.new()
	add_child(shiftTimer)
	shiftTimer.wait_time = shift_timer_interval
	shiftTimer.connect("timeout", self, "_on_timer_timeout")
	shiftTimer.set_one_shot(true)
	overlay_material = self.material
	
func _process(_delta):
	if transitioning:
		overlay_material.set_shader_param("spread", shift_offset * shiftTimer.get_time_left())

func _on_timer_timeout():
	
	if !transitioning:
		print("start transition")
		
		transitioning = true
		shiftTimer.start()
		
	else:
		set_shader(normal_shader)
		Globals.GameMode = prior_world_mode
		print("end")

func set_shader(newShader):
	overlay_material.shader = newShader


func plane_shift():
	
	var viewportimg = get_viewport().get_texture().get_data()
	old_world_texture = ImageTexture.new()
	old_world_texture.create_from_image(viewportimg)
	
	set_shader(shift_shader)
	overlay_material.set_shader_param("oldworld", old_world_texture)
	
	prior_world_mode = Globals.GameMode
	Globals.GameMode = Globals.GameModes.SHIFT
	
	shiftTimer.start()
