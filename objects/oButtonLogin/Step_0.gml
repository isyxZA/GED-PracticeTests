if global.canClick {
    if position_meeting(mouse_x, mouse_y, self) {
		if playTouch { 
			playTouch = false;
			//audio_play_sound(snd_Checkbox, 1, false)
		}
		
		c1 = c_lightning_yellow
		highlight = true
		
        if mouse_check_button_pressed(mb_left) {
			// Check if there is a valid input text
			if is_string(inputText) && string_length(inputText) >= 3 {
				global.canClick = false
				//if audio_system_is_available() && audio_sound_is_playable(sndClick)
				//{
				//	//audio_play_sound(sndClick, 1, false)
				//}
	            //audio_stop_all()
				// Pass the input text to oControl
				oControl.userUser = inputText
				with oControl {
					load_user(userUser)
					uiState = uiLayout.main
					load_ui(uiState)
				}
			}
        }
    }
    else { 
		highlight = false
		playTouch = true
		c1 = c_white
		
		if mouse_check_button_pressed(mb_left) {
			var mc = collision_rectangle(
						(default_width * 0.5) - 150, (default_height * 0.45) - 25, 
						(default_width * 0.5) + 150, (default_height * 0.45) + 25, 
						oMouse, false, true)
			if mc != noone {
				if !inputFocus { 
					inputFocus = true 
					alarm[1] = room_speed * 0.5
					keyboard_string = ""
				}
			}
			else {
				if inputFocus { inputFocus = false }
			}
		}
		
		if inputFocus {
			// check for keyboard inputs
			if string_length(keyboard_string) > 12 { 
				keyboard_string = string_copy(keyboard_string, 1, 12)
			}
			
			inputText = keyboard_string
		}
    }
}
else {
	//Switch text colour when button is selected
}