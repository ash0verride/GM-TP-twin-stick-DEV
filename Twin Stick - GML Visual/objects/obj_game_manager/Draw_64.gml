/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B81AF21
/// @DnDArgument : "var" "curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 0BD3A01E
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 0B81AF21
	with(obj_player) {
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6E620DCB
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "sprite" "spr_hud_background"
		/// @DnDSaveInfo : "sprite" "spr_hud_background"
		draw_sprite(spr_hud_background, 0, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68209D79
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "var" "player_health"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(player_health >= 1)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 406EF177
			/// @DnDParent : 68209D79
			/// @DnDArgument : "x" "86"
			/// @DnDArgument : "y" "40"
			/// @DnDArgument : "sprite" "spr_hud_health"
			/// @DnDSaveInfo : "sprite" "spr_hud_health"
			draw_sprite_ext(spr_hud_health, 0, 86, 40, 1, 1, 0, $FFFFFF & $ffffff, 1);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 66B18A44
			/// @DnDParent : 68209D79
			/// @DnDArgument : "var" "player_health"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "2"
			if(player_health >= 2)
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 1E7B4E8B
				/// @DnDParent : 66B18A44
				/// @DnDArgument : "x" "235.5"
				/// @DnDArgument : "y" "40"
				/// @DnDArgument : "sprite" "spr_hud_health"
				/// @DnDSaveInfo : "sprite" "spr_hud_health"
				draw_sprite_ext(spr_hud_health, 0, 235.5, 40, 1, 1, 0, $FFFFFF & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 50494BD1
				/// @DnDParent : 66B18A44
				/// @DnDArgument : "var" "player_health"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "3"
				if(player_health >= 3)
				{
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 28C1881F
					/// @DnDParent : 50494BD1
					/// @DnDArgument : "x" "385"
					/// @DnDArgument : "y" "40"
					/// @DnDArgument : "sprite" "spr_hud_health_end"
					/// @DnDSaveInfo : "sprite" "spr_hud_health_end"
					draw_sprite_ext(spr_hud_health_end, 0, 385, 40, 1, 1, 0, $FFFFFF & $ffffff, 1);
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 32BE9569
				/// @DnDParent : 66B18A44
				else
				{
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 19456BA8
					/// @DnDParent : 32BE9569
					/// @DnDArgument : "x" "385"
					/// @DnDArgument : "y" "40"
					/// @DnDArgument : "alpha" "hud_health_alpha"
					/// @DnDArgument : "sprite" "spr_hud_health_end"
					/// @DnDSaveInfo : "sprite" "spr_hud_health_end"
					draw_sprite_ext(spr_hud_health_end, 0, 385, 40, 1, 1, 0, $FFFFFF & $ffffff, hud_health_alpha);
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1BCA5B43
			/// @DnDParent : 68209D79
			else
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 6D62DA33
				/// @DnDParent : 1BCA5B43
				/// @DnDArgument : "x" "235.5"
				/// @DnDArgument : "y" "40"
				/// @DnDArgument : "alpha" "hud_health_alpha"
				/// @DnDArgument : "sprite" "spr_hud_health"
				/// @DnDSaveInfo : "sprite" "spr_hud_health"
				draw_sprite_ext(spr_hud_health, 0, 235.5, 40, 1, 1, 0, $FFFFFF & $ffffff, hud_health_alpha);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 63A5AC96
		/// @DnDParent : 0BD3A01E
		else
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 1126E539
			/// @DnDParent : 63A5AC96
			/// @DnDArgument : "x" "86"
			/// @DnDArgument : "y" "40"
			/// @DnDArgument : "alpha" "hud_health_alpha"
			/// @DnDArgument : "sprite" "spr_hud_health"
			/// @DnDSaveInfo : "sprite" "spr_hud_health"
			draw_sprite_ext(spr_hud_health, 0, 86, 40, 1, 1, 0, $FFFFFF & $ffffff, hud_health_alpha);
		}
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 251A1C06
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "init" "_i = 0"
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "_i < player_curr_ammo"
		/// @DnDArgument : "expr" "_i++"
		for(var _i = 0; _i < player_curr_ammo; _i++) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32AA0F54
			/// @DnDParent : 251A1C06
			/// @DnDArgument : "var" "_i"
			if(_i == 0)
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2461EA0E
				/// @DnDParent : 32AA0F54
				/// @DnDArgument : "x" "18"
				/// @DnDArgument : "y" "80"
				/// @DnDArgument : "sprite" "spr_hud_ammo_start"
				/// @DnDSaveInfo : "sprite" "spr_hud_ammo_start"
				draw_sprite(spr_hud_ammo_start, 0, 18, 80);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7382E6E3
			/// @DnDParent : 251A1C06
			else
			{
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3A1B47D1
				/// @DnDParent : 7382E6E3
				/// @DnDArgument : "x" "13 + _i * 11"
				/// @DnDArgument : "y" "80"
				/// @DnDArgument : "sprite" "spr_hud_ammo"
				/// @DnDSaveInfo : "sprite" "spr_hud_ammo"
				draw_sprite(spr_hud_ammo, 0, 13 + _i * 11, 80);
			}
		}
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 1A3CB7A7
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "font" "obj_game_manager.score_font"
		draw_set_font(obj_game_manager.score_font);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7BFFF7D7
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "color" "obj_game_manager.score_colour"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour(obj_game_manager.score_colour & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 0403E664
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "alpha" "obj_game_manager.score_alpha"
		draw_set_alpha(obj_game_manager.score_alpha);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 22C3E7CA
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "halign" "obj_game_manager.score_halign"
		/// @DnDArgument : "valign" "obj_game_manager.score_valign"
		draw_set_halign(obj_game_manager.score_halign);
		draw_set_valign(obj_game_manager.score_valign);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2DD44C4C
		/// @DnDParent : 0BD3A01E
		/// @DnDArgument : "x" "room_width / 2"
		/// @DnDArgument : "y" "64"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "string(player_score)"
		draw_text(room_width / 2, 64,  + string(string(player_score)));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 185BCF18
		/// @DnDParent : 0BD3A01E
		draw_set_colour($FFFFFFFF & $ffffff);
		var l185BCF18_0=($FFFFFFFF >> 24);
		draw_set_alpha(l185BCF18_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 47F30A47
		/// @DnDParent : 0BD3A01E
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 22A686AF
	/// @DnDParent : 0B81AF21
	/// @DnDArgument : "function" "window_set_cursor"
	/// @DnDArgument : "arg" "cr_none"
	window_set_cursor(cr_none);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5CF29291
	/// @DnDParent : 0B81AF21
	/// @DnDArgument : "alpha" "0.5"
	draw_set_alpha(0.5);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17361A6A
	/// @DnDParent : 0B81AF21
	/// @DnDArgument : "var" "obj_player.is_mouse_aiming"
	/// @DnDArgument : "value" "true"
	if(obj_player.is_mouse_aiming == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 46A4A121
		/// @DnDParent : 17361A6A
		/// @DnDArgument : "x" "mouse_x - x"
		/// @DnDArgument : "y" "mouse_y - y"
		/// @DnDArgument : "sprite" "spr_crosshair"
		/// @DnDSaveInfo : "sprite" "spr_crosshair"
		draw_sprite(spr_crosshair, 0, mouse_x - x, mouse_y - y);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A168E89
	/// @DnDParent : 0B81AF21
	else
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57AAD15E
		/// @DnDInput : 2
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "var" "_offset_x"
		/// @DnDArgument : "value" "400"
		/// @DnDArgument : "var_1" "_offset_y"
		/// @DnDArgument : "value_1" "0"
		var _offset_x = 400;
		var _offset_y = 0;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E445904
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "var" "_theta"
		/// @DnDArgument : "value" "degtorad(real(obj_player.gun_angle))"
		var _theta = degtorad(real(obj_player.gun_angle));
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C4955EC
		/// @DnDInput : 2
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "var" "_crosshair_adjust_x"
		/// @DnDArgument : "value" "_offset_x * cos(_theta) - _offset_y * sin(_theta)"
		/// @DnDArgument : "var_1" "_crosshair_adjust_y"
		/// @DnDArgument : "value_1" "_offset_y * cos(_theta) + _offset_x * sin(_theta)"
		var _crosshair_adjust_x = _offset_x * cos(_theta) - _offset_y * sin(_theta);
		var _crosshair_adjust_y = _offset_y * cos(_theta) + _offset_x * sin(_theta);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30F82B59
		/// @DnDInput : 2
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "var" "_crosshair_pos_x"
		/// @DnDArgument : "value" "obj_player.x + _crosshair_adjust_x"
		/// @DnDArgument : "var_1" "_crosshair_pos_y"
		/// @DnDArgument : "value_1" "obj_player.y - _crosshair_adjust_y"
		var _crosshair_pos_x = obj_player.x + _crosshair_adjust_x;
		var _crosshair_pos_y = obj_player.y - _crosshair_adjust_y;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FF06809
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "var" "_crosshair_buffer"
		/// @DnDArgument : "value" "60"
		var _crosshair_buffer = 60;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C3115B9
		/// @DnDInput : 2
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "var" "_crosshair_pos_x"
		/// @DnDArgument : "value" "clamp(_crosshair_pos_x - x, _crosshair_buffer, room_width - _crosshair_buffer)"
		/// @DnDArgument : "var_1" "_crosshair_pos_y"
		/// @DnDArgument : "value_1" "clamp(_crosshair_pos_y - y, _crosshair_buffer, room_height - _crosshair_buffer)"
		var _crosshair_pos_x = clamp(_crosshair_pos_x - x, _crosshair_buffer, room_width - _crosshair_buffer);
		var _crosshair_pos_y = clamp(_crosshair_pos_y - y, _crosshair_buffer, room_height - _crosshair_buffer);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6B55CD53
		/// @DnDParent : 1A168E89
		/// @DnDArgument : "x" "_crosshair_pos_x"
		/// @DnDArgument : "y" "_crosshair_pos_y"
		/// @DnDArgument : "sprite" "spr_crosshair"
		/// @DnDSaveInfo : "sprite" "spr_crosshair"
		draw_sprite(spr_crosshair, 0, _crosshair_pos_x, _crosshair_pos_y);
	}

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 72992CC3
	/// @DnDParent : 0B81AF21
	draw_set_alpha(1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 04549CFB
else
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3FD59BB5
	/// @DnDParent : 04549CFB
	/// @DnDArgument : "function" "window_set_cursor"
	/// @DnDArgument : "arg" "cr_default"
	window_set_cursor(cr_default);
}