/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 236D4A7C
/// @DnDComment : // Checks if the game is currently paused
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 4D563BE2
	/// @DnDComment : // Checks if the escape key is pressed
	/// @DnDParent : 236D4A7C
	/// @DnDArgument : "key" "vk_escape"
	var l4D563BE2_0;
	l4D563BE2_0 = keyboard_check_pressed(vk_escape);
	if (l4D563BE2_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D3E8773
		/// @DnDComment : // Sets the key variable to pressed
		/// @DnDParent : 4D563BE2
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_pressed"
		is_pressed = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C99315D
		/// @DnDComment : // Sets the target scale
		/// @DnDParent : 4D563BE2
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DC69092
		/// @DnDComment : // Speeds up the scale rate
		/// @DnDParent : 4D563BE2
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "scale_rate"
		scale_rate = 0.9;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6602D158
	/// @DnDParent : 236D4A7C
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 75A50626
		/// @DnDComment : // Variable stores gamepad count
		/// @DnDParent : 6602D158
		/// @DnDArgument : "var" "_max_pads"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "gamepad_get_device_count"
		var _max_pads = gamepad_get_device_count();
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 359A977B
		/// @DnDComment : // Loops though the gamepads
		/// @DnDParent : 6602D158
		/// @DnDArgument : "init" "_i = 0"
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "_i < _max_pads"
		/// @DnDArgument : "expr" "_i++"
		for(var _i = 0; _i < _max_pads; _i++) {
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 083773AD
			/// @DnDComment : // Checks gamepad is connected
			/// @DnDParent : 359A977B
			/// @DnDArgument : "expr" "gamepad_is_connected(_i)"
			if(gamepad_is_connected(_i))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 383C1A21
				/// @DnDComment : // Checks if the A or start button has been pressed 
				/// @DnDParent : 083773AD
				/// @DnDArgument : "expr" "(gamepad_button_check_pressed(_i, gp_face1) || gamepad_button_check_pressed(_i, gp_start))"
				if((gamepad_button_check_pressed(_i, gp_face1) || gamepad_button_check_pressed(_i, gp_start)))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3ED036A1
					/// @DnDComment : // Sets the key variable to pressed
					/// @DnDParent : 383C1A21
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "is_pressed	"
					is_pressed	 = true;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0E86F6E2
					/// @DnDComment : // Sets the target scale
					/// @DnDParent : 383C1A21
					/// @DnDArgument : "expr" "0.9"
					/// @DnDArgument : "var" "target_scale"
					target_scale = 0.9;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 43A84E79
					/// @DnDComment : // Speeds up the scale rate
					/// @DnDParent : 383C1A21
					/// @DnDArgument : "expr" "0.9"
					/// @DnDArgument : "var" "scale_rate"
					scale_rate = 0.9;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0A34641D
	/// @DnDComment : // Checks if the image is at the target scale
	/// @DnDParent : 236D4A7C
	/// @DnDArgument : "expr" "image_xscale != target_scale || image_yscale != target_scale"
	if(image_xscale != target_scale || image_yscale != target_scale)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 30CF0EAA
		/// @DnDComment : // Lerps the scale towards the target scale
		/// @DnDParent : 0A34641D
		/// @DnDArgument : "value" "lerp(image_xscale,target_scale,scale_rate)"
		/// @DnDArgument : "instvar" "15"
		image_xscale = lerp(image_xscale,target_scale,scale_rate);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 4B3D5052
		/// @DnDComment : // Lerps the scale towards the target scale
		/// @DnDParent : 0A34641D
		/// @DnDArgument : "value" "lerp(image_yscale,target_scale,scale_rate)"
		/// @DnDArgument : "instvar" "16"
		image_yscale = lerp(image_yscale,target_scale,scale_rate);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69CFEEEB
	/// @DnDComment : // Checks if the pressed state is true
	/// @DnDParent : 236D4A7C
	/// @DnDArgument : "var" "is_pressed"
	/// @DnDArgument : "value" "true"
	if(is_pressed == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 61AB3500
		/// @DnDComment : // Checks if the button has reached its target scale
		/// @DnDParent : 69CFEEEB
		/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
		if(image_xscale == target_scale && image_yscale == target_scale)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 10656809
			/// @DnDComment : // Checks if the image scale is returned to full (1)
			/// @DnDParent : 61AB3500
			/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
			if(image_xscale == 1 && image_yscale == 1)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 40AFBCF1
				/// @DnDParent : 10656809
				/// @DnDArgument : "function" "resume_game"
				resume_game();
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 16BB2271
			/// @DnDParent : 61AB3500
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 34385F8E
				/// @DnDComment : // Set the target scale to full (1)
				/// @DnDParent : 16BB2271
				/// @DnDArgument : "expr" "1.0"
				/// @DnDArgument : "var" "target_scale"
				target_scale = 1.0;
			}
		}
	}
}