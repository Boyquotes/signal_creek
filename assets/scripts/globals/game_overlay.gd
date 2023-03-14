extends Node
# GameOverlay is for screen-wide shaders (underneath the UI)
# Applied to a Panel Node
# Modifies Panel's materials
# Affects the appearance of everything behind it in the Scene hierarchy

export var shake_timer_interval : float = 2.0
export var shake_min_magnitude : float = 2.0
export var shake_max_magnitude : float = 10.0

export var fade_timer_interval : float = 1.0

var _shake_timer
var _is_shaking = false
var shake_magnitude = shake_min_magnitude

var _fade_timer
var _is_fading = false

var _overlay_material


# initialize timer for shifting shader
func _ready():
	_shake_timer = Timer.new()
	add_child(_shake_timer)
	_shake_timer.wait_time = shake_timer_interval
	_shake_timer.connect("timeout", self, "_shake_timer_timeout")
	_shake_timer.set_one_shot(true)
	
	_fade_timer = Timer.new()
	add_child(_fade_timer)
	_fade_timer.wait_time = fade_timer_interval
	_fade_timer.connect("timeout", self, "_fade_timer_timeout")
	_fade_timer.set_one_shot(true)
	_overlay_material = self.material


func _process(_delta):
#	if _is_shifting:
#		_overlay_material.set_shader_param("spread", shift_offset * _shift_timer.get_time_left())
	if _is_fading:
		set_fade(fade_timer_interval - _fade_timer.get_time_left())

	if _is_shaking:
		var randomvector = Vector2(rand_range(-shake_magnitude, shake_magnitude), rand_range(-shake_magnitude, shake_magnitude))
		var randomvector2 = Vector2(rand_range(-shake_magnitude, shake_magnitude), rand_range(-shake_magnitude, shake_magnitude))
		var randomvector3 = Vector2(rand_range(-shake_magnitude, shake_magnitude), rand_range(-shake_magnitude, shake_magnitude))
		screen_shake(randomvector, randomvector, randomvector, rand_range(0, 1))
		shake_magnitude *= 2
		
		if shake_magnitude > shake_max_magnitude:
			shake_magnitude = shake_min_magnitude


func set_fade(darkness):
	self.modulate = Color(darkness, darkness, darkness, 1.0)


func screen_shake(rdisp, gdisp, bdisp, darkness):
	#_set_shader(shift_shader)
	_overlay_material.set_shader_param("r_displacement", rdisp)
	_overlay_material.set_shader_param("g_displacement", gdisp)
	_overlay_material.set_shader_param("b_displacement", bdisp)
	
	#_overlay_material.set_shader_param("darkness", darkness)

func set_to_black():
	self.modulate = Color(0.0, 0.0, 0.0)

func start_fade_in():
	_is_fading = true
	_is_shaking = false
	screen_shake(0.0, 0.0, 0.0, 1.0)
	self.modulate = Color(0.0, 0.0, 0.0)
	_fade_timer.start()

func start_shaking(timed):
	_is_shaking = true
	if timed:
		_shake_timer.start()

func _fade_timer_timeout():
	set_fade(1.0)
	_is_fading = false


func _shake_timer_timeout():
	screen_shake(0.0, 0.0, 0.0, 1.0)
	_is_shaking = false

func reload():
	_shake_timer = Timer.new()
	add_child(_shake_timer)
	_shake_timer.wait_time = shake_timer_interval
	_shake_timer.connect("timeout", self, "_shake_timer_timeout")
	_shake_timer.set_one_shot(true)
	
	_fade_timer = Timer.new()
	add_child(_fade_timer)
	_fade_timer.wait_time = fade_timer_interval
	_fade_timer.connect("timeout", self, "_fade_timer_timeout")
	_fade_timer.set_one_shot(true)
	_overlay_material = self.material
