/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 71E760C8
/// @DnDComment : // Variable stores gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 143AA939
/// @DnDComment : // Loops though the gamepads
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4083D8CB
	/// @DnDComment : // Checks gamepad is connected
	/// @DnDParent : 143AA939
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 0D1E316B
		/// @DnDComment : // Checks if the select button has been pressed 
		/// @DnDParent : 4083D8CB
		/// @DnDArgument : "gp" "_i"
		/// @DnDArgument : "btn" "gp_select"
		var l0D1E316B_0 = _i;
		var l0D1E316B_1 = gp_select;
		if(gamepad_is_connected(l0D1E316B_0) && gamepad_button_check_released(l0D1E316B_0, l0D1E316B_1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E40449E
			/// @DnDComment : // Sets the key variable to pressed
			/// @DnDParent : 0D1E316B
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_pressed	"
			is_pressed	 = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 64C2A079
			/// @DnDComment : // Sets the target scale
			/// @DnDParent : 0D1E316B
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 0.9;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5BE687E4
			/// @DnDComment : // Speeds up the scale rate
			/// @DnDParent : 0D1E316B
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "scale_rate"
			scale_rate = 0.9;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6EBD65AD
/// @DnDComment : // Checks if the image is at the target scale
/// @DnDArgument : "expr" "image_xscale != target_scale || image_yscale != target_scale"
if(image_xscale != target_scale || image_yscale != target_scale)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 69E7FFCB
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 6EBD65AD
	/// @DnDArgument : "value" "lerp(image_xscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale,target_scale,scale_rate);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 02463770
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 6EBD65AD
	/// @DnDArgument : "value" "lerp(image_yscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale,target_scale,scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 731BB752
/// @DnDComment : // Checks if the pressed state is true
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 012AEE0A
	/// @DnDComment : // Checks if the button has reached its target scale
	/// @DnDParent : 731BB752
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 48581CDF
		/// @DnDComment : // Checks if the image scale is returned to full (1)
		/// @DnDParent : 012AEE0A
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C6DC684
			/// @DnDComment : // Checks if the volume button is showing on sprite
			/// @DnDParent : 48581CDF
			/// @DnDArgument : "var" "image_index"
			if(image_index == 0)
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 196F9D4F
				/// @DnDComment : // Sets audio gain to 0
				/// @DnDParent : 6C6DC684
				/// @DnDArgument : "var" "global.audio_volume"
				global.audio_volume = 0;
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 008F2D4D
				/// @DnDComment : // Sets sprite to off state
				/// @DnDParent : 6C6DC684
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "instvar" "11"
				image_index = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 2F947A8D
			/// @DnDParent : 48581CDF
			else
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 7AFE1C71
				/// @DnDComment : // Sets audio gain to 1
				/// @DnDParent : 2F947A8D
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.audio_volume"
				global.audio_volume = 1;
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 6878098F
				/// @DnDComment : // Sets sprite to on state
				/// @DnDParent : 2F947A8D
				/// @DnDArgument : "instvar" "11"
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 4F1CB341
				/// @DnDComment : // Plays button pushed sfx
				/// @DnDParent : 2F947A8D
				/// @DnDArgument : "target" "_button_push"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "soundid" "snd_menu_button"
				/// @DnDSaveInfo : "soundid" "snd_menu_button"
				var _button_push = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
			}
		
			/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 2579961B
			/// @DnDComment : // Sets the master gain to audio volume variable
			/// @DnDParent : 48581CDF
			/// @DnDArgument : "volume" "global.audio_volume"
			audio_set_master_gain(0, global.audio_volume);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7555AE00
			/// @DnDComment : // Resets the buttons pressed state
			/// @DnDParent : 48581CDF
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "is_pressed	"
			is_pressed	 = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E226CB8
			/// @DnDComment : // Resets the buttons scale rate
			/// @DnDParent : 48581CDF
			/// @DnDArgument : "expr" "0.1"
			/// @DnDArgument : "var" "scale_rate"
			scale_rate = 0.1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 38F06A40
		/// @DnDParent : 012AEE0A
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C58DF2A
			/// @DnDComment : // Set the target scale to full (1)
			/// @DnDParent : 38F06A40
			/// @DnDArgument : "expr" "1.0"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1.0;
		}
	}
}