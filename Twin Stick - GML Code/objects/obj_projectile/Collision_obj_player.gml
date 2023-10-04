if (owner.id != other.id)
{
	if (other.is_flashed)
	{
		spark_projectile();
	}
	else
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
		other.player_health--;
		spark_projectile();
		var _new_boom = instance_create_depth(x, y, depth - 1, obj_particle_handler);
		_new_boom.set_character_defeat();
		_new_boom.owner = self;
	}
}