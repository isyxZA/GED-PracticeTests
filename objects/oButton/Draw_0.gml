if buttonActive
{
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)

	if highlight
	{ 
		gpu_set_blendmode(bm_add)
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_lightning_yellow, 1)
		gpu_set_blendmode(bm_normal)
	}
	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_font(fntButtons)
	draw_text_colour(x, y, label, c1, c1, c1, c1, 1)
}