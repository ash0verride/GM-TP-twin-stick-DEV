/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44D52CD6
/// @DnDComment : // Checks if the owner id does not match the hit players id
/// @DnDArgument : "var" "owner.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "other.id"
if(!(owner.id == other.id))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30F3FF72
	/// @DnDComment : // Checks if the player is flashed
	/// @DnDParent : 44D52CD6
	/// @DnDArgument : "var" "other.is_flashed"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(other.is_flashed == true))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5224B81D
		/// @DnDComment : // Checks if the owner is a player
		/// @DnDParent : 30F3FF72
		/// @DnDArgument : "var" "owner.object_index"
		/// @DnDArgument : "value" "obj_player"
		if(owner.object_index == obj_player)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 664E12AB
			/// @DnDComment : // Stores the owners local id
			/// @DnDParent : 5224B81D
			/// @DnDArgument : "var" "_owner_id"
			/// @DnDArgument : "value" "owner.player_local_id"
			var _owner_id = owner.player_local_id;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 432BE5DC
			/// @DnDComment : // Loops through players
			/// @DnDApplyTo : obj_player
			/// @DnDParent : 5224B81D
			with(obj_player) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 501A0B33
				/// @DnDComment : // Checks if the players local id matches its own local id
				/// @DnDParent : 432BE5DC
				/// @DnDArgument : "var" "player_local_id"
				/// @DnDArgument : "value" "_owner_id"
				if(player_local_id == _owner_id)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 087AE36B
					/// @DnDComment : // Increases the players score by 500
					/// @DnDParent : 501A0B33
					/// @DnDArgument : "expr" "500"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "player_score"
					player_score += 500;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BD83896
		/// @DnDComment : // Sets the player to flashed state$(13_10)// Sets the hud alpha for player to 1 meaning it will fade out$(13_10)// Reduces the players health
		/// @DnDInput : 3
		/// @DnDParent : 30F3FF72
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "other.is_flashed"
		/// @DnDArgument : "var_1" "other.hud_health_alpha"
		/// @DnDArgument : "var_2" "other.player_health"
		other.is_flashed = true;
		other.hud_health_alpha = 1;
		other.player_health += -1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 0CE5D47A
		/// @DnDComment : // Plays player hit sound effect
		/// @DnDParent : 30F3FF72
		/// @DnDArgument : "target" "_sound_player_hit"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "soundid" "snd_player_hit"
		/// @DnDArgument : "gain" "0.6"
		/// @DnDSaveInfo : "soundid" "snd_player_hit"
		var _sound_player_hit = audio_play_sound(snd_player_hit, 0, 0, 0.6, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4A60A146
	/// @DnDComment : // Calls spark projectile function
	/// @DnDParent : 44D52CD6
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}