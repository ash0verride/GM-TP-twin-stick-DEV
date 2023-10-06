if(curr_game_state == GAME_STATE.PLAYING)
{		
	with (obj_player)
	{
		draw_sprite(spr_hud_background, 0, 0, 0);
			
		if (player_health >= 0)
		{
			if (player_health >= 1)
			{
				draw_sprite_ext(spr_hud_health, 0, 86, 40, 1.0, 1.0, 0, c_white, 1.0);	
				
				if (player_health >= 2)
				{
					draw_sprite_ext(spr_hud_health, 0, 237, 40, 1.0, 1.0, 0, c_white, 1.0);
					
					if (player_health >= 3)
					{
						draw_sprite_ext(spr_hud_health_end, 0, 385, 40, 1.0, 1.0, 0, c_white, 1.0);
					}
					else
					{
						draw_sprite_ext(spr_hud_health_end, 0, 385, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);
					}
				}
				else
				{
					draw_sprite_ext(spr_hud_health, 0, 237, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);	
				}
			}
			else
			{
				draw_sprite_ext(spr_hud_health, 0, 86, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);	
			}
		}
		
		for (var _i = 0; _i < player_curr_ammo; _i++)
		{
			if (_i == 0)
			{
				draw_sprite(spr_hud_ammo_start, 0, 18, 80);
			}
			else
			{
				draw_sprite(spr_hud_ammo, 0, 13 + (_i) * 11, 80);
			}
		}
			
		draw_set_font(obj_game_manager.score_font);
		draw_set_color(obj_game_manager.score_colour);
		draw_set_alpha(obj_game_manager.score_alpha);
		draw_set_halign(obj_game_manager.score_halign);
		draw_set_valign(obj_game_manager.score_valign);
		
		draw_text(room_width / 2, 64, string(player_score));
		
		draw_set_alpha(1.0);
	}
}