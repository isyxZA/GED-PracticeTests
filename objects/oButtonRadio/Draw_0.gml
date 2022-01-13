if buttonActive
{
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

	if highlight
	{ 
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_lightning_yellow, 1)
		gpu_set_blendmode(bm_normal)
	}
	
	if chosenAnswer {
		draw_set_halign(fa_center)
		if oControl.uiState == uiLayout.test {
			draw_circle_color(x, y + sprite_get_height(sprite_index) * 0.5, 14, c_lightning_yellow, c_lightning_yellow, false)
		}
		else if oControl.uiState == uiLayout.review {
			if isCorrect {
				draw_circle_color(x, y + sprite_get_height(sprite_index) * 0.5, 14, c_green, c_green, false)
			}
			else {
				draw_circle_color(x, y + sprite_get_height(sprite_index) * 0.5, 14, c_red, c_red, false)
			}
		}
	}
}