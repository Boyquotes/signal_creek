extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Activate color of outline shader
func _on_ActiveArea_can_interact():
	# IN CASE OF LEADER SWITCHING
	#$Sprite.material.set_shader_param("color", Globals.ColorManager.current_color)
	pass


# Deactivate color of outline shader
func _on_ActiveArea_cannot_interact():
	pass
