if (owner.object_index == obj_player)
{
	var _owner_id = owner.player_id;
	
	with (obj_player)
	{
		if (self.player_id == _owner_id)
		{
			self.player_score += 100;
		}
	}
	
	instance_destroy(other);
	instance_destroy(self);
}