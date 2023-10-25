/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00EAAA00
/// @DnDArgument : "var" "player_health"
/// @DnDArgument : "op" "3"
if(player_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1627768A
	/// @DnDParent : 00EAAA00
	/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
	/// @DnDArgument : "value" "GAME_STATE.PLAYING"
	if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0E70E93D
		/// @DnDApplyTo : {obj_game_manager}
		/// @DnDParent : 1627768A
		/// @DnDArgument : "function" "lose_game"
		with(obj_game_manager) {
			lose_game();
		}
	}
}