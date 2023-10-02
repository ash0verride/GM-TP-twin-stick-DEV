player_local_id = 0;
player_score = 0;
player_health = 3;
player_curr_ammo = 3;
player_max_ammo = 3;

controller_deadzone = 0.1;
is_mouse_aiming = false;
mouse_prev_x = mouse_x;
mouse_prev_y = mouse_y;

wall_buffer = 250;
rotation_speed = 0.25;
speed_dropoff = 0.9;
move_speed = 1;
max_speed = 5;

direction = image_angle;
body_angle = direction;

hspeed = 0;
vspeed = 0;

last_speed = speed;

last_image_speed = image_speed;
is_flashed = false;

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
	_new_projectile.correct_player();
	
	sprite_index = spr_player_shoot;
	image_index = 0;
}