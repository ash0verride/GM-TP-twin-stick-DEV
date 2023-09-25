// Inherit the parent event
event_inherited();

set_sprite = function()
{
	switch(obj_game_manager.curr_level_type)
	{
		case LEVEL_TYPE.GRASS:
			cell_sprite[0] = spr_grass_top_left;
			cell_sprite[1] = spr_grass_top;
			cell_sprite[2] = spr_grass_top_right;
			cell_sprite[3] = spr_grass_right;
			cell_sprite[4] = spr_grass_bottom_right;
			cell_sprite[5] = spr_grass_bottom;
			cell_sprite[6] = spr_grass_bottom_left;
			cell_sprite[7] = spr_grass_left;
			break;
		case LEVEL_TYPE.STONE:
			cell_sprite[0] = spr_old_port_top_left;
			cell_sprite[1] = spr_old_port_top;
			cell_sprite[2] = spr_old_port_top_right;
			cell_sprite[3] = spr_old_port_right;
			cell_sprite[4] = spr_old_port_bottom_right;
			cell_sprite[5] = spr_old_port_bottom;
			cell_sprite[6] = spr_old_port_bottom_left;
			cell_sprite[7] = spr_old_port_left;
			break;
	}
	
	sprite_index = cell_sprite[curr_face_type];
}