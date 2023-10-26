/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3090AD2D
/// @DnDComment : // Checks the game is not paused
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4BBCDAEF
	/// @DnDComment : // Checks player is still in play area
	/// @DnDParent : 3090AD2D
	/// @DnDArgument : "expr" "x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer"
	if(x < wall_buffer || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5A4F30FB
		/// @DnDComment : // Clamps players position to play area
		/// @DnDParent : 4BBCDAEF
		/// @DnDArgument : "value" "clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer)"
		x = clamp(x, wall_buffer, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - wall_buffer);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 1845215A
		/// @DnDComment : // Bounces against wall
		/// @DnDParent : 4BBCDAEF
		/// @DnDArgument : "value" "hspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "4"
		hspeed = hspeed * -speed_dropoff;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1ED40897
	/// @DnDParent : 3090AD2D
	/// @DnDArgument : "expr" "y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer"
	if(y < wall_buffer || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5A3E4BE4
		/// @DnDComment : // Clamps players position to play area
		/// @DnDParent : 1ED40897
		/// @DnDArgument : "value" "clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer)"
		/// @DnDArgument : "instvar" "1"
		y = clamp(y, wall_buffer, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - wall_buffer);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5538B260
		/// @DnDComment : // Bounces against wall
		/// @DnDParent : 1ED40897
		/// @DnDArgument : "value" "vspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "5"
		vspeed = vspeed * -speed_dropoff;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69A594C2
	/// @DnDComment : // Updates previous mouse positions
	/// @DnDInput : 2
	/// @DnDParent : 3090AD2D
	/// @DnDArgument : "expr" "mouse_x"
	/// @DnDArgument : "expr_1" "mouse_y"
	/// @DnDArgument : "var" "mouse_prev_x"
	/// @DnDArgument : "var_1" "mouse_prev_y"
	mouse_prev_x = mouse_x;
	mouse_prev_y = mouse_y;
}