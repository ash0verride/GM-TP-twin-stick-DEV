if (owner.object_index == obj_player)
{
	if (!other.is_flashed)
	{
		var _owner_id = owner.player_local_id;
		var _score = 100;
		
		other.is_flashed = true;
		other.curr_health--;
		
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