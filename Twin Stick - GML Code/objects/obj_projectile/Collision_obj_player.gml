if (owner.id != other.id)
{
	if (!other.is_flashed)
	{
		if (owner.object_index == obj_player)
		{
			var _owner_id = owner.player_local_id;
		
			with (obj_player)
			{
				if (self.player_local_id == _owner_id)
				{
					self.player_score += 500;
				}
			}
		}
		other.is_flashed = true;
		other.hud_health_alpha = 1.0;
		other.player_health--;	
	}
	spark_projectile();
}