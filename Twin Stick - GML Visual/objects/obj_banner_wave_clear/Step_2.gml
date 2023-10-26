/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C3DB0EF
/// @DnDComment : // Checks if the game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6033E8D6
	/// @DnDComment : // Updates the banner position based on the camera position
	/// @DnDParent : 4C3DB0EF
	/// @DnDArgument : "value" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5B7A610F
	/// @DnDComment : // Updates the banner position based on the camera position
	/// @DnDParent : 4C3DB0EF
	/// @DnDArgument : "value" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - 217"
	/// @DnDArgument : "instvar" "1"
	y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - 217;
}