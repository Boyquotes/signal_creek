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
