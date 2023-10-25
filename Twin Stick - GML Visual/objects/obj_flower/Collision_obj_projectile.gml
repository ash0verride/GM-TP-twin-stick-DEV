/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A3F22E4
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 77CD7F1E
	/// @DnDParent : 0A3F22E4
	/// @DnDArgument : "value" "other.hspeed * speed_dropoff"
	/// @DnDArgument : "instvar" "4"
	hspeed = other.hspeed * speed_dropoff;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3786EA03
	/// @DnDParent : 0A3F22E4
	/// @DnDArgument : "value" "other.vspeed * speed_dropoff"
	/// @DnDArgument : "instvar" "5"
	vspeed = other.vspeed * speed_dropoff;
}