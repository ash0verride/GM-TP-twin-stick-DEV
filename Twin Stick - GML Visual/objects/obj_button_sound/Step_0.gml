/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 71E760C8
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 143AA939
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4083D8CB
	/// @DnDParent : 143AA939
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1B8355DC
		/// @DnDParent : 4083D8CB
		/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_select)"
		if(gamepad_button_check_pressed(_i, gp_select))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6AF01B25
			/// @DnDParent : 1B8355DC
			/// @DnDArgument : "var" "image_index"
			if(image_index == 0)
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 4153AD3F
				/// @DnDParent : 6AF01B25
				/// @DnDArgument : "var" "audio_volume"
				global.audio_volume = 0;
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 0A1388E3
				/// @DnDParent : 6AF01B25
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "instvar" "11"
				image_index = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6AA12330
			/// @DnDParent : 1B8355DC
			else
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 41326B5F
				/// @DnDParent : 6AA12330
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "audio_volume"
				global.audio_volume = 1;
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 187DC6B5
				/// @DnDParent : 6AA12330
				/// @DnDArgument : "instvar" "11"
				image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 6E8016D8
			/// @DnDParent : 1B8355DC
			/// @DnDArgument : "volume" "global.audio_volume"
			audio_set_master_gain(0, global.audio_volume);
		}
	}
}