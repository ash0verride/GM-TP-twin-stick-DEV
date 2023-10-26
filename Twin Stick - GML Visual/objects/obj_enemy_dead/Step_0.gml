/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F5DE2C9
/// @DnDComment : // Checks if the game is not paused
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B31E29C
	/// @DnDComment : // Checks if the sequence is paused
	/// @DnDParent : 3F5DE2C9
	/// @DnDArgument : "var" "layer_sequence_is_paused(body_seq)"
	/// @DnDArgument : "value" "true"
	if(layer_sequence_is_paused(body_seq) == true)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Play
		/// @DnDVersion : 1
		/// @DnDHash : 5DB16193
		/// @DnDComment : // Resumes the sequence
		/// @DnDParent : 4B31E29C
		/// @DnDArgument : "var" "body_seq"
		layer_sequence_play(body_seq);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B789812
	/// @DnDComment : // Checks if the images alpha is visible
	/// @DnDParent : 3F5DE2C9
	/// @DnDArgument : "var" "image_alpha"
	/// @DnDArgument : "op" "3"
	if(image_alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6798B4E2
		/// @DnDComment : // Checks if the sequence has finished
		/// @DnDParent : 5B789812
		/// @DnDArgument : "var" "layer_sequence_is_finished(body_seq)"
		/// @DnDArgument : "value" "true"
		if(layer_sequence_is_finished(body_seq) == true)
		{
			/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
			/// @DnDVersion : 1
			/// @DnDHash : 3444BFBB
			/// @DnDComment : // Destroys the sequence
			/// @DnDParent : 6798B4E2
			/// @DnDArgument : "var" "body_seq"
			layer_sequence_destroy(body_seq);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2E32A454
			/// @DnDComment : // Destroys the object
			/// @DnDParent : 6798B4E2
			instance_destroy();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 55CB4550
	/// @DnDParent : 3F5DE2C9
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 76F79C0A
		/// @DnDComment : // Reduces the sprites alpha by the rate
		/// @DnDParent : 55CB4550
		/// @DnDArgument : "value" "-delta_time * fade_rate / 1000000"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "13"
		image_alpha += -delta_time * fade_rate / 1000000;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6428D8EC
else
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Pause
	/// @DnDVersion : 1
	/// @DnDHash : 2094E681
	/// @DnDComment : // Pauses the sequence
	/// @DnDParent : 6428D8EC
	/// @DnDArgument : "var" "body_seq"
	layer_sequence_pause(body_seq);
}