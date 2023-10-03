enum FACE_DIRECTION
{
	TOP,
	RIGHT,
	BOTTOM,
	LEFT,
	SIZE
}

curr_face_direction = FACE_DIRECTION.SIZE;

cooldown_rate = 2;
cooldown = 0;

spawn_queue = 0;

spawn_enemy = function()
{
	var _new_enemy = instance_create_layer(x, y, "Instances", obj_enemy);
	_new_enemy.owner = self;
	
	switch(curr_face_direction)
	{
		case FACE_DIRECTION.TOP:
			_new_enemy.image_angle = 90;
			_new_enemy.vspeed = 3;
			break;
		case FACE_DIRECTION.RIGHT:
			_new_enemy.image_angle = 0;
			_new_enemy.hspeed = -3;
			break;
		case FACE_DIRECTION.BOTTOM:
			_new_enemy.image_angle = 270;
			_new_enemy.vspeed = -3;
			break;
		case FACE_DIRECTION.LEFT:
			_new_enemy.image_angle = 180;
			_new_enemy.hspeed = 3;
			break;
	}
	
	spawn_queue--;
	cooldown = cooldown_rate;
}