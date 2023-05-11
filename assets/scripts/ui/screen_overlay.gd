class_name ScreenOverlay
extends Node

# ScreenOverlay is for screen-wide shaders (underneath the UI)
# Applied to a Panel Node
# Modifies Panel's materials
# Affects the appearance of everything behind it in the Scene hierarchy

export var shake_timer_interval : float = 2.0
export var shake_min_magnitude : float = 2.0
export var shake_max_magnitude : float = 10.0

export var fade_timer_interval : float = 1.0
export var fade_out_timer_interval := 0.25

var _shake_timer
var _is_shaking = false
var shake_magnitude = shake_min_magnitude

var _fade_in_timer
var _is_fading_in = false

var _fade_out_timer
var _is_fading_out = false

var _overlay_material


func _ready():
	_shake_timer = Timer.new()
	add_child(_shake_timer)
	_shake_timer.wait_time = shake_timer_interval
	_shake_timer.connect("timeout", self, "_shake_timer_timeout")
	_shake_timer.set_one_shot(true)
	
	_overlay_material = self.material


func _process(_delta):
	if _is_shaking:
		var randomvector = Vector2(rand_range(-shake_magnitude, shake_magnitude), rand_range(-shake_magnitude, shake_magnitude))
		screen_shake(randomvector, randomvector, randomvector, rand_range(0, 1))
		shake_magnitude *= 2
		
		if shake_magnitude > shake_max_magnitude:
			shake_magnitude = shake_min_magnitude


func set_fade(darkness: float) -> void:
	self.modulate = Color(darkness, darkness, darkness, 1.0)


func screen_shake(rdisp: Vector2, gdisp: Vector2, bdisp: Vector2, _darkness: float) -> void:
	_overlay_material.set_shader_param("r_displacement", rdisp)
	_overlay_material.set_shader_param("g_displacement", gdisp)
	_overlay_material.set_shader_param("b_displacement", bdisp)


func set_to_black() -> void:
	self.self_modulate = Color(0.0, 0.0, 0.0)
	
func set_shlorp_radius(rad: float) -> void:
	if _overlay_material:
		_overlay_material.set_shader_param("radius", rad)


func play_shlorp_shockwave(centerPos: Vector2) -> void:
	_overlay_material.set_shader_param("center", centerPos)
	$AnimationPlayer.play("ShlorpIn")
	Globals.SoundManager.play_sound("shlorp")


func start_fade_in() -> void:
	_is_shaking = false
	$AnimationPlayer.play("FadeIn")
	screen_shake(Vector2(0, 0), Vector2(0, 0), Vector2(0, 0), 1.0)


func start_fade_out() -> void:
	$AnimationPlayer.play("FadeOut")
	screen_shake(Vector2(0, 0), Vector2(0, 0), Vector2(0, 0), 1.0)


func start_slow_fade_out() -> void:
	$AnimationPlayer.play("SlowFadeOut")


func start_shaking(timed: bool) -> void:
	_is_shaking = true
	
	if timed:
		_shake_timer.start()


func _fade_in_timer_timeout() -> void:
	set_fade(1.0)
	_is_fading_in = false


func _fade_out_timer_timeout() -> void:
	set_fade(0.0)
	_is_fading_out = false


func _shake_timer_timeout() -> void:
	screen_shake(Vector2(0, 0), Vector2(0, 0), Vector2(0, 0), 1.0)
	_is_shaking = false


func reload() -> void:
	_shake_timer = Timer.new()
	add_child(_shake_timer)
	_shake_timer.wait_time = shake_timer_interval
	_shake_timer.connect("timeout", self, "_shake_timer_timeout")
	_shake_timer.set_one_shot(true)
