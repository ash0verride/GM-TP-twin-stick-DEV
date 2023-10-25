/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2999AA7B
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 2E22B1FC
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6C3ED8F5
	/// @DnDParent : 2E22B1FC
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4C78ACF2
		/// @DnDParent : 6C3ED8F5
		/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_face1) || gamepad_button_check_pressed(_i, gp_start)"
		if(gamepad_button_check_pressed(_i, gp_face1) || gamepad_button_check_pressed(_i, gp_start))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 56DFD226
			/// @DnDParent : 4C78ACF2
			/// @DnDArgument : "room" "rm_arena"
			/// @DnDSaveInfo : "room" "rm_arena"
			room_goto(rm_arena);
		}
	}
}