/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CB13D7F
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "wall_buffer"
if(x < wall_buffer)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 66367CC7
	/// @DnDParent : 4CB13D7F
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01B6566E
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "obj_game_manager.arena_grid_width * obj_game_manager.cell_width - wall_buffer"
if(x > obj_game_manager.arena_grid_width * obj_game_manager.cell_width - wall_buffer)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1ADE38A7
	/// @DnDParent : 01B6566E
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73F5D3E2
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "wall_buffer"
if(y < wall_buffer)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6E892F26
	/// @DnDParent : 73F5D3E2
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F3B446F
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "obj_game_manager.arena_grid_height * obj_game_manager.cell_height - wall_buffer"
if(y > obj_game_manager.arena_grid_height * obj_game_manager.cell_height - wall_buffer)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3FAD7570
	/// @DnDParent : 1F3B446F
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}