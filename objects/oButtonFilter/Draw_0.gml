if buttonActive {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
	draw_set_color(c_tropical_blue)
	draw_set_font(fntAnswers)
	draw_set_halign(fa_left)
	draw_text(x + 32, y + 18, " - " + label)

	if highlight { 
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_lightning_yellow, 1)
		gpu_set_blendmode(bm_normal)
	}
	
	if chosen {
		draw_circle_color(x, y + sprite_get_height(sprite_index) * 0.5, 14, c_lightning_yellow, c_lightning_yellow, false)
	}
}