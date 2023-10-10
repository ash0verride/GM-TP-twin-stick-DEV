/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 77740D88
/// @DnDArgument : "var" "_flower_sprite"
/// @DnDArgument : "value" "[ spr_flower_blue, spr_flower_yellow, spr_flower_group ]"
var _flower_sprite = [ spr_flower_blue, spr_flower_yellow, spr_flower_group ];

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 5DB6E67C
/// @DnDArgument : "value" "_flower_sprite[irandom(2)]"
/// @DnDArgument : "instvar" "10"
sprite_index = _flower_sprite[irandom(2)];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5126E583
/// @DnDArgument : "var" "_scale"
/// @DnDArgument : "value" "random_range(0.5, 1)"
var _scale = random_range(0.5, 1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 25A05A95
/// @DnDInput : 2
/// @DnDArgument : "value" "_scale"
/// @DnDArgument : "value_1" "_scale"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
image_xscale = _scale;
image_yscale = _scale;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 295CA0EF
/// @DnDArgument : "value" "random(360)"
/// @DnDArgument : "instvar" "12"
image_angle = random(360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 274B15C3
/// @DnDArgument : "expr" "speed"
/// @DnDArgument : "var" "last_speed"
last_speed = speed;