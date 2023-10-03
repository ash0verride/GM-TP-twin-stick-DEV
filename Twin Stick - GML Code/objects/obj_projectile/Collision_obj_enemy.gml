if (owner.object_index == obj_player)
{
	var _owner_id = owner.player_local_id;
	
	with (obj_player)
	{
		if (self.player_local_id == _owner_id)
		{
			self.player_score += 100;
		}
	}
	
	var _new_boom = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	_new_boom.set_character_defeat();
	_new_boom.owner = self;
	instance_destroy(other);
	spark_projectile();
}