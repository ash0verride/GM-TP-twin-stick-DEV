/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 38D3E9DB
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0C347DE4
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7F69A25A
	/// @DnDParent : 0C347DE4
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 1792F536
		/// @DnDParent : 7F69A25A
		/// @DnDArgument : "gp" "_i"
		/// @DnDArgument : "btn" "gp_face2"
		var l1792F536_0 = _i;
		var l1792F536_1 = gp_face2;
		if(gamepad_is_connected(l1792F536_0) && gamepad_button_check_released(l1792F536_0, l1792F536_1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 33655880
			/// @DnDParent : 1792F536
			/// @DnDArgument : "room" "rm_main_menu"
			/// @DnDSaveInfo : "room" "rm_main_menu"
			room_goto(rm_main_menu);
		}
	}
}