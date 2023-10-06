enum FACE_TYPE
{
	TOP_LEFT,
	TOP,
	TOP_RIGHT,
	RIGHT,
	BOTTOM_RIGHT,
	BOTTOM,
	BOTTOM_LEFT,
	LEFT,
	TOP_GAP,
	RIGHT_GAP,
	BOTTOM_GAP,
	LEFT_GAP,
	SIZE
}

curr_face_type = FACE_TYPE.SIZE;

set_sprite = function()
{
	switch (curr_face_type)
	{
		case FACE_TYPE.TOP_LEFT:
			sprite_index = spr_grass_top_left;
		break;
		case FACE_TYPE.TOP:
			sprite_index = spr_grass_top;
		break;
		case FACE_TYPE.TOP_RIGHT:
			sprite_index = spr_grass_top_right;
		break;
		case FACE_TYPE.RIGHT:
			sprite_index = spr_grass_right;
		break;
		case FACE_TYPE.BOTTOM_RIGHT:
			sprite_index = spr_grass_bottom_right;
		break;
		case FACE_TYPE.BOTTOM:
			sprite_index = spr_grass_bottom;
		break;
		case FACE_TYPE.BOTTOM_LEFT:
			sprite_index = spr_grass_bottom_left;
		break;
		case FACE_TYPE.LEFT:
			sprite_index = spr_grass_left;
		break;
		case FACE_TYPE.TOP_GAP:
			sprite_index = spr_grass_top_gap;
		break;
		case FACE_TYPE.RIGHT_GAP:
			sprite_index = spr_grass_right_gap;
		break;
		case FACE_TYPE.BOTTOM_GAP:
			sprite_index = spr_grass_bottom_gap;
		break;
		case FACE_TYPE.LEFT_GAP:
			sprite_index = spr_grass_left_gap;
		break;
	}
}