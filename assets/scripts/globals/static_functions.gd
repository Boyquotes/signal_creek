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


func get_dir_contents(rootPath: String, fileExtensionToAdd: String) -> Array:
	var files = []
	var directories = []
	var dir = Directory.new()

	if dir.open(rootPath) == OK:
		var _dirList = dir.list_dir_begin(false, false)
		_add_dir_contents(dir, files, directories, fileExtensionToAdd)
	else:
		push_error("An error occurred when trying to access the path.")

	if fileExtensionToAdd == "directories":
		return directories
	
	return files


func _add_dir_contents(dir: Directory, files: Array, directories: Array, fileExtensionToAdd: String):
	var file_name = dir.get_next()

	while (file_name != ""):
		var path = dir.get_current_dir() + "/" + file_name

		if dir.current_is_dir():
#			print("Found directory: %s" % path)
			var subDir = Directory.new()
			subDir.open(path)
			subDir.list_dir_begin(true, false)
			
			if fileExtensionToAdd == "folders":
				directories.append(path)
				
			_add_dir_contents(subDir, files, directories, fileExtensionToAdd)
		else:
#			print("Found file: %s" % path)
			if path.split(".").size() > 0 and fileExtensionToAdd in path.split(".")[path.split(".").size()-1]:
				files.append(path)

		file_name = dir.get_next()

	dir.list_dir_end()
