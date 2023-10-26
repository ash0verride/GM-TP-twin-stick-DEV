/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1C2D187E
/// @DnDComment : // Variable stores gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 73673738
/// @DnDComment : // Loops though the gamepads
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7661D2FB
	/// @DnDComment : // Checks gamepad is connected
	/// @DnDParent : 73673738
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 506E51F5
		/// @DnDComment : // Checks if the X button has been pressed
		/// @DnDParent : 7661D2FB
		/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_face2)"
		if(gamepad_button_check_pressed(_i, gp_face2))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A6FCD69
			/// @DnDComment : // Sets the key variable to pressed
			/// @DnDParent : 506E51F5
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_pressed	"
			is_pressed	 = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1665BCE5
			/// @DnDComment : // Sets the target scale
			/// @DnDParent : 506E51F5
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 0.9;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C9C0E4A
			/// @DnDComment : // Speeds up the scale rate
			/// @DnDParent : 506E51F5
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "scale_rate"
			scale_rate = 0.9;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6F716AC1
			/// @DnDComment : // Plays the button pushed sound effect
			/// @DnDParent : 506E51F5
			/// @DnDArgument : "target" "sound_button"
			/// @DnDArgument : "soundid" "snd_menu_button"
			/// @DnDSaveInfo : "soundid" "snd_menu_button"
			sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2FC92A01
/// @DnDComment : // Checks if the image is at the target scale
/// @DnDArgument : "expr" "image_xscale != target_scale || image_yscale != target_scale"
if(image_xscale != target_scale || image_yscale != target_scale)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6CD3355D
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 2FC92A01
	/// @DnDArgument : "value" "lerp(image_xscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale,target_scale,scale_rate);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 494694A1
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 2FC92A01
	/// @DnDArgument : "value" "lerp(image_yscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale,target_scale,scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E89CF57
/// @DnDComment : // Checks if the pressed state is true
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 041E7368
	/// @DnDComment : // Checks if the button has reached its target scale
	/// @DnDParent : 3E89CF57
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 120121A7
		/// @DnDComment : // Checks if the image scale is returned to full (1)
		/// @DnDParent : 041E7368
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6B11D090
			/// @DnDComment : // Checks if button sound effect has finished playing
			/// @DnDParent : 120121A7
			/// @DnDArgument : "expr" "audio_exists(sound_button)"
			/// @DnDArgument : "not" "1"
			if(!(audio_exists(sound_button)))
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 23173D52
				/// @DnDComment : // Returns to the main menu room
				/// @DnDParent : 6B11D090
				/// @DnDArgument : "room" "rm_main_menu"
				/// @DnDSaveInfo : "room" "rm_main_menu"
				room_goto(rm_main_menu);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2CA25252
		/// @DnDParent : 041E7368
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59FBCC2D
			/// @DnDComment : // Set the target scale to full (1)
			/// @DnDParent : 2CA25252
			/// @DnDArgument : "expr" "1.0"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1.0;
		}
	}
}