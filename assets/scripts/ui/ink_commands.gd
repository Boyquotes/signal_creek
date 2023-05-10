# AUTOLOAD InkCommands
extends Node

# Parse function requests from ink writing
func parse_commands(currentLine):
	# Screen Shake
	if "&SHAKE" in currentLine:
		Globals.GameOverlay.start_shaking(false)
		
	# Cut to black
	elif "&BLACK" in currentLine:
		Globals.GameOverlay.set_to_black()
		
	elif "&FDEOUT" in currentLine:
		Globals.GameOverlay.start_fade_out()
		
	# fade in from black
	elif "&FDEIN" in currentLine:
		Globals.GameOverlay.start_fade_in()
		
	elif "&SLOWFADE" in currentLine:
		Globals.GameOverlay.start_slow_fade_out()
		
	# Move rina (position and room)
	elif "&MOV_RINA" in currentLine:
		if Globals.Rina:
			Globals.Rina.move_rina(currentLine.split("_")[2].strip_escapes())
		
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
			
		elif posNodeName == "NICK":
			posNode = Globals.Nick
			
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
				
	elif "&SPEED" in currentLine:
		var charName = currentLine.split("_")[1].strip_escapes()
		var speedValue = float(currentLine.split("_")[2].strip_escapes())
		
		match charName:
			"NICK":
				Globals.Nick.set_speed(speedValue)
				
			"NOUR":
				Globals.Nour.set_speed(speedValue)
				
			"SUWAN":
				Globals.Suwan.set_speed(speedValue)
		
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
			
		elif "UNSHUT" in action:
			Globals.RouteLights.door_open_anim()
			
		elif "SHUT" in action:
			Globals.RouteLights.door_close_anim()
			

	
	# Teleport party to elevator and have them say shit
	elif "&FIRSTLIGHT" in currentLine:
		Globals.RouteLights.activate_light_tutorial()
		
	# Make the camera follow a specificed position
	elif "&CAMERA" in currentLine:
		var vectorPos = currentLine.split("_")[1].strip_escapes()
		vectorPos = vectorPos.split(",")
		vectorPos = Vector2(vectorPos[0], vectorPos[1])
		
		Globals.GameRoot.set_camera_following_vector(vectorPos)
		
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
		var volumeLevel = float(currentLine.split("_")[1].strip_escapes())
		Globals.SoundManager.set_stream_volume(Globals.SoundManager.music_player, volumeLevel)
		
	# expects &SHLORP_CBK_Chad_out
	elif "&SHLORP" in currentLine:
		var characterName = currentLine.split("_")[2].strip_escapes()
		var inOrOut = currentLine.split("_")[3].strip_escapes()
		
		var characterNode = Globals.Chad
		
		match characterName:
			"Rina":
				characterNode = Globals.Rina
			"Chad":
				characterNode = Globals.Chad
			"Brody":
				characterNode = Globals.Brody
			"Kristy":
				characterNode = Globals.Kristy
			"DukeDelicious":
				characterNode = Globals.DukeDelicious
			"FatherFuji":
				characterNode = Globals.FatherFuji
			"GrandDuchessGranny":
				characterNode = Globals.GrandDuchessGranny
			"PrincePendragon":
				characterNode = Globals.PrincePendragon
			"PrincessPinkLady":
				characterNode = Globals.PrincessPinkLady
			"EmperorEvercrisp":
				characterNode = Globals.EmperorEvercrisp
			"EarlEarligold":
				characterNode = Globals.EarlEarligold
			"Tim":
				characterNode = Globals.Tim
		
		if "out" in inOrOut:
			characterNode.shlorp_out()
			
		else: 
			characterNode.shlorp_in()
			
	elif "&PAUSE" in currentLine:
		var pauseTime = float(currentLine.split("_")[1].strip_escapes())
		Globals.DialogueBox.pause_dialogue(pauseTime)
		
	elif "&PORTRAIT" in currentLine:
		var characterName = currentLine.split("_")[1].strip_escapes().to_lower()
		var portraitToUse = currentLine.split("_")[2].strip_escapes().to_lower()
		Globals.ColorManager.set_character_portrait(characterName, portraitToUse)
		
	# AUDIO_FADEIN or AUDIO_FADEOUT
	elif "&AUDIO" in currentLine:
		var _command = currentLine.split("_")[1].strip_escapes().to_lower()
		
		if "FADEIN" in currentLine:
			Globals.SoundManager.smooth_increase_music_volume()
			
		elif "FADEOUT" in currentLine:
			Globals.SoundManager.smooth_decrease_music_volume()
			
	elif "&FACESAMEWAY" in currentLine:
		var nourAnimation = Globals.Nour._animation_player.get_current_animation()
		
		Globals.Nick.animate_emote(nourAnimation)
		Globals.Suwan.animate_emote(nourAnimation)
		
	elif "&ENDGAME" in currentLine:
		Globals.SoundManager.smooth_decrease_music_volume()
		Globals.GameOverlay.start_fade_out()
		Globals.GameState = Globals.GameStates.END
		Globals.EndScreen.set_visible(true)
		Globals.EndScreen.end_screen_fade_in()
