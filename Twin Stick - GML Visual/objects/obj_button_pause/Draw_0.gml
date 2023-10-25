/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F3B316B
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 2D3D57B6
	/// @DnDComment : // Draws pause button on screen
	/// @DnDParent : 3F3B316B
	draw_self();
}