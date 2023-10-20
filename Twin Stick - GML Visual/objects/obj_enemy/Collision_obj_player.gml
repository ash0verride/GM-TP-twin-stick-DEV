/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3788FAFE
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A15EC32
	/// @DnDParent : 3788FAFE
	/// @DnDArgument : "var" "is_spawning"
	/// @DnDArgument : "value" "true"
	if(is_spawning == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 10B72B12
		/// @DnDParent : 5A15EC32
		/// @DnDArgument : "value" "1.5"
		/// @DnDArgument : "instvar" "3"
		speed = 1.5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 404684C5
	/// @DnDParent : 3788FAFE
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08D12ADB
		/// @DnDParent : 404684C5
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_colliding"
		is_colliding = true;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6434F5AA
		/// @DnDParent : 404684C5
		/// @DnDArgument : "function" "find_path"
		find_path();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70E4A45D
		/// @DnDInput : 3
		/// @DnDParent : 404684C5
		/// @DnDArgument : "var" "_player_dist"
		/// @DnDArgument : "value" "point_distance(x, y, other.x, other.y)"
		/// @DnDArgument : "var_1" "_player_dir"
		/// @DnDArgument : "value_1" "point_direction(other.x, other.y, x, y)"
		/// @DnDArgument : "var_2" "_buff"
		/// @DnDArgument : "value_2" "184"
		var _player_dist = point_distance(x, y, other.x, other.y);
		var _player_dir = point_direction(other.x, other.y, x, y);
		var _buff = 184;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13D04223
		/// @DnDInput : 2
		/// @DnDParent : 404684C5
		/// @DnDArgument : "var" "_repulse_x"
		/// @DnDArgument : "value" "lengthdir_x(clamp(1 - _player_dist / _buff, 0, 1), _player_dir) * _buff"
		/// @DnDArgument : "var_1" "_repulse_y"
		/// @DnDArgument : "value_1" "lengthdir_y(clamp(1 - _player_dist / _buff, 0, 1), _player_dir) * _buff"
		var _repulse_x = lengthdir_x(clamp(1 - _player_dist / _buff, 0, 1), _player_dir) * _buff;
		var _repulse_y = lengthdir_y(clamp(1 - _player_dist / _buff, 0, 1), _player_dir) * _buff;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 748C8537
		/// @DnDInput : 2
		/// @DnDParent : 404684C5
		/// @DnDArgument : "var" "_adjusted_speed_x"
		/// @DnDArgument : "value" "lerp(hspeed, hspeed + _repulse_x, repulse_rate) * speed_dropoff"
		/// @DnDArgument : "var_1" "_adjusted_speed_y"
		/// @DnDArgument : "value_1" "lerp(vspeed, vspeed + _repulse_y, repulse_rate) * speed_dropoff"
		var _adjusted_speed_x = lerp(hspeed, hspeed + _repulse_x, repulse_rate) * speed_dropoff;
		var _adjusted_speed_y = lerp(vspeed, vspeed + _repulse_y, repulse_rate) * speed_dropoff;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 1802ABDA
		/// @DnDInput : 2
		/// @DnDParent : 404684C5
		/// @DnDArgument : "value" "lerp(x, x + _adjusted_speed_x, 0.99)"
		/// @DnDArgument : "value_1" "lerp(y, y + _adjusted_speed_y, 0.99)"
		/// @DnDArgument : "instvar_1" "1"
		x = lerp(x, x + _adjusted_speed_x, 0.99);
		y = lerp(y, y + _adjusted_speed_y, 0.99);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 37B40C4E
		/// @DnDParent : 404684C5
		/// @DnDArgument : "value" "speed * speed_dropoff"
		/// @DnDArgument : "instvar" "3"
		speed = speed * speed_dropoff;
	}
}