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
				case "a.":
				case "b.":
				case "c.":
				case "d.":
				case "e.":
					if oControl.uiState == uiLayout.test {
						with oButtonRadio { chosenAnswer = false }
						// find button index in answer button list
						with oControl {
							// find this button's index
							var ali = ds_list_find_index(answerButtonsList, other.id)
							// get the answer text that corresponds with this button's index
							var atxt = answersList[| currentQuestionIndex][ali]
						
							// add the student answer to student answer list
							studentAnswersList[| currentQuestionIndex] = atxt
						
							// calculate amount of completed questions
							var cn = 0
							for(iv = 0; iv < ds_list_size(studentAnswersList); iv ++) {
								var ca = studentAnswersList[| iv]
								if ca != "" { cn ++ }
							}
							studentQuestionsCompleted = cn
						}
						chosenAnswer = true
					}
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