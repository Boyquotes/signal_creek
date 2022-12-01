tool
extends Node2D

export(StreamTexture) var dreamsheet
export(StreamTexture) var realsheet

onready var dream_world_position = self.get_global_position()
onready var real_world_position

export var real_world_x_position: int
export var real_world_y_position: int

export var is_in_dream : bool = true
export var is_in_real : bool = true


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
		set_hint_attributes()


func set_sheet(sheetId):
	
	$Sprite.set_texture(sheetId)


func set_pos(posId):
	self.set_global_position(posId)
	pass


func set_hint_attributes():
	
	$Hint.region_rect = $Sprite.region_rect
	$Hint.set_position(Vector2(real_world_x_position, real_world_y_position))
	$Hint.set_texture(realsheet)
	$Hint.offset.y = $Sprite.region_rect.size.y / -2


func _on_ActiveArea_can_interact():
	
	$Sprite.material.set_shader_param("color", Color.white)


func _on_ActiveArea_cannot_interact():
	
	$Sprite.material.set_shader_param("color", Color.transparent)
