switch uiState {
	case uiLayout.test:
	case uiLayout.review:
		draw_set_valign(fa_top)
		// Question Graphic
		if currentQuestionGraphic != noone {
			draw_sprite(currentQuestionGraphic, 0, graphicPosition[0], graphicPosition[1])
		}

		// Question Text
		draw_set_font(fntQuestions)
		draw_set_color(c_white)
		// current question as a string
		//draw_text(textPosition[0], textPosition[1], string(currentQuestionIndex + 1) + ".  " +  currentQuestionText)
		draw_text(textPosition[0], textPosition[1], currentQuestionText)
		//var sh = string_height(cq) 
		draw_set_color(c_science_blue)
		draw_rectangle(textPosition[0] - questionTextWidth, textPosition[1], textPosition[0] + questionTextWidth, textPosition[1] + questionTextHeight, true)

		// Answer Choices
		draw_set_halign(fa_left)
		draw_set_font(fntAnswers)
		draw_set_color(c_white)
		for(i = 0; i < array_length(answersList[| currentQuestionIndex]); i ++) {
			draw_text(answerPosition[i][0], answerPosition[i][1], letterChoices[i] + "  " + answersList[| currentQuestionIndex][i])
		}
		
		draw_set_valign(fa_top)
		draw_set_color(c_lightning_yellow)
		draw_line_width(0, default_height * 0.15 + cameraY, default_width, default_height * 0.15 + cameraY, 4)
		draw_set_color(c_cobalt)
		draw_rectangle(0, cameraY, default_width, cameraY + (default_height * 0.15), false)
		break
	case uiLayout.userscores:
		if is_struct(userData) {
			if variable_struct_exists(userData, "user") {
				if is_array(userData.user) {
					draw_set_halign(fa_left)
					for (i = 0; i < array_length(userData.user); i ++) {
						draw_set_color(c_lightning_yellow)
						draw_set_font(fntQuestions)
						draw_text(default_width * 0.05, 64 + (i * 64), string(userData.user[i].test))
						draw_set_color(c_tropical_blue)
						draw_set_font(fntAnswers)
						for(ii = 0; ii < 3; ii ++) {
							draw_text((default_width * 0.2) + (ii * 475 ), 64 + (i * 64), 
								"Date: " + string(userData.user[i].dates[ii]) + "   " + 
								"Score: " + string(userData.user[i].scores[ii]) + "%"
							)
						}
						
					}
				}
			}
		}
		break
}