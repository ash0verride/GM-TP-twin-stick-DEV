/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6957D5EA
/// @DnDArgument : "var" "_obstacle_sprite"
/// @DnDArgument : "value" "[]"
var _obstacle_sprite = [];

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B9BA18B
/// @DnDInput : 3
/// @DnDArgument : "expr" "spr_obstacle_1"
/// @DnDArgument : "expr_1" "spr_obstacle_2"
/// @DnDArgument : "expr_2" "spr_obstacle_3"
/// @DnDArgument : "var" "_obstacle_sprite[0]"
/// @DnDArgument : "var_1" "_obstacle_sprite[1]"
/// @DnDArgument : "var_2" "_obstacle_sprite[2]"
_obstacle_sprite[0] = spr_obstacle_1;
_obstacle_sprite[1] = spr_obstacle_2;
_obstacle_sprite[2] = spr_obstacle_3;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0AB82230
/// @DnDArgument : "value" "_obstacle_sprite[irandom(2)]"
/// @DnDArgument : "instvar" "10"
sprite_index = _obstacle_sprite[irandom(2)];