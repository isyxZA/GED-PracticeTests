/* CAMERA */
init_camera()

/* GAME */
currentTest = ""
currentTestQuestionAmount = 0
currentQuestionIndex = 0
currentQuestionText = ""
currentQuestionGraphic = noone
studentQuestionsCompleted = 0
studentTestScore = 0

/* USER */
userUser = ""
userData = ""

/* QUESTIONS DATA */
// list of test questions
questionsList = ds_list_create()
// list of answer choices
answersList = ds_list_create()
// list of correct answers
answerList = ds_list_create()
// list of question graphics
graphicsList = ds_list_create()
// stored student answers
studentAnswersList = ds_list_create()
// buttons for choosing answers
answerButtonsList = ds_list_create()
// static letter choices
letterChoices[0] = "a."
letterChoices[1] = "b."
letterChoices[2] = "c."
letterChoices[3] = "d."
letterChoices[4] = "e."

/* UI */
// Test title 
titlePosition[0] = default_width * 0.5
titlePosition[1] = default_height * 0.05

// Question graphic
graphicPosition[0] = default_width * 0.5
graphicPosition[1] = default_height * 0.2

// Question and answers
textPosition[0] = default_width * 0.5
textPosition[1] = default_height * 0.45

// array of answer positions
answerPosition = -1

// width and height of the question text...for string formatting
questionTextHeight = 0;
questionTextWidth = 0;

// centering of the answers
answersOffsetX = 0;

// ui state control
uiState = uiLayout.main
load_ui(uiState)

// display size
//window_set_fullscreen(false)
//window_set_size(1360, 765)
