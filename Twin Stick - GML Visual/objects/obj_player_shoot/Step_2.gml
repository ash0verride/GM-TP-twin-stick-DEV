/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 50A5EC7A
/// @DnDArgument : "value" "owner.gun_angle"
/// @DnDArgument : "instvar" "12"
image_angle = owner.gun_angle;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 756D4890
/// @DnDArgument : "var" "_projectile_origin_x"
/// @DnDArgument : "value" "107"
var _projectile_origin_x = 107;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A517B5E
/// @DnDArgument : "var" "_projectile_origin_y"
/// @DnDArgument : "value" "-2"
var _projectile_origin_y = -2;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 16834FE9
/// @DnDArgument : "var" "_theta"
/// @DnDArgument : "value" "degtorad(image_angle)"
var _theta = degtorad(image_angle);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 391CCEA0
/// @DnDArgument : "var" "_projectile_adjust_x"
/// @DnDArgument : "value" "_projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta)"
var _projectile_adjust_x = _projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 204A99D5
/// @DnDArgument : "var" "_projectile_adjust_y"
/// @DnDArgument : "value" "_projectile_origin_x * sin(_theta) + _projectile_origin_y * cos(_theta)"
var _projectile_adjust_y = _projectile_origin_x * sin(_theta) + _projectile_origin_y * cos(_theta);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 098B94C2
/// @DnDArgument : "value" "owner.x + _projectile_adjust_x"
x = owner.x + _projectile_adjust_x;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 5503492A
/// @DnDArgument : "value" "owner.y - _projectile_adjust_y"
/// @DnDArgument : "instvar" "1"
y = owner.y - _projectile_adjust_y;