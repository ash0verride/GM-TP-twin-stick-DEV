/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4B05D0A6
/// @DnDComment : // Variable stores gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "gamepad_get_device_count"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 634CFA9E
/// @DnDComment : // Loops though the gamepads
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_pads"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _max_pads; _i++) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 01926A64
	/// @DnDComment : // Checks gamepad is connected
	/// @DnDParent : 634CFA9E
	/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
	if(gamepad_is_connected(_i))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 39E054C0
		/// @DnDComment : // Checks if the Y button has been pressed
		/// @DnDParent : 01926A64
		/// @DnDArgument : "gp" "_i"
		var l39E054C0_0 = _i;
		var l39E054C0_1 = gp_face4;
		if(gamepad_is_connected(l39E054C0_0) && gamepad_button_check_released(l39E054C0_0, l39E054C0_1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 577E2626
			/// @DnDComment : // Sets the key variable to pressed
			/// @DnDParent : 39E054C0
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_pressed	"
			is_pressed	 = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B9527B7
			/// @DnDComment : // Sets the target scale
			/// @DnDParent : 39E054C0
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 0.9;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19A63661
			/// @DnDComment : // Speeds up the scale rate
			/// @DnDParent : 39E054C0
			/// @DnDArgument : "expr" "0.9"
			/// @DnDArgument : "var" "scale_rate"
			scale_rate = 0.9;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 64C318C7
			/// @DnDComment : // Plays the button pushed sound effect
			/// @DnDParent : 39E054C0
			/// @DnDArgument : "target" "_button_push"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "soundid" "snd_menu_button"
			/// @DnDSaveInfo : "soundid" "snd_menu_button"
			var _button_push = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5D742BB7
/// @DnDComment : // Checks if the image is at the target scale
/// @DnDArgument : "expr" "image_xscale != target_scale || image_yscale != target_scale"
if(image_xscale != target_scale || image_yscale != target_scale)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 23CA3CB8
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 5D742BB7
	/// @DnDArgument : "value" "lerp(image_xscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale,target_scale,scale_rate);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2595D6CA
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 5D742BB7
	/// @DnDArgument : "value" "lerp(image_yscale,target_scale,scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale,target_scale,scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BA7E729
/// @DnDComment : // Checks if the pressed state is true
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 73246FA2
	/// @DnDComment : // Checks if the button has reached its target scale
	/// @DnDParent : 0BA7E729
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0DEB712F
		/// @DnDComment : // Checks if the image scale is returned to full (1)
		/// @DnDParent : 73246FA2
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CE5F92E
			/// @DnDComment : // Checks if highscore table is showing
			/// @DnDParent : 0DEB712F
			/// @DnDArgument : "var" "obj_splash_manager.is_highscore_table"
			/// @DnDArgument : "value" "true"
			if(obj_splash_manager.is_highscore_table == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0FFF8DEA
				/// @DnDComment : // Sets highscore table to hide
				/// @DnDParent : 2CE5F92E
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "obj_splash_manager.is_highscore_table"
				obj_splash_manager.is_highscore_table = false;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 4F1FFE0D
			/// @DnDParent : 0DEB712F
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 27FCE00A
				/// @DnDComment : // Sets highscore table to show
				/// @DnDParent : 4F1FFE0D
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "obj_splash_manager.is_highscore_table"
				obj_splash_manager.is_highscore_table = true;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CD132EA
			/// @DnDComment : // Resets the buttons pressed state
			/// @DnDParent : 0DEB712F
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "is_pressed	"
			is_pressed	 = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CEB108A
			/// @DnDComment : // Resets the buttons scale rate
			/// @DnDParent : 0DEB712F
			/// @DnDArgument : "expr" "0.1"
			/// @DnDArgument : "var" "scale_rate"
			scale_rate = 0.1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 651D0C61
		/// @DnDParent : 73246FA2
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1612F629
			/// @DnDComment : // Set the target scale to full (1)
			/// @DnDParent : 651D0C61
			/// @DnDArgument : "expr" "1.0"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1.0;
		}
	}
}