/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D18BABD
/// @DnDComment : // Checks if the owner is a player
/// @DnDArgument : "var" "owner.object_index"
/// @DnDArgument : "value" "obj_player"
if(owner.object_index == obj_player)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B7A2004
	/// @DnDComment : // Checks if the enemy not flashed and able to take damage
	/// @DnDParent : 4D18BABD
	/// @DnDArgument : "var" "other.is_flashing"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(other.is_flashing == true))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DA3044E
		/// @DnDComment : // Sets player id$(13_10)// Sets inital score
		/// @DnDInput : 2
		/// @DnDParent : 7B7A2004
		/// @DnDArgument : "var" "_owner_id"
		/// @DnDArgument : "value" "owner.player_local_id"
		/// @DnDArgument : "var_1" "_score"
		/// @DnDArgument : "value_1" "100"
		var _owner_id = owner.player_local_id;
		var _score = 100;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F999F2B
		/// @DnDComment : // Changes the enemy to flashed$(13_10)// Reduces enemy health
		/// @DnDInput : 2
		/// @DnDParent : 7B7A2004
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "other.is_flashing"
		/// @DnDArgument : "var_1" "other.curr_health"
		other.is_flashing = true;
		other.curr_health += -1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A3A16D9
		/// @DnDComment : // Creates an enemy hit sound
		/// @DnDParent : 7B7A2004
		/// @DnDArgument : "target" "_sound_enemy_hit"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "soundid" "snd_enemy_hit"
		/// @DnDArgument : "gain" "0.5"
		/// @DnDArgument : "offset" "0"
		/// @DnDSaveInfo : "soundid" "snd_enemy_hit"
		var _sound_enemy_hit = audio_play_sound(snd_enemy_hit, 0, 0, 0.5, 0, 1.0);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 147623BA
		/// @DnDComment : // Checks if the enemy is out of health
		/// @DnDParent : 7B7A2004
		/// @DnDArgument : "var" "other.curr_health"
		/// @DnDArgument : "op" "3"
		if(other.curr_health <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D1B5037
			/// @DnDComment : // Changes possible score to 300
			/// @DnDParent : 147623BA
			/// @DnDArgument : "expr" "300"
			/// @DnDArgument : "var" "_score"
			_score = 300;
		}
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 55C778A9
		/// @DnDComment : // Loops through players
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 7B7A2004
		with(obj_player) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5B9AA6CB
			/// @DnDComment : // Looks for player with matching local ID
			/// @DnDParent : 55C778A9
			/// @DnDArgument : "var" "player_local_id"
			/// @DnDArgument : "value" "_owner_id"
			if(player_local_id == _owner_id)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 674E04FF
				/// @DnDComment : // Increases the players score
				/// @DnDParent : 5B9AA6CB
				/// @DnDArgument : "expr" "_score"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "player_score"
				player_score += _score;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 06900B48
	/// @DnDComment : // Calls spark projectile function
	/// @DnDParent : 4D18BABD
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}