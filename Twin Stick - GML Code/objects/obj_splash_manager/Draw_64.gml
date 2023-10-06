if (is_highscore_table)
{
	highscores_alpha_target = 1.0;	
}
else
{
	highscores_alpha_target = 0.0;
}

highscores_alpha = lerp(highscores_alpha, highscores_alpha_target, 0.1);

if (highscores_alpha != 0.0)
{
	draw_set_color(c_black);
	draw_set_alpha(0.6 * highscores_alpha);
	draw_rectangle((room_width / 4), (room_height / 8) - 20, (room_width / 4) * 3, ((room_height / 8) * 6) + 20, false);
	draw_set_alpha(1.0 * highscores_alpha);
	
	draw_set_font(font_1);
	draw_set_color(colour);
	draw_set_halign(halign);
	draw_set_valign(valign);

	draw_text(room_width / 2, room_height / 5, text);

	draw_set_font(font_2);

	for (var _i = 0; _i < 10; _i++)
	{
		draw_text(room_width / 2, room_height / 3 + (48 * _i), highscores[_i]);
	}
	
	draw_set_alpha(1.0);
}
