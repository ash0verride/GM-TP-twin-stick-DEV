if (owner.id != other.id)
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
	
	other.player_health--;
	instance_destroy(self);
}