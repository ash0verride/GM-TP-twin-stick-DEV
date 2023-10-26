/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B082F00
/// @DnDComment : // Checks if the game is playing and the enemy is not spawning
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27CAE1B3
	/// @DnDParent : 0B082F00
	/// @DnDArgument : "var" "is_spawning"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(is_spawning == true))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6BFA9F35
		/// @DnDComment : // Checks if the enemy goes either too far to the left or right of the level boundries
		/// @DnDParent : 27CAE1B3
		/// @DnDArgument : "expr" "x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer"
		if(x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 025A0733
			/// @DnDComment : // Clamps the enemy position to the levels playable width
			/// @DnDParent : 6BFA9F35
			/// @DnDArgument : "value" "clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)"
			x = clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4949BA46
			/// @DnDComment : // Looks for next nearest target
			/// @DnDParent : 6BFA9F35
			/// @DnDArgument : "function" "lock_target"
			lock_target();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E7CB5C1
			/// @DnDComment : // Sets colliding state to true
			/// @DnDParent : 6BFA9F35
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_colliding"
			is_colliding = true;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 77A88206
		/// @DnDComment : // Checks if the enemy goes either too far to the top or bottom of the level boundries
		/// @DnDParent : 27CAE1B3
		/// @DnDArgument : "expr" "y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer"
		if(y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0401F594
			/// @DnDComment : // Clamps the enemy position to the levels playable height
			/// @DnDParent : 77A88206
			/// @DnDArgument : "value" "clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)"
			/// @DnDArgument : "instvar" "1"
			y = clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4311846D
			/// @DnDComment : // Looks for next nearest target
			/// @DnDParent : 77A88206
			/// @DnDArgument : "function" "lock_target"
			lock_target();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2665D67A
			/// @DnDComment : // Sets colliding state to true
			/// @DnDParent : 77A88206
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_colliding"
			is_colliding = true;
		}
	}
}