tool
class_name Shiftable
extends Node2D
# Generic for a shiftable object
# (object that has different attributes in the dream world and real world)
# Knows Dream & Real spritesheets
# Knows position in Real world (dream world is the object's position in scene)
# Knows if it is present in both dream & real worlds

export(StreamTexture) var dreamsheet
export(StreamTexture) var realsheet
export var real_world_x_position: int
export var real_world_y_position: int
export var is_in_dream : bool = true
export var is_in_real : bool = true

onready var dream_world_position = self.get_global_position()
onready var real_world_position


func _ready():
	if !is_in_real:
		real_world_position = Vector2(-100, -100)
		
	else:
		real_world_position = dream_world_position + Vector2(real_world_x_position, real_world_y_position)
	
	if !is_in_dream:
		dream_world_position = Vector2(-100, -100)
		
	if !Engine.editor_hint:
		$Hint.visible = false
		if (get_node_or_null("ActiveArea") != null):
			$Sprite.material.set_shader_param("color", Color.transparent)


func _process(_delta):
	if Engine.editor_hint:
		_set_hint_attributes()


# Set self's sprite's sprite sheet
func set_sheet(sheetId):
	$Sprite.set_texture(sheetId)


# Set self's global position
func set_pos(posId):
	self.set_global_position(posId)


# Move hint sprite to the real world position (for editor usage only)
func _set_hint_attributes():
	$Hint.region_rect = $Sprite.region_rect
	$Hint.set_position(Vector2(real_world_x_position, real_world_y_position))
	$Hint.set_texture(realsheet)
	$Hint.offset.y = $Sprite.region_rect.size.y / -2


# Activate color of outline shader
func _on_ActiveArea_can_interact():
	$Sprite.material.set_shader_param("color", Globals.ColorManager.current_color)


# Deactivate color of outline shader
func _on_ActiveArea_cannot_interact():
	$Sprite.material.set_shader_param("color", Color.transparent)
