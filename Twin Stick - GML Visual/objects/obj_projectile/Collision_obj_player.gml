/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44D52CD6
/// @DnDArgument : "var" "owner.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "other.id"
if(!(owner.id == other.id))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30F3FF72
	/// @DnDParent : 44D52CD6
	/// @DnDArgument : "var" "other.is_flashed"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(other.is_flashed == true))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5224B81D
		/// @DnDParent : 30F3FF72
		/// @DnDArgument : "var" "owner.object_index"
		/// @DnDArgument : "value" "obj_player"
		if(owner.object_index == obj_player)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 664E12AB
			/// @DnDParent : 5224B81D
			/// @DnDArgument : "var" "_owner_id"
			/// @DnDArgument : "value" "owner.player_local_id"
			var _owner_id = owner.player_local_id;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 432BE5DC
			/// @DnDApplyTo : obj_player
			/// @DnDParent : 5224B81D
			with(obj_player) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 501A0B33
				/// @DnDParent : 432BE5DC
				/// @DnDArgument : "var" "player_local_id"
				/// @DnDArgument : "value" "_owner_id"
				if(player_local_id == _owner_id)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 087AE36B
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
	/// @DnDParent : 44D52CD6
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}