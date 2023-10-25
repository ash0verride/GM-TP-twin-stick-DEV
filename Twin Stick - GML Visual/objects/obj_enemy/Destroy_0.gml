/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7AD5724D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_body"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_enemy_dead"
/// @DnDArgument : "layer" ""Bodies""
/// @DnDSaveInfo : "objectid" "obj_enemy_dead"
var _body = instance_create_layer(x + 0, y + 0, "Bodies", obj_enemy_dead);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 33E8EA80
/// @DnDApplyTo : _body
/// @DnDArgument : "value" "other.image_angle"
/// @DnDArgument : "instvar" "12"
with(_body) {
image_angle = other.image_angle;
}