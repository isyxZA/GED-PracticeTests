if keyboard_check_pressed(vk_escape) {
	if uiState == uiLayout.main 
	{ 
		game_end() 
	}
	else {
		clear_test()
		cameraY = 0
		camera_set_view_pos(camera, 0, cameraY)
		uiState = uiLayout.main
		load_ui(uiState)
	}
}