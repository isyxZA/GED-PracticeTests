if buttonActive
{
	draw_sprite_ext(sprite_index, 0, x + animX, y + animY, image_xscale, image_yscale, 0, c_white, 1)

	if highlight
	{ 
		animX = lerp(animX, 2, 0.5)
		animY = lerp(animY, -2, 0.5)
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index, 0, x + animX, y + animY, image_xscale, image_yscale, 0, c_lightning_yellow, 1)
		gpu_set_blendmode(bm_normal)
	}
	else {
		animX = lerp(animX, 0, 0.5)
		animY = lerp(animY, 0, 0.5)
	}
	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_font(fntButtonsUI)
	draw_text_colour(x + animX, y + animY, label, c1, c1, c1, c1, 1)
}