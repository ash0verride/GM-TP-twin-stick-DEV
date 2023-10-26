/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35A460D7
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 46A74318
	/// @DnDComment : // Calls the pause game function
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 35A460D7
	/// @DnDArgument : "function" "pause_game"
	with(obj_game_manager) {
		pause_game();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51A4303F
	/// @DnDComment : // Sets the key variable to pressed$(13_10)// Sets the target scale$(13_10)// Speeds up the scale rate
	/// @DnDInput : 3
	/// @DnDParent : 35A460D7
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "0.9"
	/// @DnDArgument : "expr_2" "0.9"
	/// @DnDArgument : "var" "is_pressed"
	/// @DnDArgument : "var_1" "target_scale"
	/// @DnDArgument : "var_2" "scale_rate"
	is_pressed = true;
	target_scale = 0.9;
	scale_rate = 0.9;
}