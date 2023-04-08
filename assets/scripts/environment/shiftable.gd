tool
class_name Shiftable
extends Node2D

# Generic for a shiftable object
# (object that has different attributes in the dream world and real world)
# Knows Dream & Real spritesheets
# Knows position in Real world (dream world is the object's position in scene)
# Knows if it is present in both dream & real worlds

#export(StreamTexture) var dreamsheet
export var real_world_x_position: int
export var real_world_y_position: int
export var is_in_dream : bool = true
export var is_in_real : bool = false

var realsheet

onready var dreamsheet = $Sprite.texture
onready var dream_world_position = self.get_global_position()
onready var real_world_position



func _ready():
	if !realsheet:
		realsheet = dreamsheet
	else:
		# TODO: make it take the dreamsheet resource path and change the word dream to real
		realsheet = dreamsheet
		
	if !is_in_real:
		real_world_position = Vector2(-100, -100)
		
	else:
		real_world_position = dream_world_position + Vector2(real_world_x_position, real_world_y_position)
	
	if !is_in_dream:
		dream_world_position = Vector2(-100, -100)
		
	if Engine.editor_hint:
		$Sprite.texture = dreamsheet
		$Hint.visible = false
		
	else:
		$Hint.visible = false
		if (get_node_or_null("ActiveArea") != null) and $Sprite.get_material():
			$Sprite.material.set_shader_param("color", Color.transparent)


func _process(_delta):
	if Engine.editor_hint:
		_set_hint_attributes()


# Move hint sprite to the real world position (for editor usage only)
func _set_hint_attributes() -> void:
	$Hint.region_rect = $Sprite.region_rect
	$Hint.set_position(Vector2(real_world_x_position, real_world_y_position))
	$Hint.set_texture(realsheet)
	$Hint.set_position($Sprite.get_position())


# Activate color of outline shader
func _on_ActiveArea_can_interact() -> void:
	# IN CASE OF LEADER SWITCHING
	#$Sprite.material.set_shader_param("color", Globals.ColorManager.current_color)
	if $Sprite.get_material():
		$Sprite.material.set_shader_param("color", Color.white)


# Deactivate color of outline shader
func _on_ActiveArea_cannot_interact() -> void:
	if $Sprite.get_material():
		$Sprite.material.set_shader_param("color", Color.transparent)


# Set self's sprite's sprite sheet
func set_sheet(sheetId: Texture):
	$Sprite.set_texture(sheetId)


# Set self's global position
func set_pos(posId: Vector2):
	self.set_global_position(posId)


func _on_InteractArea_can_interact():
	pass # Replace with function body.


func _on_InteractArea_cannot_interact():
	pass # Replace with function body.
