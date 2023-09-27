if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	draw_self();

	draw_set_font(font_1);
	draw_set_color(colour_1);
	draw_set_alpha(image_alpha);
	draw_set_halign(halign);
	draw_set_valign(valign);
	
	draw_text_transformed(x, y - 64, text_1, image_xscale, image_yscale, image_angle)

	draw_set_font(font_2);
	draw_set_color(colour_2);
	draw_set_alpha(image_alpha);
	
	draw_text_transformed(x, y + 32, text_2, image_xscale, image_yscale, image_angle)
}