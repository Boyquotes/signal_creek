extends Node


static func rotate_direction_vector(directionVector: Vector2, degrees: float) -> Vector2:
	var rotatedVector = directionVector.rotated(deg2rad(degrees))
	rotatedVector = Vector2(stepify(rotatedVector.x, 0.5), stepify(rotatedVector.y, 0.5))
	
	return rotatedVector
