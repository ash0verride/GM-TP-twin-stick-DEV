/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E046CB9
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D171D71
	/// @DnDParent : 6E046CB9
	/// @DnDArgument : "var" "is_spawning"
	/// @DnDArgument : "value" "true"
	if(is_spawning == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 370C0921
		/// @DnDParent : 7D171D71
		/// @DnDArgument : "value" "1.5"
		/// @DnDArgument : "instvar" "3"
		speed = 1.5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1B63B2BE
	/// @DnDParent : 6E046CB9
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C68E395
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_colliding"
		is_colliding = true;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 20F3CD59
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "function" "find_path"
		find_path();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71CC3007
		/// @DnDInput : 3
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "var" "_enemy_dist"
		/// @DnDArgument : "value" "point_distance(x, y, other.x, other.y)"
		/// @DnDArgument : "var_1" "_enemy_dir"
		/// @DnDArgument : "value_1" "point_direction(other.x, other.y, x, y)"
		/// @DnDArgument : "var_2" "_buff"
		/// @DnDArgument : "value_2" "195"
		var _enemy_dist = point_distance(x, y, other.x, other.y);
		var _enemy_dir = point_direction(other.x, other.y, x, y);
		var _buff = 195;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05563EA0
		/// @DnDInput : 2
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "var" "_repulse_x"
		/// @DnDArgument : "value" "lengthdir_x(clamp(1 - _enemy_dist / _buff, 0, 1), _enemy_dir) * _buff"
		/// @DnDArgument : "var_1" "_repulse_y"
		/// @DnDArgument : "value_1" "lengthdir_y(clamp(1 - _enemy_dist / _buff, 0, 1), _enemy_dir) * _buff"
		var _repulse_x = lengthdir_x(clamp(1 - _enemy_dist / _buff, 0, 1), _enemy_dir) * _buff;
		var _repulse_y = lengthdir_y(clamp(1 - _enemy_dist / _buff, 0, 1), _enemy_dir) * _buff;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 126F0B87
		/// @DnDInput : 2
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "var" "_adjusted_speed_x"
		/// @DnDArgument : "value" "lerp(hspeed, hspeed + _repulse_x, repulse_rate) * speed_dropoff"
		/// @DnDArgument : "var_1" "_adjusted_speed_y"
		/// @DnDArgument : "value_1" "lerp(vspeed, vspeed + _repulse_y, repulse_rate) * speed_dropoff"
		var _adjusted_speed_x = lerp(hspeed, hspeed + _repulse_x, repulse_rate) * speed_dropoff;
		var _adjusted_speed_y = lerp(vspeed, vspeed + _repulse_y, repulse_rate) * speed_dropoff;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 397A5492
		/// @DnDInput : 2
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "value" "lerp(x, x + _adjusted_speed_x, 0.5)"
		/// @DnDArgument : "value_1" "lerp(y, y + _adjusted_speed_y, 0.5)"
		/// @DnDArgument : "instvar_1" "1"
		x = lerp(x, x + _adjusted_speed_x, 0.5);
		y = lerp(y, y + _adjusted_speed_y, 0.5);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 05F357B0
		/// @DnDParent : 1B63B2BE
		/// @DnDArgument : "value" "speed * speed_dropoff"
		/// @DnDArgument : "instvar" "3"
		speed = speed * speed_dropoff;
	}
}