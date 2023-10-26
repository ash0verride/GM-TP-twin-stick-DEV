/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
/// @DnDVersion : 1
/// @DnDHash : 5BC79646
/// @DnDComment : // Variable stores gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
var l5BC79646_0 = gamepad_get_device_count();
var l5BC79646_1 = 0;
for(var l5BC79646_2 = 0; l5BC79646_2 < l5BC79646_0; ++l5BC79646_2) {
	if(gamepad_is_connected(l5BC79646_2)) { ++l5BC79646_1; }
}
var _max_pads = l5BC79646_1;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 4BBE15C7
/// @DnDComment : // Loops through game pads
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 11483A6B
	/// @DnDComment : // Checks if game pad is connected
	/// @DnDParent : 4BBE15C7
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0B50B82C
		/// @DnDComment : // Checks if the A or start button has been pressed
		/// @DnDParent : 11483A6B
		/// @DnDArgument : "expr" "gamepad_button_check_released(_i, gp_face1) || gamepad_button_check_released(_i, gp_start)"
		if(gamepad_button_check_released(_i, gp_face1) || gamepad_button_check_released(_i, gp_start))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CA6785C
			/// @DnDComment : // Sets pressed state to true$(13_10)// Sets target scale$(13_10)// Speeds up the scaling rate
			/// @DnDInput : 3
			/// @DnDParent : 0B50B82C
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
			/// @DnDHash : 5BA120FC
			/// @DnDComment : // Plays the button pushed sound effect
			/// @DnDParent : 0B50B82C
			/// @DnDArgument : "target" "sound_button"
			/// @DnDArgument : "soundid" "snd_menu_button"
			/// @DnDSaveInfo : "soundid" "snd_menu_button"
			sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 6A95B101
			/// @DnDComment : // Sets global mouse aiming state to false since gamepad input
			/// @DnDParent : 0B50B82C
			/// @DnDArgument : "value" "false"
			/// @DnDArgument : "var" "global.is_mouse_aiming"
			global.is_mouse_aiming = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75A496AE
/// @DnDComment : // Checks if the images scale has not reached its target scale
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_xscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 74365855
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 75A496AE
	/// @DnDArgument : "value" "lerp(image_xscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0680F611
/// @DnDComment : // Checks if the images scale has not reached its target scale
/// @DnDArgument : "var" "image_yscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_yscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5BD10212
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 0680F611
	/// @DnDArgument : "value" "lerp(image_yscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EBB0117
/// @DnDComment : // Checks if pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 00ACFB8A
	/// @DnDComment : // Checks if image scale has reached target scale
	/// @DnDParent : 3EBB0117
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 360A7D41
		/// @DnDComment : // Checks if scale is 100%
		/// @DnDParent : 00ACFB8A
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F8E94FF
			/// @DnDComment : // Checks if button sound effect has finished playing
			/// @DnDParent : 360A7D41
			/// @DnDArgument : "var" "audio_exists(sound_button)"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "true"
			if(!(audio_exists(sound_button) == true))
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 548D2B65
				/// @DnDComment : // Goes to arena room
				/// @DnDParent : 4F8E94FF
				/// @DnDArgument : "room" "rm_arena"
				/// @DnDSaveInfo : "room" "rm_arena"
				room_goto(rm_arena);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0A808585
		/// @DnDParent : 00ACFB8A
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37540DCC
			/// @DnDComment : // Sets target scale to 100%
			/// @DnDParent : 0A808585
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1;
		}
	}
}