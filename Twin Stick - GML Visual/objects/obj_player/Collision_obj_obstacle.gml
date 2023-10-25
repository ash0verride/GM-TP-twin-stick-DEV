/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ACB8D8E
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 722E6985
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "var" "_obs_dist"
	/// @DnDArgument : "value" "point_distance(x, y, other.x, other.y)"
	/// @DnDArgument : "var_1" "_obs_dir"
	/// @DnDArgument : "value_1" "point_direction(other.x, other.y, x, y)"
	var _obs_dist = point_distance(x, y, other.x, other.y);
	var _obs_dir = point_direction(other.x, other.y, x, y);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 593F6F15
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "var" "_repulse_x"
	/// @DnDArgument : "value" "lengthdir_x(clamp(1 - _obs_dist / (other.sprite_width / 2), 0, 1), _obs_dir)"
	/// @DnDArgument : "var_1" "_repulse_y"
	/// @DnDArgument : "value_1" "lengthdir_y(clamp(1 - _obs_dist / (other.sprite_height / 2), 0, 1), _obs_dir)"
	var _repulse_x = lengthdir_x(clamp(1 - _obs_dist / (other.sprite_width / 2), 0, 1), _obs_dir);
	var _repulse_y = lengthdir_y(clamp(1 - _obs_dist / (other.sprite_height / 2), 0, 1), _obs_dir);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6372F5CD
	/// @DnDInput : 2
	/// @DnDParent : 2ACB8D8E
	/// @DnDArgument : "value" "clamp(_repulse_x * 200, -max_speed, max_speed)"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "clamp(_repulse_y * 200, -max_speed, max_speed)"
	/// @DnDArgument : "value_relative_1" "1"
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "5"
	hspeed += clamp(_repulse_x * 200, -max_speed, max_speed);
	vspeed += clamp(_repulse_y * 200, -max_speed, max_speed);
}