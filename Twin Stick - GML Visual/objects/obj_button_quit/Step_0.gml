/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
/// @DnDVersion : 1
/// @DnDHash : 322C4C95
/// @DnDComment : // Variable stores gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
var l322C4C95_0 = gamepad_get_device_count();
var l322C4C95_1 = 0;
for(var l322C4C95_2 = 0; l322C4C95_2 < l322C4C95_0; ++l322C4C95_2) {
	if(gamepad_is_connected(l322C4C95_2)) { ++l322C4C95_1; }
}
var _max_pads = l322C4C95_1;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 205A3A70
/// @DnDComment : // Loops through game pads
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6246E18E
	/// @DnDComment : // Checks if game pad is connected
	/// @DnDParent : 205A3A70
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C837898
		/// @DnDComment : // Checks if the B button has been pressed
		/// @DnDParent : 6246E18E
		/// @DnDArgument : "gp" "_i"
		/// @DnDArgument : "btn" "gp_face2"
		var l6C837898_0 = _i;
		var l6C837898_1 = gp_face2;
		if(gamepad_is_connected(l6C837898_0) && gamepad_button_check_released(l6C837898_0, l6C837898_1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25DF457C
			/// @DnDComment : // Sets pressed state to true$(13_10)// Sets target scale$(13_10)// Speeds up the scaling rate
			/// @DnDInput : 3
			/// @DnDParent : 6C837898
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
			/// @DnDHash : 726BE304
			/// @DnDComment : // Plays the button pushed sound effect
			/// @DnDParent : 6C837898
			/// @DnDArgument : "target" "sound_button"
			/// @DnDArgument : "soundid" "snd_menu_button"
			/// @DnDSaveInfo : "soundid" "snd_menu_button"
			sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A2A3EEE
/// @DnDComment : // Checks if the images scale has not reached its target scale
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_xscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2CEBEBDB
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 1A2A3EEE
	/// @DnDArgument : "value" "lerp(image_xscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F938794
/// @DnDComment : // Checks if the images scale has not reached its target scale
/// @DnDArgument : "var" "image_yscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_yscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1B8756B9
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 4F938794
	/// @DnDArgument : "value" "lerp(image_yscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1399CB60
/// @DnDComment : // Checks if pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 337C7FC3
	/// @DnDComment : // Checks if image scale has reached target scale
	/// @DnDParent : 1399CB60
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 16D14068
		/// @DnDComment : // Checks if scale is 100%
		/// @DnDParent : 337C7FC3
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 582B91C5
			/// @DnDComment : // Checks if button sound effect has finished playing
			/// @DnDParent : 16D14068
			/// @DnDArgument : "var" "audio_exists(sound_button)"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "true"
			if(!(audio_exists(sound_button) == true))
			{
				/// @DnDAction : YoYo Games.Game.End_Game
				/// @DnDVersion : 1
				/// @DnDHash : 436E44B3
				/// @DnDComment : // Closes game
				/// @DnDParent : 582B91C5
				game_end();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2238D576
		/// @DnDParent : 337C7FC3
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11BD005E
			/// @DnDComment : // Sets target scale to 100%
			/// @DnDParent : 2238D576
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1;
		}
	}
}