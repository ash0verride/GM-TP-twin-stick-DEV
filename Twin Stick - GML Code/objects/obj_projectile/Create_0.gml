owner = noone;
speed_dropoff = 0.5;
wall_buffer = 180;

speed = 20;

correct_self = function()
{
	direction = owner.image_angle;
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;
}