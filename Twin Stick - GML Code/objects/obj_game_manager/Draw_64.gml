// Checks the current game state is playing
if(curr_game_state == GAME_STATE.PLAYING)
{	
	// Loops through the player objects
	with (obj_player)
	{
		// Draws the hud sprite in the top left corner
		draw_sprite(spr_hud_background, 0, 0, 0);
			
		// Checks if the player health is above 0
		if (player_health >= 1)
		{
			// Draws the first health bar sprite at full strength
			draw_sprite_ext(spr_hud_health, 0, 86, 40, 1.0, 1.0, 0, c_white, 1.0);	
			
			// Checks the players health is above 1
			if (player_health >= 2)
			{
				// Draws the second health sprite at full strength
				draw_sprite_ext(spr_hud_health, 0, 237, 40, 1.0, 1.0, 0, c_white, 1.0);
				
				// Checks the players health is above 2
				if (player_health >= 3)
				{
					// Draws the third health sprite at full strength
					draw_sprite_ext(spr_hud_health_end, 0, 385, 40, 1.0, 1.0, 0, c_white, 1.0);
				}
				else
				{
					// Draws the third health sprite at fade out alpha
					draw_sprite_ext(spr_hud_health_end, 0, 385, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);
				}
			}
			else
			{
				// Draws the second health sprite at fade out alpha
				draw_sprite_ext(spr_hud_health, 0, 237, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);	
			}
		}
		else
		{
			// Draws the first health bar sprite at fade out alpha
			draw_sprite_ext(spr_hud_health, 0, 86, 40, 1.0, 1.0, 0, c_white, hud_health_alpha);	
		}

		// Loops through the current ammo count
		for (var _i = 0; _i < player_curr_ammo; _i++)
		{
			// Checks if its the first ammo
			if (_i == 0)
			{
				// Draws the starting ammo sprite
				draw_sprite(spr_hud_ammo_start, 0, 18, 80);
			}
			else
			{
				// Draws the remaining ammo sprites at offset based on the loops count
				draw_sprite(spr_hud_ammo, 0, 13 + (_i) * 11, 80);
			}
		}
		
		// Sets the draw options for the scores text
		draw_set_font(obj_game_manager.score_font);
		draw_set_color(obj_game_manager.score_colour);
		draw_set_alpha(obj_game_manager.score_alpha);
		draw_set_halign(obj_game_manager.score_halign);
		draw_set_valign(obj_game_manager.score_valign);
		
		// Draws the text
		draw_text(room_width / 2, 64, string(player_score));
		
		// Returns the draw options to defaults
		draw_set_color(c_white);
		draw_set_alpha(1.0);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
}