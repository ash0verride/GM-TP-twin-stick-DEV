/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3638338F
/// @DnDComment : // Checks if game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 749D4EC0
	/// @DnDComment : // Drops off player speed
	/// @DnDParent : 3638338F
	/// @DnDArgument : "expr" "speed * speed_dropoff"
	/// @DnDArgument : "var" "speed"
	speed = speed * speed_dropoff;
}