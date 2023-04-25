class_name Tim
extends NPCBehavior



func _init():
	Globals.Tim = self

func _process(_delta):
	print(self.get_global_position())
