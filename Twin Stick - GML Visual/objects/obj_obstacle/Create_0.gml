/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6957D5EA
/// @DnDComment : // Array for storing the possible obstacle sprites$(13_10)// Sets the array variables to the possible sprites
/// @DnDArgument : "var" "_obstacle_sprite"
/// @DnDArgument : "value" "[spr_obstacle_1, spr_obstacle_2, spr_obstacle_3]"
var _obstacle_sprite = [spr_obstacle_1, spr_obstacle_2, spr_obstacle_3];

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0AB82230
/// @DnDComment : // Sets the sprite to a randomly selected sprite
/// @DnDArgument : "value" "_obstacle_sprite[irandom(2)]"
/// @DnDArgument : "instvar" "10"
sprite_index = _obstacle_sprite[irandom(2)];