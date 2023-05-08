class_name RouteLights
extends Node2D

# Magical Lights above the doors on Elevator Object
# Each light can be individually turned on/off by its name; can be called from ink
# There's also fun animations for all of the lights turning on/pff at once

export var light_timer := 0.5
export (NodePath) var anim_player
export (NodePath) var elevator_doortal


var first_light_turned_on = false;



func _ready():
	Globals.RouteLights = self;
	activate_doortal(false)


func turn_on_light(light_name: String) -> void: 
	get_node(light_name).visible = false;


func turn_off_light(light_name: String) -> void:
	get_node(light_name).visible = true


# Teleport party to the elevator position for light tutorial conversation
func activate_light_tutorial() -> void:
	yield(Globals.GameRoot.get_tree().create_timer(1.0), "timeout")
	
	# If teleporting to elevator while in hallway
	if RoomEngine.CurrentRoomIndex == 1:
		RoomEngine.CurrentRoom.move_party_to_position(Globals.PartyObject, Vector2(472, 304))
		Globals.GameRoot.set_camera_following_vector(Vector2(472, 304))
		Globals.GameRoot.play_loading_screen()
	
	# If teleporting to elevator from a different room
	else:
		Globals.GameRoot.emit_signal("doorway_entered", RoomEngine.Rooms[1], Vector2(472, 304))
		
	Globals.Elevator.focus_camera_on_elevator = true


# CALLED FROM: ink_commands
# turn on all lights at once with a delay timer for each row
func turn_on_all_lights() -> void:
	turn_on_light("Nick0")
	turn_on_light("Nour0")
	turn_on_light("Suwan0")
	Globals.SoundManager.play_sound("newentry")
	
	yield(get_tree().create_timer(light_timer), "timeout")
	turn_on_light("Nick1")
	turn_on_light("Nour1")
	turn_on_light("Suwan1")
	Globals.SoundManager.play_sound("newentry")
	
	yield(get_tree().create_timer(light_timer), "timeout")
	turn_on_light("Nick2")
	turn_on_light("Nour2")
	turn_on_light("Suwan2")
	Globals.SoundManager.play_sound("newentry")


# CALLED FROM: ink_commands
# Turn off all lights at once with a delay timer for each row
func turn_off_all_lights() -> void:
	turn_off_light("Nick0")
	turn_off_light("Nour0")
	turn_off_light("Suwan0")
	Globals.SoundManager.play_sound("newentry")
	
	yield(get_tree().create_timer(light_timer), "timeout")
	turn_off_light("Nick1")
	turn_off_light("Nour1")
	turn_off_light("Suwan1")
	Globals.SoundManager.play_sound("newentry")
	
	yield(get_tree().create_timer(light_timer), "timeout")
	turn_off_light("Nick2")
	turn_off_light("Nour2")
	turn_off_light("Suwan2")
	Globals.SoundManager.play_sound("newentry")


# Animate self's sprite to show the doors closing
func door_close_anim() -> void:
	get_node(anim_player).play("ElevatorClose")


# Animate self's sprite to show the doors closing
func door_open_anim() -> void:
	get_node(anim_player).play("ElevatorOpen")


# Activate self's doortal, when the elevator doors are opened again
func activate_doortal(mode: bool) -> void:
	get_node(elevator_doortal).monitoring = mode
