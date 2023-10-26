/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06EED4CC
/// @DnDComment : // Checks the game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FECAEF4
	/// @DnDComment : // Checks if the banner still has time to be shown
	/// @DnDParent : 06EED4CC
	/// @DnDArgument : "var" "banner_life"
	/// @DnDArgument : "op" "2"
	if(banner_life > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5899100C
		/// @DnDComment : // Counts down the banner life
		/// @DnDParent : 2FECAEF4
		/// @DnDArgument : "expr" "-delta_time * 0.000001"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "banner_life"
		banner_life += -delta_time * 0.000001;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F6AFEF9
		/// @DnDComment : // Sets the variable to its actual alpha
		/// @DnDParent : 2FECAEF4
		/// @DnDArgument : "expr" "image_alpha"
		/// @DnDArgument : "var" "banner_alpha"
		banner_alpha = image_alpha;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 77B4D68C
	/// @DnDParent : 06EED4CC
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D04215B
		/// @DnDComment : // Reduces the alpha of the banner to fade out
		/// @DnDParent : 77B4D68C
		/// @DnDArgument : "expr" "-delta_time * 0.000001 * 2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "banner_alpha"
		banner_alpha += -delta_time * 0.000001 * 2;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 698BB07C
		/// @DnDComment : // Sets the alpha to the variable value
		/// @DnDParent : 77B4D68C
		/// @DnDArgument : "value" "banner_alpha"
		/// @DnDArgument : "instvar" "13"
		image_alpha = banner_alpha;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B42847D
		/// @DnDComment : // Checks if the object has faded out
		/// @DnDParent : 77B4D68C
		/// @DnDArgument : "var" "image_alpha"
		/// @DnDArgument : "op" "3"
		if(image_alpha <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 75EDE210
			/// @DnDComment : // Calls the wave incoming banner function
			/// @DnDApplyTo : {obj_game_manager}
			/// @DnDParent : 0B42847D
			/// @DnDArgument : "function" "wave_incoming"
			with(obj_game_manager) {
				wave_incoming();
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 047BE73F
			/// @DnDComment : // Destroys the banner object
			/// @DnDParent : 0B42847D
			instance_destroy();
		}
	}
}