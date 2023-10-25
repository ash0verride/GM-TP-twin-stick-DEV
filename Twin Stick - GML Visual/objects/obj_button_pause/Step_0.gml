/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 44135536
/// @DnDArgument : "value" "camera_get_view_x(view_camera[0]) + 1870"
x = camera_get_view_x(view_camera[0]) + 1870;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0BBECA7E
/// @DnDArgument : "value" "camera_get_view_y(view_camera[0]) + 50"
/// @DnDArgument : "instvar" "1"
y = camera_get_view_y(view_camera[0]) + 50;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29B3BC51
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1F58BAB8
	/// @DnDParent : 29B3BC51
	/// @DnDArgument : "expr" "obj_game_manager.was_paused"
	/// @DnDArgument : "not" "1"
	if(!(obj_game_manager.was_paused))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3C97C4F5
		/// @DnDParent : 1F58BAB8
		/// @DnDArgument : "expr" "keyboard_check_pressed(vk_escape)"
		if(keyboard_check_pressed(vk_escape))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 794E2C12
			/// @DnDApplyTo : {obj_game_manager}
			/// @DnDParent : 3C97C4F5
			/// @DnDArgument : "function" "pause_game"
			with(obj_game_manager) {
				pause_game();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 223F74C5
		/// @DnDParent : 1F58BAB8
		else
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 11ED908C
			/// @DnDParent : 223F74C5
			/// @DnDArgument : "var" "_max_pads"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "gamepad_get_device_count"
			var _max_pads = gamepad_get_device_count();
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 57E93236
			/// @DnDParent : 223F74C5
			/// @DnDArgument : "init" "_i = 0"
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "_i < _max_pads"
			/// @DnDArgument : "expr" "_i++"
			for(var _i = 0; _i < _max_pads; _i++) {
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6A3F737C
				/// @DnDParent : 57E93236
				/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
				if(gamepad_is_connected(_i))
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 3C84471C
					/// @DnDParent : 6A3F737C
					/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_start)"
					if(gamepad_button_check_pressed(_i, gp_start))
					{
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 61117038
						/// @DnDApplyTo : {obj_game_manager}
						/// @DnDParent : 3C84471C
						/// @DnDArgument : "function" "pause_game"
						with(obj_game_manager) {
							pause_game();
						}
					}
				}
			}
		}
	}
}