if global.canClick {
    if position_meeting(mouse_x, mouse_y, self) {
		if playTouch { 
			playTouch = false;
			//audio_play_sound(snd_Checkbox, 1, false)
		}
		
		c1 = c_lightning_yellow
		highlight = true
		
        if mouse_check_button_pressed(mb_left) {
			//if audio_system_is_available() && audio_sound_is_playable(sndClick)
			//{
			//	//audio_play_sound(sndClick, 1, false)
			//}
            switch label {
				case "All Subjects":
					with oButtonFilter { 
						chosen = false 
						y = ystart 
					}
					with oButtonUI { y = ystart }
					chosen = true
					with oControl {
						subjectFilter = scoreFilter.every
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
					}
                    break
				case "Science":
					with oButtonFilter { 
						chosen = false 
						y = ystart 
					}
					with oButtonUI { y = ystart }
					chosen = true
					with oControl {
						subjectFilter = scoreFilter.science
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
					}
                    break
				case "Math":
					with oButtonFilter { 
						chosen = false 
						y = ystart 
					}
					with oButtonUI { y = ystart }
					chosen = true
					with oControl {
						subjectFilter = scoreFilter.math
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
					}
                    break
				case "English":
					with oButtonFilter { 
						chosen = false 
						y = ystart 
					}
					with oButtonUI { y = ystart }
					chosen = true
					with oControl {
						subjectFilter = scoreFilter.english
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
					}
                    break
				case "Social Studies":
					with oButtonFilter { 
						chosen = false 
						y = ystart 
					}
					with oButtonUI { y = ystart }
					chosen = true
					with oControl {
						subjectFilter = scoreFilter.socialstudies
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
					}
                    break
            }
        }
    }
    else { 
		highlight = false
		playTouch = true
		c1 = c_tropical_blue
    }
}
else {
	//Switch text colour when button is selected
}