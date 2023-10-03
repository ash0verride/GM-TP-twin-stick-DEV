owner = noone;
speed_dropoff = 0.5;
wall_buffer = 180;

speed = 20;
last_speed = speed;

correct_player = function()
{
	sprite_index = spr_player_fireball;
	
	direction = owner.gun_angle;
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
	
	var _new_gun_flash = instance_create_depth(x, y, depth - 1, obj_player_shoot);
	_new_gun_flash.owner = owner;
	_new_gun_flash.image_angle = direction;
	
	var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	_new_smoke.set_smoke();
	_new_smoke.owner = self;
}

correct_enemy = function()
{
	sprite_index = spr_enemy_fireball;
	
	direction = point_direction(owner.x, owner.y, owner.target.x, owner.target.y);
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
	
	var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	_new_smoke.set_smoke();
	_new_smoke.owner = self;
}

spark_projectile = function()
{
	if (owner.object_index == obj_player)
	{
		var _new_hit = instance_create_depth(x, y, depth - 1, obj_particle_handler);
		_new_hit.set_player_shot();
		_new_hit.owner = self;
		_new_hit.set_angle();
	}
	else
	{
		var _new_hit = instance_create_depth(x, y, depth - 1, obj_particle_handler);
		_new_hit.set_enemy_shot();
		_new_hit.owner = self;
		_new_hit.set_angle();
	}
	
	instance_destroy();
}