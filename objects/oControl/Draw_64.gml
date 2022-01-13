switch uiState {
	case uiLayout.main:
		draw_sprite(sStudents, 0, default_width * 0.35, default_height * 0.65)
		draw_set_font(fntTitles)
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		draw_set_color(c_cobalt)
		draw_rectangle(0, 0, default_width, default_height * 0.15, false)
		draw_set_color(c_white)
		draw_text(titlePosition[0], titlePosition[1], "Cross Road Christian Learning Center")
		draw_set_color(c_lightning_yellow)
		draw_text(default_width * 0.35, titlePosition[1] + 200, "GED PRACTICE TESTS")
		if userUser != "" {
			draw_set_font(fntButtons)
			draw_set_color(c_tropical_blue)
			draw_text(default_width * 0.35, default_height - 100, "Hi, " + userUser + "!")
		}
		break
	case uiLayout.test:
	case uiLayout.review:
		// Header
		// Test Title
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		draw_set_color(c_tropical_blue)
		draw_set_font(fntTitles)
		draw_text(titlePosition[0], titlePosition[1], currentTest)
		draw_set_font(fntButtonsUI)
		draw_set_valign(fa_center)
		// Completed Questions
		draw_sprite(sButton, 0, default_width * 0.25, default_height * 0.075)
		draw_text(default_width * 0.25, default_height * 0.075, string(studentQuestionsCompleted) + "/" + string(currentTestQuestionAmount) + " Complete")
		break
	case uiLayout.testscore:
		// Test Title
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		draw_set_color(c_tropical_blue)
		draw_set_font(fntTitles)
		draw_text(titlePosition[0], titlePosition[1], currentTest)
		draw_set_color(c_science_blue)
		draw_text(default_width * 0.5, default_height * 0.3, "Your Score")
		draw_set_color(c_lightning_yellow)
		draw_text(default_width * 0.5, default_height * 0.45, string(studentTestScore) + "%")
		break
	case uiLayout.userscores:
		if is_struct(userData) {
			if variable_struct_exists(userData, "user") {
				if is_array(userData.user) {
					draw_set_halign(fa_left)
					for (i = 0; i < array_length(userData.user); i ++) {
						draw_set_color(c_lightning_yellow)
						draw_set_font(fntButtons)
						draw_text(default_width * 0.05, 64 + (i * 64), string(userData.user[i].test))
						draw_set_color(c_tropical_blue)
						draw_set_font(fntAnswers)
						for(ii = 0; ii < 3; ii ++) {
							draw_text((default_width * 0.25) + (ii * 475 ), 64 + (i * 64), 
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