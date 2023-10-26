/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71A4428D
/// @DnDComment : // Checks if the game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0882B236
	/// @DnDComment : // Updates the banner position based on the camera position
	/// @DnDParent : 71A4428D
	/// @DnDArgument : "value" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1C343ECC
	/// @DnDComment : // Updates the banner position based on the camera position
	/// @DnDParent : 71A4428D
	/// @DnDArgument : "value" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - 217"
	/// @DnDArgument : "instvar" "1"
	y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - 217;
}