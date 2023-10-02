owner = noone;
speed_dropoff = 0.5;
wall_buffer = 180;

speed = 20;
last_speed = speed;

correct_player = function()
{
	sprite_index = spr_player_fireball;
	
	direction = owner.image_angle;
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
}

correct_enemy = function()
{
	sprite_index = spr_enemy_fireball;
	
	direction = point_direction(owner.x, owner.y, owner.target.x, owner.target.y);
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
}