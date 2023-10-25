/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
/// @DnDVersion : 1
/// @DnDHash : 7B0B430E
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
var l7B0B430E_0 = gamepad_get_device_count();
var l7B0B430E_1 = 0;
for(var l7B0B430E_2 = 0; l7B0B430E_2 < l7B0B430E_0; ++l7B0B430E_2) {
	if(gamepad_is_connected(l7B0B430E_2)) { ++l7B0B430E_1; }
}
var _max_pads = l7B0B430E_1;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 4B235070
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
	/// @DnDVersion : 1
	/// @DnDHash : 43FB4611
	/// @DnDParent : 4B235070
	/// @DnDArgument : "var" "_connected"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "gp" "_i"
	var _connected = gamepad_is_connected(_i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66FA9EF2
	/// @DnDParent : 4B235070
	/// @DnDArgument : "var" "_connected"
	/// @DnDArgument : "value" "true"
	if(_connected == true)
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 1CD0994E
		/// @DnDParent : 66FA9EF2
		/// @DnDArgument : "gp" "_i"
		var l1CD0994E_0 = _i;
		var l1CD0994E_1 = gp_face4;
		if(gamepad_is_connected(l1CD0994E_0) && gamepad_button_check_released(l1CD0994E_0, l1CD0994E_1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6BEC46CD
			/// @DnDInput : 3
			/// @DnDParent : 1CD0994E
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "0.9"
			/// @DnDArgument : "expr_2" "0.9"
			/// @DnDArgument : "var" "is_pressed"
			/// @DnDArgument : "var_1" "target_scale"
			/// @DnDArgument : "var_2" "scale_rate"
			is_pressed = true;
			target_scale = 0.9;
			scale_rate = 0.9;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 45784FB1
			/// @DnDParent : 1CD0994E
			/// @DnDArgument : "target" "sound_button"
			/// @DnDArgument : "soundid" "snd_menu_button"
			/// @DnDSaveInfo : "soundid" "snd_menu_button"
			sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38383C6D
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_xscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6BA135DE
	/// @DnDParent : 38383C6D
	/// @DnDArgument : "value" "lerp(image_xscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 534C439B
/// @DnDArgument : "var" "image_yscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_yscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0CF9BD98
	/// @DnDParent : 534C439B
	/// @DnDArgument : "value" "lerp(image_yscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1426F0CA
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EE2BAA2
	/// @DnDParent : 1426F0CA
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "value" "target_scale"
	if(image_xscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6ECA1A0A
		/// @DnDParent : 2EE2BAA2
		/// @DnDArgument : "var" "image_yscale"
		/// @DnDArgument : "value" "target_scale"
		if(image_yscale == target_scale)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5B629919
			/// @DnDParent : 6ECA1A0A
			/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
			if(image_xscale == 1 && image_yscale == 1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2317592E
				/// @DnDParent : 5B629919
				/// @DnDArgument : "expr" "!obj_splash_manager.is_highscore_table"
				/// @DnDArgument : "var" "obj_splash_manager.is_highscore_table"
				obj_splash_manager.is_highscore_table = !obj_splash_manager.is_highscore_table;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 045F976A
				/// @DnDInput : 2
				/// @DnDParent : 5B629919
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "0.1"
				/// @DnDArgument : "var" "is_pressed"
				/// @DnDArgument : "var_1" "scale_rate"
				is_pressed = false;
				scale_rate = 0.1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6FC8C32A
			/// @DnDParent : 6ECA1A0A
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 20936DAC
				/// @DnDParent : 6FC8C32A
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "target_scale"
				target_scale = 1;
			}
		}
	}
}