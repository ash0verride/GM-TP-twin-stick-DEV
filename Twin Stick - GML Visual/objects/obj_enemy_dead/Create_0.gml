/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6AEC65FB
/// @DnDComment : // Create explosion particle system
/// @DnDInput : 4
/// @DnDArgument : "var" "_new_boom"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_create_depth"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "depth - 1"
/// @DnDArgument : "arg_3" "obj_particle_handler"
var _new_boom = instance_create_depth(x, y, depth - 1, obj_particle_handler);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1243E27C
/// @DnDComment : // Set particle system to character explosion
/// @DnDApplyTo : _new_boom
/// @DnDArgument : "function" "set_character_defeat"
with(_new_boom) {
	set_character_defeat();
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5455F564
/// @DnDComment : // Set particle system parent to dead enemy
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_new_boom.owner"
_new_boom.owner = self;

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 4C8338D5
/// @DnDComment : // Create sequence for enemy parts sequence
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "body_seq"
/// @DnDArgument : "sequenceid" "seq_enemy_parts"
/// @DnDArgument : "layer" ""Bodies""
/// @DnDSaveInfo : "sequenceid" "seq_enemy_parts"
body_seq = layer_sequence_create("Bodies", x + 0, y + 0, seq_enemy_parts);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 217C5C98
/// @DnDComment : // Angle sequence to body angle
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_sequence_angle"
/// @DnDArgument : "arg" "body_seq"
/// @DnDArgument : "arg_1" "image_angle"
layer_sequence_angle(body_seq, image_angle);