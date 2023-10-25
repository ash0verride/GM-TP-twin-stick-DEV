/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33C15B34
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0828B174
	/// @DnDParent : 33C15B34
	/// @DnDArgument : "expr" "keyboard_check_pressed(vk_escape)"
	if(keyboard_check_pressed(vk_escape))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1E53EAED
		/// @DnDApplyTo : {obj_game_manager}
		/// @DnDParent : 0828B174
		/// @DnDArgument : "function" "resume_game"
		with(obj_game_manager) {
			resume_game();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5FCF3137
	/// @DnDParent : 33C15B34
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 110D58B7
		/// @DnDParent : 5FCF3137
		/// @DnDArgument : "var" "_max_pads"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "gamepad_get_device_count"
		var _max_pads = gamepad_get_device_count();
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 2C015768
		/// @DnDParent : 5FCF3137
		/// @DnDArgument : "init" "_i = 0"
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "_i < _max_pads"
		/// @DnDArgument : "expr" "_i++"
		for(var _i = 0; _i < _max_pads; _i++) {
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 07646A51
			/// @DnDParent : 2C015768
			/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
			if(gamepad_is_connected(_i))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 1853117F
				/// @DnDParent : 07646A51
				/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_face1) ||gamepad_button_check_pressed(_i, gp_start)"
				if(gamepad_button_check_pressed(_i, gp_face1) ||gamepad_button_check_pressed(_i, gp_start))
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 41FA5218
					/// @DnDApplyTo : {obj_game_manager}
					/// @DnDParent : 1853117F
					/// @DnDArgument : "function" "resume_game"
					with(obj_game_manager) {
						resume_game();
					}
				}
			}
		}
	}
}