/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7471B744
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 175F2ECE
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 7471B744
	/// @DnDArgument : "function" "resume_game"
	with(obj_game_manager) {
		resume_game();
	}
}