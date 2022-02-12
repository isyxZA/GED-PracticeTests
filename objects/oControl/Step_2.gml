if keyboard_check_pressed(ord("F")) && uiState != uiLayout.login {
	if window_get_fullscreen() {
		window_set_fullscreen(false)
		window_set_size(1360, 765)
	}
	else {
		window_set_fullscreen(true)
	}
}

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