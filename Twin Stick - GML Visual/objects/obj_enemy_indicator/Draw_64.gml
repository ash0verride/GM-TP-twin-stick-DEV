/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42A1A0A2
/// @DnDComment : // Checks if the game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1D141AB4
	/// @DnDComment : // Draws the indicator sprite at the clamped positions with the correct alpha value pointing at the enemy
	/// @DnDParent : 42A1A0A2
	/// @DnDArgument : "x" "clamped_x"
	/// @DnDArgument : "y" "clamped_y"
	/// @DnDArgument : "rot" "target_direction"
	/// @DnDArgument : "alpha" "curr_alpha"
	/// @DnDArgument : "sprite" "spr_enemy_indicator"
	/// @DnDSaveInfo : "sprite" "spr_enemy_indicator"
	draw_sprite_ext(spr_enemy_indicator, 0, clamped_x, clamped_y, 1, 1, target_direction, $FFFFFF & $ffffff, curr_alpha);
}