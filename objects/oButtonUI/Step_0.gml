if global.canClick 
{
    if position_meeting(mouse_x, mouse_y, self) 
	{
		if playTouch
		{ 
			playTouch = false;
			//audio_play_sound(snd_Checkbox, 1, false)
		}
		
		c1 = c_lightning_yellow
		highlight = true
		
        if mouse_check_button_pressed(mb_left) 
		{
			//if audio_system_is_available() && audio_sound_is_playable(sndClick)
			//{
			//	//audio_play_sound(sndClick, 1, false)
			//}
            switch label 
			{
				case "Next":
					// Go to next question
					with oControl {
						if currentQuestionIndex < ds_list_size(questionsList)-1 { currentQuestionIndex += 1 }
							else { currentQuestionIndex = 0 }
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
						setup_ui()
					}
					with oButtonUI { y = ystart }
					break
				case "Previous":
					// Go to previous question
					with oControl {
						if currentQuestionIndex > 0  { currentQuestionIndex -= 1 }
							else { currentQuestionIndex = ds_list_size(questionsList)-1 }
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
						setup_ui()
					}
					with oButtonUI { y = ystart }
					break
				case "Grade":
					// check if all questions have been answered
					if oControl.studentQuestionsCompleted == oControl.currentTestQuestionAmount {
						global.canClick = false
						// calculate score
						with oControl {
							cameraY = 0
							camera_set_view_pos(camera, 0, cameraY)
							ds_list_clear(answerButtonsList)
							get_score()
							uiState = uiLayout.testscore
							load_ui(uiState)
						}
						with oButtonUI { y = ystart }
					}
					else {
						// display pop-up warning
						
						// spawn OK button and exit test button
					}
					break
				case "Back": // Back to main
                    global.canClick = false
					with oControl {
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
						uiState = uiLayout.main
						load_ui(uiState)
					}
                    break
				case "End":
					global.canClick = false
					with oControl {
						cameraY = 0
						camera_set_view_pos(camera, 0, cameraY)
						clear_test()
						uiState = uiLayout.main
						load_ui(uiState)
					}
					with oButtonUI { y = ystart }
					break
            }
        }
    }
    else 
	{ 
		highlight = false
		playTouch = true
		c1 = c_tropical_blue
    }
}
else 
{
	//Switch text colour when button is selected
}