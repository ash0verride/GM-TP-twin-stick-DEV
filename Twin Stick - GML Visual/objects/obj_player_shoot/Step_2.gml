/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 50A5EC7A
/// @DnDComment : // Sets the flash to the gun angle
/// @DnDArgument : "value" "owner.gun_angle"
/// @DnDArgument : "instvar" "12"
image_angle = owner.gun_angle;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 756D4890
/// @DnDComment : // Set offset for flash orgin from original gun position$(13_10)// Store the angle in radians
/// @DnDInput : 3
/// @DnDArgument : "var" "_projectile_origin_x"
/// @DnDArgument : "value" "107"
/// @DnDArgument : "var_1" "_projectile_origin_y"
/// @DnDArgument : "value_1" "-2"
/// @DnDArgument : "var_2" "_theta"
/// @DnDArgument : "value_2" "degtorad(image_angle)"
var _projectile_origin_x = 107;
var _projectile_origin_y = -2;
var _theta = degtorad(image_angle);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 391CCEA0
/// @DnDComment : // Calculate adjusted position from offset and angle
/// @DnDInput : 2
/// @DnDArgument : "var" "_projectile_adjust_x"
/// @DnDArgument : "value" "_projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta)"
/// @DnDArgument : "var_1" "_projectile_adjust_y"
/// @DnDArgument : "value_1" "_projectile_origin_x * sin(_theta) + _projectile_origin_y * cos(_theta)"
var _projectile_adjust_x = _projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta);
var _projectile_adjust_y = _projectile_origin_x * sin(_theta) + _projectile_origin_y * cos(_theta);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 098B94C2
/// @DnDComment : // Apply adjusted position to the flash position
/// @DnDInput : 2
/// @DnDArgument : "value" "owner.x + _projectile_adjust_x"
/// @DnDArgument : "value_1" "owner.y - _projectile_adjust_y"
/// @DnDArgument : "instvar_1" "1"
x = owner.x + _projectile_adjust_x;
y = owner.y - _projectile_adjust_y;