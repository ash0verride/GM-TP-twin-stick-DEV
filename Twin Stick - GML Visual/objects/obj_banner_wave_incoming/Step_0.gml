/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0ED0DF3A
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56067B17
	/// @DnDParent : 0ED0DF3A
	/// @DnDArgument : "var" "banner_life"
	/// @DnDArgument : "op" "2"
	if(banner_life > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77742FB7
		/// @DnDParent : 56067B17
		/// @DnDArgument : "expr" "-delta_time * 0.000001"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "banner_life"
		banner_life += -delta_time * 0.000001;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46402C4A
		/// @DnDParent : 56067B17
		/// @DnDArgument : "expr" "image_alpha"
		/// @DnDArgument : "var" "banner_alpha"
		banner_alpha = image_alpha;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7BC0D2A9
	/// @DnDParent : 0ED0DF3A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2925002A
		/// @DnDParent : 7BC0D2A9
		/// @DnDArgument : "expr" "-delta_time * 0.000001 * 0.5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "banner_alpha"
		banner_alpha += -delta_time * 0.000001 * 0.5;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 635EA49A
		/// @DnDParent : 7BC0D2A9
		/// @DnDArgument : "value" "banner_alpha"
		/// @DnDArgument : "instvar" "13"
		image_alpha = banner_alpha;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1865E6B6
		/// @DnDParent : 7BC0D2A9
		/// @DnDArgument : "var" "image_alpha"
		/// @DnDArgument : "op" "3"
		if(image_alpha <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 46E9815A
			/// @DnDParent : 1865E6B6
			instance_destroy();
		}
	}
}