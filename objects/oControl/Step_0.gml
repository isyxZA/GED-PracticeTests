switch uiState {
	case uiLayout.test:
	case uiLayout.review:
		// Navigate test questions
		if keyboard_check_pressed(vk_right) { 
			if currentQuestionIndex < ds_list_size(questionsList)-1 { currentQuestionIndex += 1 }
				else { currentQuestionIndex = 0 }
			cameraY = 0
			camera_set_view_pos(camera, 0, cameraY)
			with oButtonUI { y = ystart }
			setup_ui()
		} 
		else if keyboard_check_pressed(vk_left) { 
			if currentQuestionIndex > 0  { currentQuestionIndex -= 1 }
				else { currentQuestionIndex = ds_list_size(questionsList)-1 }
			cameraY = 0
			camera_set_view_pos(camera, 0, cameraY)
			with oButtonUI { y = ystart }
			setup_ui()
		} 
		
		// Scroll the question page up/down
		if keyboard_check_direct(vk_up) {
			if cameraY - scrollSpeed >= 0 { 
				cameraY -= scrollSpeed
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y -= oControl.scrollSpeed
				}
			}
	
		}
		else if mouse_wheel_up() {
			if cameraY - scrollSpeed >= 0 { 
				cameraY -= (scrollSpeed * 4)
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y -= (oControl.scrollSpeed * 4)
				}
			}
	
		}
		else if keyboard_check_direct(vk_down) {
			if cameraY + default_height + scrollSpeed <= maxHeight {
				cameraY += scrollSpeed
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y += oControl.scrollSpeed
				}
			}
			
		}
		else if mouse_wheel_down() {
			if cameraY + default_height + scrollSpeed <= maxHeight {
				cameraY += (scrollSpeed * 4)
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y += (oControl.scrollSpeed * 4)
				}
			}
			
		}
		break
	case uiLayout.userscores:
		// Scroll the question page up/down
		if keyboard_check_direct(vk_up) {
			if cameraY - scrollSpeed >= 0 { 
				cameraY -= scrollSpeed
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y -= oControl.scrollSpeed
				}
				with oButtonFilter {
					y -= oControl.scrollSpeed
				}
			}
	
		}
		else if mouse_wheel_up() {
			if cameraY - scrollSpeed >= 0 { 
				cameraY -= (scrollSpeed * 4)
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y -= (oControl.scrollSpeed * 4)
				}
				with oButtonFilter {
					y -= (oControl.scrollSpeed * 4)
				}
			}
	
		}
		else if keyboard_check_direct(vk_down) {
			if cameraY + default_height + scrollSpeed <= maxHeight {
				cameraY += scrollSpeed
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y += oControl.scrollSpeed
				}
				with oButtonFilter {
					y += oControl.scrollSpeed
				}
			}
			
		}
		else if mouse_wheel_down() {
			if cameraY + default_height + scrollSpeed <= maxHeight {
				cameraY += (scrollSpeed * 4)
				camera_set_view_pos(camera, 0, cameraY)
				with oButtonUI {
					y += (oControl.scrollSpeed * 4)
				}
				with oButtonFilter {
					y += (oControl.scrollSpeed * 4)
				}
			}
			
		}
		break
	default:
		break
}