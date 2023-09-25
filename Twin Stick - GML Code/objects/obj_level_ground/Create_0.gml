// Inherit the parent event
event_inherited();

curr_face_type = FACE_TYPE.CENTRE;

cell_sprite[0] = spr_grass_centre;
cell_sprite[1] = spr_old_port_centre;

sprite_index = cell_sprite[obj_game_manager.curr_level_type];

randomise();
image_index = irandom_range(0, 3);