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
			cell_sprite[8] = spr_grass_top_gap;
			cell_sprite[9] = spr_grass_right_gap;
			cell_sprite[10] = spr_grass_bottom_gap;
			cell_sprite[11] = spr_grass_left_gap;
			break;
	}
	
	sprite_index = cell_sprite[curr_face_type];
}