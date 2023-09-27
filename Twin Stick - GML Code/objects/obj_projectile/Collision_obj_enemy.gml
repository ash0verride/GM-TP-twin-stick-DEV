var _can_destroy = false;
//owner.player_score += 100;
_can_destroy = true;

if (_can_destroy)
{
	instance_destroy(other);
	instance_destroy(self);
}