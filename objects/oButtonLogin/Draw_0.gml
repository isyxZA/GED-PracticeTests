if buttonActive {
	
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

	if highlight { 
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_lightning_yellow, 1)
		gpu_set_blendmode(bm_normal)
	}
	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_font(fntButtons)
	draw_text_colour(x, y, label, c1, c1, c1, c1, 1)
	
	// draw user input box
	draw_set_color(c_white)
	draw_rectangle(
		(default_width * 0.5) - 175, (default_height * 0.45) - 25, 
		(default_width * 0.5) + 175, (default_height * 0.45) + 25,
		false
	)
	draw_set_color(c_science_blue)
	draw_rectangle(
		(default_width * 0.5) - 175, (default_height * 0.45) - 25, 
		(default_width * 0.5) + 175, (default_height * 0.45) + 25,
		true
	)
	// draw inputText
	draw_set_halign(fa_left)
	if inputFocus {
		draw_set_color(c_black)
		draw_set_font(fntQuestions)
		draw_text((default_width * 0.5) - 165, default_height * 0.45, inputText + blink)
	}
	else {
		if inputText != "" { 
			draw_set_color(c_black)
			draw_set_font(fntQuestions)
			draw_text((default_width * 0.5) - 165, default_height * 0.45, inputText) 
		}
		else { 
			draw_set_color(c_ltgray)
			draw_set_font(fntAnswers)
			draw_text((default_width * 0.5) - 165, default_height * 0.45, "Enter a user name ...")
		}
	}
}