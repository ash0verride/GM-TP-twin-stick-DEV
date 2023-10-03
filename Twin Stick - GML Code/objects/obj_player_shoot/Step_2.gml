image_angle = owner.gun_angle;

var _projectile_origin_x = 107;
var _projectile_origin_y = -2;
	
var _theta = degtorad(image_angle);
	
var _projectile_adjust_x = (_projectile_origin_x * cos(_theta)) - (_projectile_origin_y * sin(_theta));
var _projectile_adjust_y = (_projectile_origin_y * cos(_theta)) + (_projectile_origin_x * sin(_theta));
	
x = owner.x + _projectile_adjust_x;
y = owner.y - _projectile_adjust_y;