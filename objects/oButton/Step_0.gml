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
                case "Exit":
                    global.canClick = false
                    //audio_stop_all()
                    game_end()
                    break
				case "Science":
                    global.canClick = false
                    //audio_stop_all()
					with oControl {
						load_ui(uiLayout.science)
						uiState = uiLayout.science
					}
                    break
				case "Math":
                    global.canClick = false
                    //audio_stop_all()
					with oControl {
						load_ui(uiLayout.math)
						uiState = uiLayout.math
					}
                    break
				case "Social Studies":
                    global.canClick = false
                    //audio_stop_all()
					with oControl {
						load_ui(uiLayout.socstudies)
						uiState = uiLayout.socstudies
					}
                    break
				case "English":
                    global.canClick = false
                    //audio_stop_all()
					with oControl {
						load_ui(uiLayout.english)
						uiState = uiLayout.english
					}
                    break
				case "Scores":
					global.canClick = false
					with oControl {
						load_ui(uiLayout.userscores)
						uiState = uiLayout.userscores
					}
					break
				case "Science 1":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Science 1"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Science 2":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Science 2"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Math 1":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Math 1"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Math 2":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Math 2"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Social Studies 1":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Social Studies 1"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Social Studies 2":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Social Studies 2"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Reading 1":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Reading 1"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Reading 2":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Reading 2"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Critical Reading 1":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Critical Reading 1"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Critical Reading 2":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Critical Reading 2"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Grammar 1":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Grammar 1"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Grammar 2":
                    global.canClick = false
					with oControl {
						clear_test()
						currentTest = "Grammar 2"
						currentQuestionIndex = 0
						currentQuestionText = ""
						currentQuestionGraphic = noone
						load_test(currentTest)
						if questionData != noone {
							setup_ui()
							load_ui(uiLayout.test)
							uiState = uiLayout.test
						}
					}
                    break
				case "Log In": // Go to login
					with oControl {
						if userUser == "" {
							global.canClick = false
							userData = ""
							uiState = uiLayout.login
							load_ui(uiState)
						}
					}
                    break
				case "Log Out": // Log out the current user
                    global.canClick = false
					with oControl {
						userUser = ""
						userData = ""
						uiState = uiLayout.main
						load_ui(uiState)
					}
                    break
				case "Back": // Back to main
                    global.canClick = false
					with oButtonLogin { instance_destroy() }
					with oControl {
						uiState = uiLayout.main
						load_ui(uiState)
					}
                    break
				case "Review": // Review the test after grading
					global.canClick = false
					with oControl {
						currentQuestionIndex = 0
						uiState = uiLayout.review
						load_ui(uiState)
						alarm[1] = room_speed * 0.1 //setup_ui() on delay
					}
					break
				case "End": // Return to main menu
					global.canClick = false
					with oControl {
						clear_test()
						uiState = uiLayout.main
						load_ui(uiState)
					}
					break
            }
        }
    }
    else { 
		highlight = false
		playTouch = true
		c1 = c_white
    }
}
else {
	//Switch text colour when button is selected
}