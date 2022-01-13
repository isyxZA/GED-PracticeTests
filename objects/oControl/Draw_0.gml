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
		draw_text(textPosition[0], textPosition[1], string(currentQuestionIndex + 1) + ".  " +  currentQuestionText)
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
		draw_set_color(c_cobalt)
		draw_rectangle(0, cameraY, default_width, cameraY + (default_height * 0.15), false)
		break
}