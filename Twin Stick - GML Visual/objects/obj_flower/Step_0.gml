/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B8A877F
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 16B6F486
	/// @DnDParent : 0B8A877F
	/// @DnDArgument : "value" "speed * speed_dropoff"
	/// @DnDArgument : "instvar" "3"
	speed = speed * speed_dropoff;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 29B66935
	/// @DnDInput : 2
	/// @DnDParent : 0B8A877F
	/// @DnDArgument : "value" "clamp(x, wall_buffer, obj_game_manager.arena_grid_width * obj_game_manager.cell_width - wall_buffer)"
	/// @DnDArgument : "value_1" "clamp(y, wall_buffer, obj_game_manager.arena_grid_height * obj_game_manager.cell_height - wall_buffer)"
	/// @DnDArgument : "instvar_1" "1"
	x = clamp(x, wall_buffer, obj_game_manager.arena_grid_width * obj_game_manager.cell_width - wall_buffer);
	y = clamp(y, wall_buffer, obj_game_manager.arena_grid_height * obj_game_manager.cell_height - wall_buffer);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60CFD64D
	/// @DnDParent : 0B8A877F
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "wall_buffer"
	if(x < wall_buffer)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5D3D5AF6
		/// @DnDParent : 60CFD64D
		/// @DnDArgument : "value" "hspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "4"
		hspeed = hspeed * -speed_dropoff;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45195A45
	/// @DnDParent : 0B8A877F
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_game_manager.arena_grid_width * obj_game_manager.cell_width - wall_buffer"
	if(x > obj_game_manager.arena_grid_width * obj_game_manager.cell_width - wall_buffer)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0E6AA128
		/// @DnDParent : 45195A45
		/// @DnDArgument : "value" "hspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "4"
		hspeed = hspeed * -speed_dropoff;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54A28AAF
	/// @DnDParent : 0B8A877F
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "wall_buffer"
	if(y < wall_buffer)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 266E9A25
		/// @DnDParent : 54A28AAF
		/// @DnDArgument : "value" "vspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "5"
		vspeed = vspeed * -speed_dropoff;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CC11D02
	/// @DnDParent : 0B8A877F
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_game_manager.arena_grid_height * obj_game_manager.cell_height - wall_buffer"
	if(y > obj_game_manager.arena_grid_height * obj_game_manager.cell_height - wall_buffer)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 60790C23
		/// @DnDParent : 3CC11D02
		/// @DnDArgument : "value" "vspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "5"
		vspeed = vspeed * -speed_dropoff;
	}
}