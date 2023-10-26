/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 59979477
/// @DnDComment : // Variable stores gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3716A96D
/// @DnDComment : // Loops though the gamepads
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 24C2FD83
	/// @DnDComment : // Checks gamepad is connected
	/// @DnDParent : 3716A96D
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 13618E6D
		/// @DnDComment : // Checks if the A button has been pressed 
		/// @DnDParent : 24C2FD83
		/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_face1)"
		if(gamepad_button_check_pressed(_i, gp_face1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 495A05D0
			/// @DnDComment : // Sets the key variable to pressed
			/// @DnDParent : 13618E6D
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_pressed	"
			is_pressed	 = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0884A8CD
			/// @DnDComment : // Sets the target scale
			/// @DnDParent : 13618E6D
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 0.9;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 170055C8
			/// @DnDComment : // Speeds up the scale rate
			/// @DnDParent : 13618E6D
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "scale_rate"
			scale_rate = 0.9;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7ACB8DE6
			/// @DnDComment : // Plays the button pushed sound effect
			/// @DnDParent : 13618E6D
			/// @DnDArgument : "target" "sound_button"
			/// @DnDArgument : "soundid" "snd_menu_button"
			/// @DnDSaveInfo : "soundid" "snd_menu_button"
			sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 771FFE66
/// @DnDComment : // Checks if the image is at the target scale
/// @DnDArgument : "expr" "image_xscale != target_scale || image_yscale != target_scale"
if(image_xscale != target_scale || image_yscale != target_scale)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3FBC4018
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 771FFE66
	/// @DnDArgument : "value" "lerp(image_xscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale,target_scale,scale_rate);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 049B30B5
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 771FFE66
	/// @DnDArgument : "value" "lerp(image_yscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale,target_scale,scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BF40680
/// @DnDComment : // Checks if the pressed state is true
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0A4AA680
	/// @DnDComment : // Checks if the button has reached its target scale
	/// @DnDParent : 0BF40680
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 43B5C375
		/// @DnDComment : // Checks if the image scale is returned to full (1)
		/// @DnDParent : 0A4AA680
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 3030EDC4
			/// @DnDComment : // Checks if button sound effect has finished playing
			/// @DnDParent : 43B5C375
			/// @DnDArgument : "expr" "audio_exists(sound_button)"
			/// @DnDArgument : "not" "1"
			if(!(audio_exists(sound_button)))
			{
				/// @DnDAction : YoYo Games.Rooms.Restart_Room
				/// @DnDVersion : 1
				/// @DnDHash : 5E8557A4
				/// @DnDComment : // Restarts the current room
				/// @DnDParent : 3030EDC4
				room_restart();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4CEBAF77
		/// @DnDParent : 0A4AA680
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0798C6E9
			/// @DnDComment : // Set the target scale to full (1)
			/// @DnDParent : 4CEBAF77
			/// @DnDArgument : "expr" "1.0"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1.0;
		}
	}
}