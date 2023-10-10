/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D9C9B33
/// @DnDArgument : "code" "enum FACE_TYPE$(13_10){$(13_10)	TOP_LEFT,$(13_10)	TOP,$(13_10)	TOP_RIGHT,$(13_10)	RIGHT,$(13_10)	BOTTOM_RIGHT,$(13_10)	BOTTOM,$(13_10)	BOTTOM_LEFT,$(13_10)	LEFT,$(13_10)	TOP_GAP,$(13_10)	RIGHT_GAP,$(13_10)	BOTTOM_GAP,$(13_10)	LEFT_GAP,$(13_10)	SIZE$(13_10)}$(13_10)$(13_10)curr_face_type = FACE_TYPE.SIZE;$(13_10)$(13_10)set_sprite = function()$(13_10){$(13_10)	switch (curr_face_type)$(13_10)	{$(13_10)		case FACE_TYPE.TOP_LEFT:$(13_10)			sprite_index = spr_grass_top_left;$(13_10)		break;$(13_10)		case FACE_TYPE.TOP:$(13_10)			sprite_index = spr_grass_top;$(13_10)		break;$(13_10)		case FACE_TYPE.TOP_RIGHT:$(13_10)			sprite_index = spr_grass_top_right;$(13_10)		break;$(13_10)		case FACE_TYPE.RIGHT:$(13_10)			sprite_index = spr_grass_right;$(13_10)		break;$(13_10)		case FACE_TYPE.BOTTOM_RIGHT:$(13_10)			sprite_index = spr_grass_bottom_right;$(13_10)		break;$(13_10)		case FACE_TYPE.BOTTOM:$(13_10)			sprite_index = spr_grass_bottom;$(13_10)		break;$(13_10)		case FACE_TYPE.BOTTOM_LEFT:$(13_10)			sprite_index = spr_grass_bottom_left;$(13_10)		break;$(13_10)		case FACE_TYPE.LEFT:$(13_10)			sprite_index = spr_grass_left;$(13_10)		break;$(13_10)		case FACE_TYPE.TOP_GAP:$(13_10)			sprite_index = spr_grass_top_gap;$(13_10)		break;$(13_10)		case FACE_TYPE.RIGHT_GAP:$(13_10)			sprite_index = spr_grass_right_gap;$(13_10)		break;$(13_10)		case FACE_TYPE.BOTTOM_GAP:$(13_10)			sprite_index = spr_grass_bottom_gap;$(13_10)		break;$(13_10)		case FACE_TYPE.LEFT_GAP:$(13_10)			sprite_index = spr_grass_left_gap;$(13_10)		break;$(13_10)	}$(13_10)}"
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