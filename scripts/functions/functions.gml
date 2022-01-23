/// @function init_camera()
function init_camera()
{
	cameraY = 0;
	view_camera[0] = camera_create_view(0, cameraY, default_width, default_height);
	//Assign a camera to the active view
	camera = view_camera[0];
	scrollSpeed = 10
	maxHeight = room_height
}

/// @function load_user(_user)
/// @param {string} _user username
function load_user(_user) {
	var _file = _user + "_testscores.json"
	
	// if the user has a file in storage
	if file_exists(_file) {
		// load the user data
		var _buffer = buffer_load(_file)
		var _string = buffer_read(_buffer, buffer_string)
		buffer_delete(_buffer)
		//json_stringify(_string)
		userData = json_parse(_string)
	}
	else {
		// create a new save file from template
		if file_exists("template_testscores.json") {
			// load the template
			var _load_buffer = buffer_load("template_testscores.json")
			var _load_string = buffer_read(_load_buffer, buffer_string)
			buffer_delete(_load_buffer)
			
			userData = json_parse(_load_string)
			
			// save a new file for the user
			var _save_string = _load_string
			var _save_buffer = buffer_create(string_byte_length(_save_string) + 1, buffer_fixed, 1)
			buffer_write(_save_buffer, buffer_string, _save_string)
			buffer_save(_save_buffer, _file)
			buffer_delete(_save_buffer)
		}
	}
}

/// @function load_test(_testID)
/// @description load the test questions into oControl
/// @param {string} _testID identifier
function load_test(_testID){
	switch _testID {
		case "Science 1":
			if file_exists("science_test_1.json") {
				var _buffer = buffer_load("science_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Science 2":
			if file_exists("science_test_2.json") {
				var _buffer = buffer_load("science_test_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Science Quiz 1":
			if file_exists("science_quiz_1.json") {
				var _buffer = buffer_load("science_quiz_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Science Quiz 2":
			if file_exists("science_quiz_2.json") {
				var _buffer = buffer_load("science_quiz_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Science Quiz 3":
			if file_exists("science_quiz_3.json") {
				var _buffer = buffer_load("science_quiz_3.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Science Quiz 4":
			if file_exists("science_quiz_4.json") {
				var _buffer = buffer_load("science_quiz_4.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Math 1":
			if file_exists("math_test_1.json") {
				var _buffer = buffer_load("math_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Math 2":
			if file_exists("math_test_2.json") {
				var _buffer = buffer_load("math_test_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Expressions 1":
			if file_exists("expressions_test_1.json") {
				var _buffer = buffer_load("expressions_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Equations 1":
			if file_exists("equations_test_1.json") {
				var _buffer = buffer_load("equations_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Social Studies 1":
			if file_exists("socialstudies_test_1.json") {
				var _buffer = buffer_load("socialstudies_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Social Studies 2":
			if file_exists("socialstudies_test_2.json") {
				var _buffer = buffer_load("socialstudies_test_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Reading 1":
			if file_exists("reading_test_1.json") {
				var _buffer = buffer_load("reading_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Reading 2":
			if file_exists("reading_test_2.json") {
				var _buffer = buffer_load("reading_test_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Grammar 1":
			if file_exists("grammar_test_1.json") {
				var _buffer = buffer_load("grammar_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Grammar 2":
			if file_exists("grammar_test_2.json") {
				var _buffer = buffer_load("grammar_test_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Critical Reading 1":
			if file_exists("criticalreading_test_1.json") {
				var _buffer = buffer_load("criticalreading_test_1.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
		case "Critical Reading 2":
			if file_exists("criticalreading_test_2.json") {
				var _buffer = buffer_load("criticalreading_test_2.json")
				var _string = buffer_read(_buffer, buffer_string)
				buffer_delete(_buffer)
				questionData = json_parse(_string)
			}
			break
	}
	
	if is_struct(questionData) {
		if variable_struct_exists(questionData, "test") {
			if is_array(questionData.test) {
				// Add data to control object lists
				for (i = 0; i < array_length(questionData.test); i ++) {
					ds_list_add(questionsList, format_string(questionData.test[i].question, fntQuestions))
					ds_list_add(answersList, questionData.test[i].answers)
					ds_list_add(answerList, questionData.test[i].answer)
					ds_list_add(graphicsList, questionData.test[i].graphic)
				}
				// set student answers list to the same size as questions list
				for (ii = 0; ii < ds_list_size(questionsList); ii ++) {
					ds_list_add(studentAnswersList, "")
				}
				currentTestQuestionAmount = ds_list_size(questionsList)
			}
			else {
				clear_test()
				uiState = uiLayout.main
				load_ui(uiState)
			}
		}
		else {
			clear_test()
			uiState = uiLayout.main
			load_ui(uiState)
		}
	}
	else {
		clear_test()
		uiState = uiLayout.main
		load_ui(uiState)
	}
}


/// @function format_string(_string, _font)
/// @decription  returns a given string, word wrapped to a pixel width.
/// @param {string} _string  text to word wrap
/// @param {font}   _font    font to be used
function format_string(_string, _font) {
	draw_set_font(_font)
	var formattedString = ""
	var tempString = ""
	var _width
	
	if string_length(_string) > 700 {
		_width = 1600
	}
	else if string_length(_string) > 500 {
		_width = 1400
	}
	else if string_length(_string) > 300  {
		_width = 1200
	}
	else {
		_width = 1000
	}
	
	if string_width(_string) > _width {
		for(var i = 1; i < string_length(_string)+1; i ++) {
			var tempChar = string_char_at(_string, i)
			if string_width(tempString) > _width && tempChar == " " {
				tempString = ""
				formattedString += "\n"
				formattedString += tempChar
			}
			else {
				tempString += tempChar
				formattedString += tempChar
			}
		}
		
		return formattedString
	}
	else {
		return _string
	}
}

/// @function spawn_button_menu(_xpos, _ypos, _scaleX, _scaleY, _text)
/// @param {float} _xpos
/// @param {float} _ypos
/// @param {float} _scaleX
/// @param {float} _scaleY
/// @param {string} _text
function spawn_button_menu(_xpos, _ypos, _sprite, _scaleX, _scaleY, _text)
{
	var btn = instance_create_layer(_xpos, _ypos, "Buttons", oButton)
	btn.sprite_index = _sprite
	btn.image_xscale = _scaleX
	btn.image_yscale = _scaleY
	btn.label = _text
}

/// @function spawn_button_radio(_xpos, _ypos, _scale, _text)
/// @param {float} _xpos
/// @param {float} _ypos
/// @param {float} _scale
/// @param {string} _text
function spawn_button_radio(_xpos, _ypos, _sprite, _scale, _text)
{
	var btn = instance_create_layer(_xpos, _ypos, "Buttons", oButtonRadio)
	btn.sprite_index = _sprite
	btn.image_xscale = _scale
	btn.image_yscale = _scale
	btn.label = _text
	ds_list_add(answerButtonsList, btn.id)
}

/// @function spawn_button_ui(_xpos, _ypos, _scaleX, _scaleY _text)
/// @param {float} _xpos
/// @param {float} _ypos
/// @param {float} _scaleX
/// @param {float} _scaleY
/// @param {string} _text
function spawn_button_ui(_xpos, _ypos, _sprite, _scaleX, _scaleY, _text)
{
	var btn = instance_create_layer(_xpos, _ypos, "ButtonsGUI", oButtonUI)
	btn.sprite_index = _sprite
	btn.image_xscale = _scaleX
	btn.image_yscale = _scaleY
	btn.label = _text
}

/// @function spawn_button_login(_xpos, _ypos, _scaleX, _scaleY, _text)
/// @param {float} _xpos
/// @param {float} _ypos
/// @param {float} _scaleX
/// @param {float} _scaleY
/// @param {string} _text
function spawn_button_login(_xpos, _ypos, _sprite, _scaleX, _scaleY, _text)
{
	var btn = instance_create_layer(_xpos, _ypos, "Buttons", oButtonLogin)
	btn.sprite_index = _sprite
	btn.image_xscale = _scaleX
	btn.image_yscale = _scaleY
	btn.label = _text
}

/// @description setup_ui()
function setup_ui() {
	//grab the current graphic if any
	if graphicsList[| currentQuestionIndex] != "noone" {
		currentQuestionGraphic = find_graphic(graphicsList[| currentQuestionIndex])
		textPosition[1] = graphicPosition[1] + sprite_get_height(currentQuestionGraphic) + 48
	}
	else {
		currentQuestionGraphic = noone
		textPosition[1] = titlePosition[1] + 128
	}
	
	currentQuestionText = questionsList[| currentQuestionIndex]
	
	draw_set_font(fntQuestions)
	if is_string(currentQuestionText) { 
		questionTextHeight = string_height(currentQuestionText) 
		questionTextWidth = (string_width(currentQuestionText) + 75) * 0.5
	}
	else {
		questionTextHeight = 0
		questionTextWidth = 0
	}
	
	// find the longest string in the ANSWERS list then center all accordingly on the X
	draw_set_font(fntAnswers)
	var aw = 0
	for(i = 0; i < array_length(answersList[| currentQuestionIndex]); i ++) {
		var al = string_width(answersList[| currentQuestionIndex][i])
		if  al > aw {
			aw = al;
		}
	}
	answersOffsetX = aw * 0.5;
	
	// determine the Y coord of the answers and answer buttons
	answerPosition = -1
	var ph = 0;
	for(ii = 0; ii < array_length(answersList[| currentQuestionIndex]); ii ++) {
		answerPosition[ii][0] = textPosition[0] - answersOffsetX
		answerPosition[ii][1] = textPosition[1] + (questionTextHeight + 96) + (20 * ii) + ph
		ph += string_height(answersList[| currentQuestionIndex][ii])
	}
	
	// adjust answer buttons
	if !ds_list_empty(answerButtonsList) {
		for(iii = 0; iii < ds_list_size(answerButtonsList); iii ++) {
			var ab = ds_list_find_value(answerButtonsList, iii)
			if instance_exists(ab) {
				ab.x = answerPosition[iii][0] - 48
				ab.y = answerPosition[iii][1]
				
				// check if the student answer matches the answer at index
				if studentAnswersList[| currentQuestionIndex] == answersList[| currentQuestionIndex][iii] { 
					ab.chosenAnswer = true 
					if uiState == uiLayout.review { 
						if studentAnswersList[| currentQuestionIndex] != answerList[| currentQuestionIndex] {
							ab.isCorrect = false
						}
					}
				}
				else { 
					ab.chosenAnswer = false 
				}
				
			}
		}
	}
}

/// @function load_ui(_layout)
/// @description clears the current layout and loads the selected
/// @param {enum} _layout which ui layout to load
function load_ui(_layout) {
	switch _layout {
		case uiLayout.main:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			with oButtonLogin { instance_destroy() }
			// Spawn new buttons
			if userUser == "" {
				spawn_button_menu(default_width * 0.8, default_height * 0.4, sButton, 1.25, 1, "Log In")
				spawn_button_menu(default_width * 0.8, default_height * 0.6, sButton, 1.25, 1, "Exit")
			}
			else {
				spawn_button_menu(default_width * 0.8, default_height * 0.3, sButton, 1.25, 1, "Science")
				spawn_button_menu(default_width * 0.8, default_height * 0.4, sButton, 1.25, 1, "Math")
				spawn_button_menu(default_width * 0.8, default_height * 0.5, sButton, 1.25, 1, "Social Studies")
				spawn_button_menu(default_width * 0.8, default_height * 0.6, sButton, 1.25, 1, "English")
				spawn_button_menu(default_width * 0.8, default_height * 0.7, sButton, 1.25, 1, "Scores")
				spawn_button_menu(default_width * 0.8, default_height * 0.8, sButton, 1.25, 1, "Log Out")
			}
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.login:
			// Clear current buttons
			with oButton { instance_destroy() }
			// Spawn new buttons
			spawn_button_login(default_width * 0.4, default_height * 0.65, sButton, 1.25, 1, "Log In")
			spawn_button_menu(default_width * 0.6, default_height * 0.65, sButton, 1.25, 1, "Back")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.science:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn new buttons
			spawn_button_menu(default_width * 0.75, default_height * 0.45, sButton, 1.25, 1, "Science Test 1")
			spawn_button_menu(default_width * 0.75, default_height * 0.55, sButton, 1.25, 1, "Science Test 2")
			spawn_button_menu(default_width * 0.25, default_height * 0.35, sButton, 1.25, 1, "Science Quiz 1")
			spawn_button_menu(default_width * 0.25, default_height * 0.45, sButton, 1.25, 1, "Science Quiz 2")
			spawn_button_menu(default_width * 0.25, default_height * 0.55, sButton, 1.25, 1, "Science Quiz 3")
			spawn_button_menu(default_width * 0.25, default_height * 0.65, sButton, 1.25, 1, "Science Quiz 4")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.math:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn new buttons
			spawn_button_menu(default_width * 0.75, default_height * 0.45, sButton, 1.25, 1, "Math Test 1")
			spawn_button_menu(default_width * 0.75, default_height * 0.55, sButton, 1.25, 1, "Math Test 2")
			spawn_button_menu(default_width * 0.25, default_height * 0.45, sButton, 1.25, 1, "Equations 1")
			spawn_button_menu(default_width * 0.25, default_height * 0.55, sButton, 1.25, 1, "Expressions 1")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.socstudies:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn new buttons
			spawn_button_menu(default_width * 0.5, default_height * 0.45, sButton, 1.25, 1, "Social Studies 1")
			spawn_button_menu(default_width * 0.5, default_height * 0.55, sButton, 1.25, 1, "Social Studies 2")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.english:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn new buttons
			spawn_button_menu(default_width * 0.2, default_height * 0.45, sButton, 1.5, 1, "Reading 1")
			spawn_button_menu(default_width * 0.2, default_height * 0.55, sButton, 1.5, 1, "Reading 2")
			spawn_button_menu(default_width * 0.5, default_height * 0.45, sButton, 1.5, 1, "Grammar 1")
			spawn_button_menu(default_width * 0.5, default_height * 0.55, sButton, 1.5, 1, "Grammar 2")
			spawn_button_menu(default_width * 0.8, default_height * 0.45, sButton, 1.5, 1, "Critical Reading 1")
			spawn_button_menu(default_width * 0.8, default_height * 0.55, sButton, 1.5, 1, "Critical Reading 2")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.userscores:
			// Clear current buttons
			with oButton { instance_destroy() }
			// Spawn new buttons
			spawn_button_ui(default_width * 0.9, default_height * 0.1, sButton, 0.8, 0.8, "Back")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.test:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn answer buttons
			if answerPosition != -1 {
				for(i = 0; i < array_length(answerPosition); i ++) {
					spawn_button_radio(answerPosition[i][0] - 48, answerPosition[i][1], sAnswer, 1, letterChoices[i])
				}
			}
			// Spawn new buttons
			spawn_button_ui(default_width * 0.75, default_height * 0.075, sButton, 1, 1, "Grade")
			spawn_button_ui(default_width * 0.05, default_height * 0.075, sArrow, -1, 1, "Previous")
			spawn_button_ui(default_width * 0.95, default_height * 0.075, sArrow, 1, 1, "Next")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.testscore:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn new buttons
			spawn_button_menu(default_width * 0.35, default_height * 0.65, sButton, 1, 1, "Review")
			spawn_button_menu(default_width * 0.65, default_height * 0.65, sButton, 1, 1, "End")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
		case uiLayout.review:
			// Clear current buttons
			with oButton { instance_destroy() }
			with oButtonRadio { instance_destroy() }
			with oButtonUI { instance_destroy() }
			// Spawn answer buttons
			if answerPosition != -1 {
				for(i = 0; i < array_length(answerPosition); i ++) {
					spawn_button_radio(answerPosition[i][0] - 48, answerPosition[i][1], sAnswer, 1, letterChoices[i])
				}
			}
			// Spawn new buttons
			spawn_button_ui(default_width * 0.75, default_height * 0.075, sButton, 1, 1, "End")
			spawn_button_ui(default_width * 0.05, default_height * 0.075, sArrow, -1, 1, "Previous")
			spawn_button_ui(default_width * 0.95, default_height * 0.075, sArrow, 1, 1, "Next")
			// Turn on can click
			oControl.alarm[0] = room_speed * 0.5
			break
	}
}

/// @function get_score()
function get_score() {
	var _score = 0
	for(i = 0; i < currentTestQuestionAmount; i ++) {
		var _sa = studentAnswersList[| i]
		var _ca = answerList[| i]
		
		if _sa == _ca { _score += 1 }
	}
	studentTestScore = (_score / currentTestQuestionAmount) * 100
	
	// ADD SCORE TO STUDENT SAVE FILE
	if is_struct(userData) {
		if variable_struct_exists(userData, "user") {
			if is_array(userData.user) {
				for (ii = 0; ii < array_length(userData.user); ii ++) {
					if userData.user[ii].test == currentTest {
						if userData.user[ii].dates[0] == "" {
							userData.user[ii].dates[0] = date_date_string(date_current_datetime())
							userData.user[ii].scores[0] = studentTestScore
						}
						else if userData.user[ii].dates[1] == "" {
							userData.user[ii].dates[1] = date_date_string(date_current_datetime())
							userData.user[ii].scores[1] = studentTestScore
						}
						else if userData.user[ii].dates[2] == "" {
							userData.user[ii].dates[2] = date_date_string(date_current_datetime())
							userData.user[ii].scores[2] = studentTestScore
						}
						else {
							userData.user[ii].dates[1] = userData.user[ii].dates[0]
							userData.user[ii].scores[1] = userData.user[ii].scores[0]
							
							userData.user[ii].dates[2] = userData.user[ii].dates[1]
							userData.user[ii].scores[2] = userData.user[ii].scores[1]
							
							userData.user[ii].dates[0] = date_date_string(date_current_datetime())
							userData.user[ii].scores[0] = studentTestScore
						}
						
						break
					}
				}
			}
		}
	}
	
	var _file = userUser + "_testscores.json"
	if file_exists(_file) {
		file_delete(_file)
	
		// save a new file for the user
		var _save_string = json_stringify(userData)
		var _save_buffer = buffer_create(string_byte_length(_save_string) + 1, buffer_fixed, 1)
		buffer_write(_save_buffer, buffer_string, _save_string)
		buffer_save(_save_buffer, _file)
		buffer_delete(_save_buffer)
	}
}

/// @function clear_test()
function clear_test() {
	ds_list_clear(questionsList)
	ds_list_clear(answersList)
	ds_list_clear(answerList)
	ds_list_clear(graphicsList)
	ds_list_clear(studentAnswersList)
	ds_list_clear(answerButtonsList)
	currentTest = ""
	currentTestQuestionAmount = 0
	currentQuestionIndex = 0
	currentQuestionText = ""
	currentQuestionGraphic = noone
	studentQuestionsCompleted = 0
	studentTestScore = 0
	answerPosition = -1
	questionData = noone
}

/// @function find_graphic(_identifier)
/// @description return the assigned sprite
/// @param {string} _identifier  identifier as a string value
function find_graphic(_indentifier) {
	switch _indentifier {
		case "Science_1_1":
			return sScience_1_1
		case "Science_1_2":
			return sScience_1_2
		case "Science_1_3":
			return sScience_1_3
		case "Science_1_4":
			return sScience_1_4
		case "Science_2_1":
			return sScience_2_1
		case "Science_2_2":
			return sScience_2_2
		case "Science_2_3":
			return sScience_2_3
		case "Science_2_4":
			return sScience_2_4
		case "Science_2_5":
			return sScience_2_5
		case "Science_2_6":
			return sScience_2_6
		case "Science_2_7":
			return sScience_2_7
		case "Science_2_8":
			return sScience_2_8
		case "Science_2_9":
			return sScience_2_9
		case "Science_2_10":
			return sScience_2_10
		case "Math_1_1":
			return sMath_1_1
		case "Math_1_2":
			return sMath_1_2
		case "Math_1_3":
			return sMath_1_3
		case "Math_1_4":
			return sMath_1_4
		case "Math_1_5":
			return sMath_1_5
		case "Math_1_6":
			return sMath_1_6
		case "Math_1_7":
			return sMath_1_7
		case "Math_1_8":
			return sMath_1_8
		case "Math_1_9":
			return sMath_1_9
		case "Math_1_10":
			return sMath_1_10
		case "Math_1_11":
			return sMath_1_11
		case "Math_1_12":
			return sMath_1_12
		case "Math_1_13":
			return sMath_1_13
		case "Math_1_14":
			return sMath_1_14
		case "Math_2_1":
			return sMath_2_1
		case "Math_2_2":
			return sMath_2_2
		case "Math_2_3":
			return sMath_2_3
		case "Math_2_4":
			return sMath_2_4
		case "Math_2_5":
			return sMath_2_5
		case "Math_2_6":
			return sMath_2_6
		case "Social_1_1":
			return sSocial_1_1
		case "Social_1_2":
			return sSocial_1_2
		case "Social_1_3":
			return sSocial_1_3
		case "Social_1_4":
			return sSocial_1_4
		case "Social_1_5":
			return sSocial_1_5
		case "Social_1_6":
			return sSocial_1_6
		case "Social_1_7":
			return sSocial_1_7
		case "Social_1_8":
			return sSocial_1_8
		case "Social_1_9":
			return sSocial_1_9
		case "Social_2_1":
			return sSocial_2_1
		case "Social_2_2":
			return sSocial_2_2
		case "Social_2_3":
			return sSocial_2_3
		case "Social_2_4":
			return sSocial_2_4
		case "Social_2_5":
			return sSocial_2_5
		case "Reading_1_1":
			return sReading_1_1
		case "Critical_1_1":
			return sCritical_1_1
		case "Critical_1_2":
			return sCritical_1_2
		case "Critical_2_1":
			return sCritical_2_1
		case "Equations_1_1":
			return sEquations_1_1
		case "Equations_1_2":
			return sEquations_1_2
		case "Equations_1_3":
			return sEquations_1_3
		case "Equations_1_4":
			return sEquations_1_4
		case "Equations_1_5":
			return sEquations_1_5
		case "Equations_1_6":
			return sEquations_1_6
		case "Equations_1_7":
			return sEquations_1_7
		case "Equations_1_8":
			return sEquations_1_8
		case "Equations_1_9":
			return sEquations_1_9
		case "Expressions_1_1":
			return sExpressions_1_1
		case "Expressions_1_2":
			return sExpressions_1_2
		case "Expressions_1_3":
			return sExpressions_1_3
		case "Expressions_1_4":
			return sExpressions_1_4
		case "Expressions_1_5":
			return sExpressions_1_5
		case "Expressions_1_6":
			return sExpressions_1_6
		case "Expressions_1_7":
			return sExpressions_1_7
		case "Expressions_1_8":
			return sExpressions_1_8
		case "Science_Quiz_1_1":
			return sScienceQuiz_1_1
		case "Science_Quiz_1_2":
			return sScienceQuiz_1_2
		case "Science_Quiz_1_3":
			return sScienceQuiz_1_3
		case "Science_Quiz_1_4":
			return sScienceQuiz_1_4
		case "Science_Quiz_1_5":
			return sScienceQuiz_1_5
		case "Science_Quiz_1_6":
			return sScienceQuiz_1_6
		case "Science_Quiz_2_1":
			return sScienceQuiz_2_1
		case "Science_Quiz_2_2":
			return sScienceQuiz_2_2
		case "Science_Quiz_2_3":
			return sScienceQuiz_2_3
		case "Science_Quiz_2_4":
			return sScienceQuiz_2_4
		case "Science_Quiz_2_5":
			return sScienceQuiz_2_5
		case "Science_Quiz_2_6":
			return sScienceQuiz_2_6
		case "Science_Quiz_2_7":
			return sScienceQuiz_2_7
		case "Science_Quiz_2_8":
			return sScienceQuiz_2_8
		case "Science_Quiz_3_1":
			return sScienceQuiz_3_1
		case "Science_Quiz_3_2":
			return sScienceQuiz_3_2
		case "Science_Quiz_3_3":
			return sScienceQuiz_3_3
		case "Science_Quiz_3_4":
			return sScienceQuiz_3_4
		case "Science_Quiz_3_5":
			return sScienceQuiz_3_5
		case "Science_Quiz_3_6":
			return sScienceQuiz_3_6
		case "Science_Quiz_4_1":
			return sScienceQuiz_4_1
		case "Science_Quiz_4_2":
			return sScienceQuiz_4_2
		case "Science_Quiz_4_3":
			return sScienceQuiz_4_3
		case "Science_Quiz_4_4":
			return sScienceQuiz_4_4
		case "Science_Quiz_4_5":
			return sScienceQuiz_4_5
		case "Science_Quiz_4_6":
			return sScienceQuiz_4_6
		case "Science_Quiz_4_7":
			return sScienceQuiz_4_7
		case "Science_Quiz_4_8":
			return sScienceQuiz_4_8
		default:
			return sGraphic_Blank
	}
}