# AUTOLOAD StaticFunctions
extends Node

#All static functions to reuse

static func rotate_direction_vector(directionVector: Vector2, degrees: float) -> Vector2:
	var rotatedVector = directionVector.rotated(deg2rad(degrees))
	rotatedVector = Vector2(stepify(rotatedVector.x, 0.5), stepify(rotatedVector.y, 0.5))
	
	return rotatedVector


static func delete_children(node):
	for n in node.get_children():
		node.remove_child(n)
		n.queue_free()


#static func inverse_lerp(a: Vector2, b: Vector2, v: Vector2) -> float:
#	return (v - a) / (b - a)

static func get_pos_on_screen_reverse_lerp(objectOnScreen: Node2D) -> Vector2:
	var positionOnScreen = objectOnScreen.get_global_transform_with_canvas().get_origin()
	var lerpX = inverse_lerp(0, 322, positionOnScreen.x)
	var lerpY = inverse_lerp(0, 182, positionOnScreen.y)
	
	return Vector2(lerpX, 1 - lerpY + 0.1)
