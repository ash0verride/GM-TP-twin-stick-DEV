/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 77740D88
/// @DnDComment : // Array for storing the possible flower sprites$(13_10)// Sets the array variables to the possible sprites
/// @DnDArgument : "var" "_flower_sprite"
/// @DnDArgument : "value" "[ spr_flower_blue, spr_flower_yellow, spr_flower_group ]"
var _flower_sprite = [ spr_flower_blue, spr_flower_yellow, spr_flower_group ];

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 5DB6E67C
/// @DnDComment : // Sets the sprite to a randomly selected sprite
/// @DnDArgument : "value" "_flower_sprite[irandom(2)]"
/// @DnDArgument : "instvar" "10"
sprite_index = _flower_sprite[irandom(2)];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5126E583
/// @DnDComment : // Sets the scale variable of the flower to a random value between 0.5 and 1
/// @DnDArgument : "var" "_scale"
/// @DnDArgument : "value" "random_range(0.5, 1)"
var _scale = random_range(0.5, 1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 25A05A95
/// @DnDComment : // Sets the sprites scale to the variable
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
/// @DnDComment : // Rotates the sprite to a random angle
/// @DnDArgument : "value" "random(360)"
/// @DnDArgument : "instvar" "12"
image_angle = random(360);