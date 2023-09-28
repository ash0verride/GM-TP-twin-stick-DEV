//draw_sprite(spr_vignette, 0, 0, 0);

if(curr_game_state == GAME_STATE.PLAYING)
{
	if(curr_game_type == GAME_TYPE.SINGLE_PLAYER)
	{
		draw_set_font(score_font);
		draw_set_color(score_colour);
		draw_set_alpha(score_alpha);
		draw_set_halign(score_halign);
		draw_set_valign(score_valign);
		
		var _score_text = string(obj_player.player_score);
		draw_text(room_width / 2, 64, _score_text);
		
		draw_set_alpha(1.0);
	}
}