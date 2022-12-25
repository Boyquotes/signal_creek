extends Node

var aberration_position = Vector2(0, 0)
var abrpos

var aberrationTimer

export var aberration_timer_interval : float = 1.0
export var aberration_intensity : int = 1
export var aberration_speed : float = 0.5

var aberration_overlay_material


func _ready():
	
	aberrationTimer = Timer.new()
	add_child(aberrationTimer)
	aberrationTimer.wait_time = aberration_timer_interval
	aberrationTimer.connect("timeout", self, "_on_timer_timeout")
	aberrationTimer.start()

	aberration_overlay_material = $MotionOverlay.material
	
func _process(_delta):
	
	var aberrationOverlay = lerp(aberration_overlay_material.get_shader_param("r_displacement"), aberration_position, aberration_speed)	
	aberration_overlay_material.set_shader_param("r_displacement", aberrationOverlay)
	
func _on_timer_timeout():
	
	var abrx = rand_range(-aberration_intensity, aberration_intensity)
	var abry = rand_range(-aberration_intensity, aberration_intensity)
	
	aberration_position = Vector2(abrx, abry)
	#print("second")
