/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 44135536
/// @DnDComment : // Updates pause button positions based on camera position and offsets
/// @DnDArgument : "value" "camera_get_view_x(view_camera[0]) + 1870"
x = camera_get_view_x(view_camera[0]) + 1870;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0BBECA7E
/// @DnDArgument : "value" "camera_get_view_y(view_camera[0]) + 50"
/// @DnDArgument : "instvar" "1"
y = camera_get_view_y(view_camera[0]) + 50;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F58BAB8
/// @DnDComment : // Checks if the game is playing and wasnt paused
/// @DnDArgument : "expr" "obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !obj_game_manager.was_paused"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !obj_game_manager.was_paused)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3C97C4F5
	/// @DnDComment : // Checks if the escape button has been pressed
	/// @DnDParent : 1F58BAB8
	/// @DnDArgument : "expr" "keyboard_check_pressed(vk_escape)"
	if(keyboard_check_pressed(vk_escape))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 794E2C12
		/// @DnDComment : // Calls the pause game function
		/// @DnDApplyTo : {obj_game_manager}
		/// @DnDParent : 3C97C4F5
		/// @DnDArgument : "function" "pause_game"
		with(obj_game_manager) {
			pause_game();
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E38C938
		/// @DnDComment : // Sets pressed state to true$(13_10)// Sets target scale$(13_10)// Speeds up the scaling rate
		/// @DnDInput : 3
		/// @DnDParent : 3C97C4F5
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "0.9"
		/// @DnDArgument : "expr_2" "0.9"
		/// @DnDArgument : "var" "is_pressed"
		/// @DnDArgument : "var_1" "target_scale"
		/// @DnDArgument : "var_2" "scale_rate"
		is_pressed = true;
		target_scale = 0.9;
		scale_rate = 0.9;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 223F74C5
	/// @DnDParent : 1F58BAB8
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 11ED908C
		/// @DnDParent : 223F74C5
		/// @DnDArgument : "var" "_max_pads"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "gamepad_get_device_count"
		var _max_pads = gamepad_get_device_count();
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 57E93236
		/// @DnDParent : 223F74C5
		/// @DnDArgument : "init" "_i = 0"
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "_i < _max_pads"
		/// @DnDArgument : "expr" "_i++"
		for(var _i = 0; _i < _max_pads; _i++) {
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6A3F737C
			/// @DnDParent : 57E93236
			/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
			if(gamepad_is_connected(_i))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3C84471C
				/// @DnDParent : 6A3F737C
				/// @DnDArgument : "expr" "gamepad_button_check_pressed(_i, gp_start)"
				if(gamepad_button_check_pressed(_i, gp_start))
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 61117038
					/// @DnDApplyTo : {obj_game_manager}
					/// @DnDParent : 3C84471C
					/// @DnDArgument : "function" "pause_game"
					with(obj_game_manager) {
						pause_game();
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 17F8D589
					/// @DnDComment : // Sets pressed state to true$(13_10)// Sets target scale$(13_10)// Speeds up the scaling rate
					/// @DnDInput : 3
					/// @DnDParent : 3C84471C
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "expr_1" "0.9"
					/// @DnDArgument : "expr_2" "0.9"
					/// @DnDArgument : "var" "is_pressed"
					/// @DnDArgument : "var_1" "target_scale"
					/// @DnDArgument : "var_2" "scale_rate"
					is_pressed = true;
					target_scale = 0.9;
					scale_rate = 0.9;
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AD0BF16
/// @DnDComment : // Checks if the images scale has not reached its target scale
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_xscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 73B0850F
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 6AD0BF16
	/// @DnDArgument : "value" "lerp(image_xscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "15"
	image_xscale = lerp(image_xscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F07BD0F
/// @DnDComment : // Checks if the images scale has not reached its target scale
/// @DnDArgument : "var" "image_yscale"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "target_scale"
if(!(image_yscale == target_scale))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 55E36A6A
	/// @DnDComment : // Lerps the scale towards the target scale
	/// @DnDParent : 0F07BD0F
	/// @DnDArgument : "value" "lerp(image_yscale, target_scale, scale_rate)"
	/// @DnDArgument : "instvar" "16"
	image_yscale = lerp(image_yscale, target_scale, scale_rate);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40CCD950
/// @DnDComment : // Checks if pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1038F5D4
	/// @DnDComment : // Checks if image scale has reached target scale
	/// @DnDParent : 40CCD950
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5B1D3388
		/// @DnDComment : // Checks if scale is 100%
		/// @DnDParent : 1038F5D4
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4266D19B
			/// @DnDComment : // Resets the buttons pressed state$(13_10)// Resets the buttons scale rate
			/// @DnDInput : 2
			/// @DnDParent : 5B1D3388
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "0.1"
			/// @DnDArgument : "var" "is_pressed"
			/// @DnDArgument : "var_1" "scale_rate"
			is_pressed = false;
			scale_rate = 0.1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7F731CA8
		/// @DnDParent : 1038F5D4
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2030C1FE
			/// @DnDComment : // Sets target scale to 100%
			/// @DnDParent : 7F731CA8
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1;
		}
	}
}