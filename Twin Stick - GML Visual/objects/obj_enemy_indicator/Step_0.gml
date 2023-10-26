/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DC3382A
/// @DnDComment : // Checks if game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6F3F51CD
	/// @DnDComment : // Checks if the enemy target exists
	/// @DnDParent : 2DC3382A
	/// @DnDArgument : "obj" "target"
	var l6F3F51CD_0 = false;
	l6F3F51CD_0 = instance_exists(target);
	if(l6F3F51CD_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3731C842
		/// @DnDComment : // Sets the clamped x position to the target position 
		/// @DnDInput : 2
		/// @DnDParent : 6F3F51CD
		/// @DnDArgument : "expr" "target.x - x"
		/// @DnDArgument : "expr_1" "target.y - y"
		/// @DnDArgument : "var" "clamped_x"
		/// @DnDArgument : "var_1" "clamped_y"
		clamped_x = target.x - x;
		clamped_y = target.y - y;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B8B08A2
		/// @DnDComment : // Clamps the positions from the buffer and room size
		/// @DnDInput : 2
		/// @DnDParent : 6F3F51CD
		/// @DnDArgument : "expr" "clamp(clamped_x, wall_buffer, room_width - wall_buffer)"
		/// @DnDArgument : "expr_1" "clamp(clamped_y, wall_buffer, room_height - wall_buffer)"
		/// @DnDArgument : "var" "clamped_x"
		/// @DnDArgument : "var_1" "clamped_y"
		clamped_x = clamp(clamped_x, wall_buffer, room_width - wall_buffer);
		clamped_y = clamp(clamped_y, wall_buffer, room_height - wall_buffer);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58447E53
		/// @DnDComment : // Sets the direction from the room center and the clamped x and y positions
		/// @DnDParent : 6F3F51CD
		/// @DnDArgument : "expr" "point_direction(room_width / 2, room_height / 2, clamped_x, clamped_y)"
		/// @DnDArgument : "var" "target_direction"
		target_direction = point_direction(room_width / 2, room_height / 2, clamped_x, clamped_y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 796B94B5
		/// @DnDComment : // Sets the alpha target to the distance devided by a cell with a maximum value of 0.9
		/// @DnDParent : 6F3F51CD
		/// @DnDArgument : "expr" "min(point_distance(x + clamped_x, y + clamped_y, target.x, target.y) / (obj_game_manager.cell_width + obj_game_manager.cell_height), 0.9)"
		/// @DnDArgument : "var" "target_alpha"
		target_alpha = min(point_distance(x + clamped_x, y + clamped_y, target.x, target.y) / (obj_game_manager.cell_width + obj_game_manager.cell_height), 0.9);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FC8723A
		/// @DnDComment : // Checks if the target alpha is above the current alpha
		/// @DnDParent : 6F3F51CD
		/// @DnDArgument : "var" "target_alpha"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "curr_alpha"
		if(target_alpha > curr_alpha)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 36190E47
			/// @DnDComment : // Lerps slowly
			/// @DnDParent : 2FC8723A
			/// @DnDArgument : "expr" "lerp(curr_alpha, target_alpha, 0.05)"
			/// @DnDArgument : "var" "curr_alpha"
			curr_alpha = lerp(curr_alpha, target_alpha, 0.05);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4C2535F6
		/// @DnDComment : // Lerps fast
		/// @DnDParent : 6F3F51CD
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 34B05BBC
			/// @DnDParent : 4C2535F6
			/// @DnDArgument : "expr" "lerp(curr_alpha, target_alpha, 0.9)"
			/// @DnDArgument : "var" "curr_alpha"
			curr_alpha = lerp(curr_alpha, target_alpha, 0.9);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 71639BF7
	/// @DnDParent : 2DC3382A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 502434CB
		/// @DnDComment : // Sets the target alpha to 0
		/// @DnDParent : 71639BF7
		/// @DnDArgument : "var" "target_alpha"
		target_alpha = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2061AB4C
		/// @DnDComment : // Lerps alpha to target fast
		/// @DnDParent : 71639BF7
		/// @DnDArgument : "expr" "lerp(curr_alpha, target_alpha, 0.5)"
		/// @DnDArgument : "var" "curr_alpha"
		curr_alpha = lerp(curr_alpha, target_alpha, 0.5);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6ED4680A
		/// @DnDComment : // Checks if the alpha is now invisible
		/// @DnDParent : 71639BF7
		/// @DnDArgument : "var" "curr_alpha"
		/// @DnDArgument : "op" "3"
		if(curr_alpha <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5C7F0CF4
			/// @DnDComment : // Destroys the object
			/// @DnDParent : 6ED4680A
			instance_destroy();
		}
	}
}