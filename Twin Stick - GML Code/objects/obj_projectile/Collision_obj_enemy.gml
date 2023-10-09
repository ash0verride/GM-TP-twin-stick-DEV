if (owner.object_index == obj_player)
{
	if (!other.is_flashed)
	{
		var _owner_id = owner.player_local_id;
		var _score = 100;
		
		other.is_flashed = true;
		other.curr_health--;
		
		var _sound_enemy_hit = audio_play_sound(snd_enemy_hit, 100, false, 0.5, 0, 1.0);
		
		if (other.curr_health <= 0)
		{
			_score = 300;
		}
	
		with (obj_player)
		{
			if (self.player_local_id == _owner_id)
			{
				self.player_score += _score;
			}
		}
	}
	
	spark_projectile();
}