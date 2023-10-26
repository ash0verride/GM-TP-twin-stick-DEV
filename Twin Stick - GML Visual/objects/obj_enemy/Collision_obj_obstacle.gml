/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AE21D28
/// @DnDComment : // Checks the game is not paused
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 058DBE43
	/// @DnDComment : // Checks if enemy is spawning
	/// @DnDParent : 7AE21D28
	/// @DnDArgument : "var" "is_spawning"
	/// @DnDArgument : "value" "true"
	if(is_spawning == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 1FDB7A37
		/// @DnDComment : // Slows enemy to half speed but still lets them move into the arena
		/// @DnDParent : 058DBE43
		/// @DnDArgument : "value" "1.5"
		/// @DnDArgument : "instvar" "3"
		speed = 1.5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 632D163E
	/// @DnDParent : 7AE21D28
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D079A0B
		/// @DnDComment : // Sets colliding state to true
		/// @DnDParent : 632D163E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_colliding"
		is_colliding = true;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 42EE13CB
		/// @DnDComment : // Recalculates path to enemy
		/// @DnDParent : 632D163E
		/// @DnDArgument : "function" "find_path"
		find_path();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AF2FD5F
		/// @DnDComment : // Calculates distance to obstacle$(13_10)// Calculates direction of obstacle$(13_10)// Sets buffer values from obstacles dimensions
		/// @DnDInput : 4
		/// @DnDParent : 632D163E
		/// @DnDArgument : "var" "_obs_dist"
		/// @DnDArgument : "value" "point_distance(x, y, other.x, other.y)"
		/// @DnDArgument : "var_1" "_obs_dir"
		/// @DnDArgument : "value_1" "point_direction(other.x, other.y, x, y)"
		/// @DnDArgument : "var_2" "_x_buff"
		/// @DnDArgument : "value_2" "other.sprite_width * 0.9"
		/// @DnDArgument : "var_3" "_y_buff"
		/// @DnDArgument : "value_3" "other.sprite_height * 0.9"
		var _obs_dist = point_distance(x, y, other.x, other.y);
		var _obs_dir = point_direction(other.x, other.y, x, y);
		var _x_buff = other.sprite_width * 0.9;
		var _y_buff = other.sprite_height * 0.9;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53966F38
		/// @DnDComment : // Calculates speed of repulsion from obstacle
		/// @DnDInput : 2
		/// @DnDParent : 632D163E
		/// @DnDArgument : "var" "_repulse_x"
		/// @DnDArgument : "value" "lengthdir_x(clamp(1 - _obs_dist / _x_buff, 0, 1), _obs_dir) * _x_buff"
		/// @DnDArgument : "var_1" "_repulse_y"
		/// @DnDArgument : "value_1" "lengthdir_y(clamp(1 - _obs_dist / _y_buff, 0, 1), _obs_dir) * _y_buff"
		var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / _x_buff, 0, 1), _obs_dir) * _x_buff;
		var _repulse_y = lengthdir_y(clamp(1 - _obs_dist / _y_buff, 0, 1), _obs_dir) * _y_buff;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 08C26828
		/// @DnDComment : // Adjusts and applies the new speed to the existing speed
		/// @DnDInput : 2
		/// @DnDParent : 632D163E
		/// @DnDArgument : "value" "lerp(hspeed, hspeed + _repulse_x, repulse_rate)"
		/// @DnDArgument : "value_1" "lerp(vspeed, vspeed + _repulse_y, repulse_rate)"
		/// @DnDArgument : "instvar" "4"
		/// @DnDArgument : "instvar_1" "5"
		hspeed = lerp(hspeed, hspeed + _repulse_x, repulse_rate);
		vspeed = lerp(vspeed, vspeed + _repulse_y, repulse_rate);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 61C1254C
		/// @DnDComment : // Applies the speed to the position
		/// @DnDInput : 2
		/// @DnDParent : 632D163E
		/// @DnDArgument : "value" "hspeed * speed_dropoff"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "value_1" "vspeed * speed_dropoff"
		/// @DnDArgument : "value_relative_1" "1"
		/// @DnDArgument : "instvar_1" "1"
		x += hspeed * speed_dropoff;
		y += vspeed * speed_dropoff;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 23000DE6
		/// @DnDComment : // Limits the speed to max speed
		/// @DnDInput : 2
		/// @DnDParent : 632D163E
		/// @DnDArgument : "value" "clamp(hspeed, -max_speed, max_speed)"
		/// @DnDArgument : "value_1" "clamp(vspeed, -max_speed, max_speed)"
		/// @DnDArgument : "instvar" "4"
		/// @DnDArgument : "instvar_1" "5"
		hspeed = clamp(hspeed, -max_speed, max_speed);
		vspeed = clamp(vspeed, -max_speed, max_speed);
	}
}