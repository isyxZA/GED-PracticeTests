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
					var count = 0
					for (i = 0; i < array_length(userData.user); i ++) {
						var test = string(userData.user[i].test)
						switch subjectFilter {
							case scoreFilter.every:
								draw_set_color(c_lightning_yellow)
								draw_set_font(fntQuestions)
								draw_text(default_width * 0.02, 64 + (i * 64), test)
								draw_set_font(fntAnswers)
								for(ii = 0; ii < 3; ii ++) {
									draw_set_color(c_tropical_blue)
									draw_text((default_width * 0.2) + (ii * 420), 64 + (i * 64), 
										"Date: " + string(userData.user[i].dates[ii])
									)
									var sn = userData.user[i].scores[ii]
									var sc
									if sn >= 75 { sc = c_green }
										else if sn >= 50 { sc = c_orange }
											else { sc = c_red }
									draw_set_color(sc)
									draw_text((default_width * 0.2) + (ii * 420) + 240, 64 + (i * 64), 
										string(sn) + "%"
									)
								}
								break
							case scoreFilter.science:
								switch test {
									case "Science Test 1":
									case "Science Test 2":
									case "Science Quiz 1":
									case "Science Quiz 2":
									case "Science Quiz 3":
									case "Science Quiz 4":
										count ++
										draw_set_color(c_lightning_yellow)
										draw_set_font(fntQuestions)
										draw_text(default_width * 0.02, 64 + (count * 64), test)
										draw_set_font(fntAnswers)
										for(ii = 0; ii < 3; ii ++) {
											draw_set_color(c_tropical_blue)
											draw_text((default_width * 0.2) + (ii * 420), 64 + (count * 64), 
												"Date: " + string(userData.user[i].dates[ii])
											)
											var sn = userData.user[i].scores[ii]
											var sc
											if sn >= 75 { sc = c_green }
												else if sn >= 50 { sc = c_orange }
													else { sc = c_red }
											draw_set_color(sc)
											draw_text((default_width * 0.2) + (ii * 420) + 240, 64 + (count * 64), 
												string(sn) + "%"
											)
										}
										break
								}
								break
							case scoreFilter.math:
								switch test {
									case "Math Test 1":
									case "Math Test 2":
									case "Math Quiz 1":
									case "Math Quiz 2":
									case "Math Quiz 3":
									case "Math Quiz 4":
									case "Expressions 1":
									case "Equations 1":
										count ++
										draw_set_color(c_lightning_yellow)
										draw_set_font(fntQuestions)
										draw_text(default_width * 0.02, 64 + (count * 64), test)
										draw_set_font(fntAnswers)
										for(ii = 0; ii < 3; ii ++) {
											draw_set_color(c_tropical_blue)
											draw_text((default_width * 0.2) + (ii * 420), 64 + (count * 64), 
												"Date: " + string(userData.user[i].dates[ii])
											)
											var sn = userData.user[i].scores[ii]
											var sc
											if sn >= 75 { sc = c_green }
												else if sn >= 50 { sc = c_orange }
													else { sc = c_red }
											draw_set_color(sc)
											draw_text((default_width * 0.2) + (ii * 420) + 240, 64 + (count * 64), 
												string(sn) + "%"
											)
										}
										break
								}
								break
							case scoreFilter.english:
								switch test {
									case "Reading 1":
									case "Reading 2":
									case "Reading 3":
									case "Reading 4":
									case "Grammar 1":
									case "Grammar 2":
									case "Grammar 3":
									case "Grammar 4":
									case "Critical Reading 1":
									case "Critical Reading 2":
									case "Critical Reading 3":
									case "Critical Reading 4":
										count ++
										draw_set_color(c_lightning_yellow)
										draw_set_font(fntQuestions)
										draw_text(default_width * 0.02, 64 + (count * 64), test)
										draw_set_font(fntAnswers)
										for(ii = 0; ii < 3; ii ++) {
											draw_set_color(c_tropical_blue)
											draw_text((default_width * 0.2) + (ii * 420), 64 + (count * 64), 
												"Date: " + string(userData.user[i].dates[ii])
											)
											var sn = userData.user[i].scores[ii]
											var sc
											if sn >= 75 { sc = c_green }
												else if sn >= 50 { sc = c_orange }
													else { sc = c_red }
											draw_set_color(sc)
											draw_text((default_width * 0.2) + (ii * 420) + 240, 64 + (count * 64), 
												string(sn) + "%"
											)
										}
										break
								}
								break
							case scoreFilter.socialstudies:
								switch test {
									case "Social Studies 1":
									case "Social Studies 2":
									case "Social Studies Quiz 1":
									case "Social Studies Quiz 2":
									case "Social Studies Quiz 3":
									case "Social Studies Quiz 4":
										count ++
										draw_set_color(c_lightning_yellow)
										draw_set_font(fntQuestions)
										draw_text(default_width * 0.02, 64 + (count * 64), test)
										draw_set_font(fntAnswers)
										for(ii = 0; ii < 3; ii ++) {
											draw_set_color(c_tropical_blue)
											draw_text((default_width * 0.2) + (ii * 420), 64 + (count * 64), 
												"Date: " + string(userData.user[i].dates[ii])
											)
											var sn = userData.user[i].scores[ii]
											var sc
											if sn >= 75 { sc = c_green }
												else if sn >= 50 { sc = c_orange }
													else { sc = c_red }
											draw_set_color(sc)
											draw_text((default_width * 0.2) + (ii * 420) + 240, 64 + (count * 64), 
												string(sn) + "%"
											)
										}
										break
								}
								break
						}
					}
				}
			}
		}
		draw_set_color(c_lightning_yellow)
		draw_line_width(default_width * 0.825, 0 + cameraY, default_width * 0.825, default_height + cameraY, 4)
		draw_set_color(c_cobalt)
		draw_rectangle(default_width * 0.825, 0 + cameraY, default_width, default_height + cameraY, false)
		break
}