owner = noone;
speed_inhert_rate = 0.5;

speed = 10;

correct_self = function()
{
	direction = owner.image_angle;
	image_angle = direction;
	
	hspeed += owner.hspeed * speed_inhert_rate;
	vspeed += owner.vspeed * speed_inhert_rate;
}