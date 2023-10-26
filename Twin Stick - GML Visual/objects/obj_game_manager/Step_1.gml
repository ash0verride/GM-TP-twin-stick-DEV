/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C46BAD9
/// @DnDComment : // Checks if the game state is paused
/// @DnDArgument : "var" "curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(curr_game_state == GAME_STATE.PAUSED)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 185F5E82
	/// @DnDComment : // Changes previous state to true
	/// @DnDParent : 1C46BAD9
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "was_paused"
	was_paused = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3909CCEE
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0ED1DE01
	/// @DnDComment : // Changes previous state to false
	/// @DnDParent : 3909CCEE
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "was_paused"
	was_paused = false;
}