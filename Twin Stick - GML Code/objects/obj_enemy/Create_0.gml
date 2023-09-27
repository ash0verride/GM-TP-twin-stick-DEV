target = noone;

lock_target = function()
{
	var _player_distance = infinity;
	var _enemy = self;
	
	with(obj_player)
	{
		var _curr_player_distance = distance_to_object(_enemy);
		
		if (_curr_player_distance <= _player_distance)
		{
			_player_distance = _curr_player_distance;
			_enemy.target = self;
		}
	}
}

lock_target();