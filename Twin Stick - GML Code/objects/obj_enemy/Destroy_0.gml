var _dead_body = instance_create_layer(x, y, "Bodies", obj_enemy_dead);
_dead_body.image_angle = image_angle;

var _new_seq = layer_sequence_create("Bodies", x, y, seq_enemy_parts);
layer_sequence_angle(_new_seq, image_angle);