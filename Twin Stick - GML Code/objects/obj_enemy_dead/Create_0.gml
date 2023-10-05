image_index = 1;
image_alpha = 0.75;
fade_rate = 60;

var _new_boom = instance_create_depth(x, y, depth - 1, obj_particle_handler);
_new_boom.set_character_defeat();
_new_boom.owner = self;

body_seq = layer_sequence_create("Bodies", x, y, seq_enemy_parts);
layer_sequence_angle(body_seq, image_angle);