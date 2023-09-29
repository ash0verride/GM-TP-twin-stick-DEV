owner = noone;
speed_dropoff = 0.5;
wall_buffer = 180;

speed = 20;
last_speed = speed;

correct_player = function()
{
	direction = owner.image_angle;
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
}

correct_enemy = function()
{
	direction = point_direction(owner.x, owner.y, owner.target.x, owner.target.y);
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
}