/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 135999D6
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 77157EF4
	/// @DnDComment : // Updates the object position by the cameras position
	/// @DnDParent : 135999D6
	/// @DnDArgument : "var" "_view_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_x"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _view_x = camera_get_view_x(view_camera[0]);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7BCA4F07
	/// @DnDParent : 135999D6
	/// @DnDArgument : "value" "_view_x"
	x = _view_x;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0DEFD340
	/// @DnDParent : 135999D6
	/// @DnDArgument : "var" "_view_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_y"
	/// @DnDArgument : "arg" "view_camera[0]"
	var _view_y = camera_get_view_y(view_camera[0]);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4B774A97
	/// @DnDParent : 135999D6
	/// @DnDArgument : "value" "_view_y"
	/// @DnDArgument : "instvar" "1"
	y = _view_y;
}