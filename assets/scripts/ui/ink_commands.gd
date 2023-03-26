extends Node

# Parse function requests from ink writing
func parse_commands(currentLine):
	# Screen Shake
	if "&SHAKE" in currentLine:
		Globals.GameOverlay.start_shaking(false)
		
	# Cut to black
	elif "&BLACK" in currentLine:
		Globals.GameOverlay.set_to_black()
		
	# fade in from black
	elif "&FDEIN" in currentLine:
		Globals.GameOverlay.start_fade_in()
		
	# Move rina (position and room)
	elif "&MOV_RINA" in currentLine:
		if Globals.Rina:
			Globals.Rina.move_rina(currentLine.split("_")[2].strip_escapes())
		
	# Make rina shlorp out with the shader
	elif "&SHLORP_RINA" in currentLine:
		Globals.Rina.rina_shlorp_out()
		
	# Snap character to position
	elif "&POS" in currentLine: #move nick to vector2
		var charName = currentLine.split("_")[1].strip_escapes()
		var vectorPos = currentLine.split("_")[2].strip_escapes()
		vectorPos = vectorPos.split(",")
		vectorPos = Vector2(vectorPos[0], vectorPos[1])
		
		match charName:
			"NICK":
				Globals.Nick.place_character_at_vector(vectorPos)
				
			"NOUR":
				Globals.Nour.place_character_at_vector(vectorPos)
				
			"SUWAN":
				Globals.Suwan.place_character_at_vector(vectorPos)
				
	# Make character follow positoin
	elif "&FOLLOW" in currentLine:
		var charName = currentLine.split("_")[1].strip_escapes()
		var posNodeName = currentLine.split("_")[2].strip_escapes()
		var posNode
		
		if posNodeName == "NOUR":
			posNode = Globals.Nour
			
		elif posNodeName != "stop":
			posNode = RoomEngine.CurrentRoom.plane_manager.get_node(posNodeName)
		
		match charName:
			"NICK":
				Globals.Nick.set_following_node(posNode)
				
			"NOUR":
				if "stop" in posNodeName:
					Globals.PartyObject.force_nour_movement = false
					
				else:
					Globals.PartyObject.force_nour_movement = true
					Globals.Nour.set_following_node(posNode)
				
			"SUWAN":
				Globals.Suwan.set_following_node(posNode)
		
	# Make character sprite match animation with argument name
	elif "&EMOTE" in currentLine:
		var charName = currentLine.split("_")[1].strip_escapes()
		var emoteName = currentLine.split("_")[2].strip_escapes()
		
		match charName:
			"NICK":
				Globals.Nick.animate_emote(emoteName)
				
			"NOUR":
				Globals.Nour.animate_emote(emoteName)
				
			"SUWAN":
				Globals.Suwan.animate_emote(emoteName)
		
	# Make this route light turn on
	elif "&LIGHT" in currentLine:
		# EXAMPLE WRITTEN IN INK: &LIGHT_Nick0
		
		var lightName = currentLine.split("_")[1].strip_escapes()
		# When parsed, lightName will look like this: Nick0
		Globals.RouteLights.turn_on_light(lightName)
		
	# Open or close the elevator light (interior of elevator)
	elif "&ELEVATOR" in currentLine:
		var action = currentLine.split("_")[1].strip_escapes()
		
		if "OPEN" in action:
			Globals.ElevatorDoorLight.open_doors()
			
		elif "CLOSE" in action:
			Globals.ElevatorDoorLight.close_doors()
			
		elif "SHUT" in action:
			Globals.RouteLights.door_close_anim()
			
		elif "UNSHUT" in action:
			pass
	
	# Teleport party to elevator and have them say shit
	elif "&FIRSTLIGHT" in currentLine:
		Globals.RouteLights.activate_light_tutorial()
		
	# Make the camera follow a specificed position
	elif "&CAMERA" in currentLine:
		var vectorPos = currentLine.split("_")[1].strip_escapes()
		vectorPos = vectorPos.split(",")
		vectorPos = Vector2(vectorPos[0], vectorPos[1])
		
		Globals.GameCanvas.set_camera_following_vector(vectorPos)
		
	# Turn on all the route lights at once
	elif "&ALLON" in currentLine:
		Globals.RouteLights.turn_on_all_lights()
		
	# Turn off all route lights at once
	elif "&ALLOFF" in currentLine:
		Globals.RouteLights.turn_off_all_lights()
		
	# Play Sound
	elif "&SOUND" in currentLine:
		var soundName = currentLine.split("_")[1].strip_escapes()
		Globals.SoundManager.play_sound(soundName)
		
	# Set music: &MUSIC_trackName
	elif "&MUSIC" in currentLine:
		if "STOP" in currentLine:
			Globals.SoundManager.set_music_pause_mode(true)
			return
			
		Globals.SoundManager.set_music_pause_mode(false)
		var trackName = currentLine.split("_")[1].strip_escapes()
		Globals.SoundManager.play_music(trackName)
		
	# Change volume of music
	elif "&VOLUME" in currentLine:
		# &VOLUME_level
		# TODO: Figure out how tihs works
		pass
		
	# expects &SHLORP_CBK_Chad_out
	elif "&SHLORP_CBK" in currentLine:
		var characterName = currentLine.split("_")[2].strip_escapes()
		var inOrOut = currentLine.split("_")[3].strip_escapes()
		
		if "out" in inOrOut:
			Globals.ChadBrodyKristy.cbk_shlorp_out(characterName)
			
		else: 
			Globals.ChadBrodyKristy.cbk_shlorp_in(characterName)
			
	elif "&PAUSE" in currentLine:
		var pauseTime = float(currentLine.split("_")[1].strip_escapes())
		Globals.DialogueBox.pause_dialogue(pauseTime)
