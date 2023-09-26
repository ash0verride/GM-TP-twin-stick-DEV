player_id = 0;

controller_deadzone = 0.05;
mouse_prev_x = mouse_x;
mouse_prev_y = mouse_y;
is_mouse_aiming = false;

wall_buffer = 250;
rotation_speed = 0.25;
speed_dropoff = 0.9;
move_speed = 1;
max_speed = 5;

direction = image_angle;

hspeed = 0;
vspeed = 0;

create_projectile = function()
{
	var _projectile_origin_x = 110;
	var _projectile_origin_y = 0;
	
	var _theta = degtorad(image_angle);
	
	var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
	var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
	var _projectile_pos_x = x + _projectile_adjust_x;
	var _projectile_pos_y = y - _projectile_adjust_y;

	var _new_projectile = instance_create_layer(_projectile_pos_x, _projectile_pos_y, "Projectiles", obj_projectile);
	_new_projectile.owner = self;	
	_new_projectile.correct_self();
	
	sprite_index = spr_player_shooting;
	image_index = 0;
}