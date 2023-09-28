text = "RETRY";
font = fnt_luckiest_guy_24;
colour = c_black;
halign = fa_center;
valign = fa_center;

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