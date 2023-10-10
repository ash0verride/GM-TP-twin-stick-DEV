/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35A460D7
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 46A74318
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 35A460D7
	/// @DnDArgument : "function" "pause_game"
	with(obj_game_manager) {
		pause_game();
	}
}