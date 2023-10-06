/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14B5C35A
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 35BE62F1
	/// @DnDParent : 14B5C35A
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 68E997B5
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "font" "font_1"
	draw_set_font(font_1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 17B0452A
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "color" "colour_1"
	draw_set_colour(colour_1 & $ffffff);
	var l17B0452A_0=(colour_1 >> 24);
	draw_set_alpha(l17B0452A_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 64735122
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "alpha" "image_alpha"
	draw_set_alpha(image_alpha);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 19F8BA38
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "halign" "halign"
	/// @DnDArgument : "valign" "valign"
	draw_set_halign(halign);
	draw_set_valign(valign);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 794B0554
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-64"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "image_xscale"
	/// @DnDArgument : "yscale" "image_yscale"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "text_1"
	/// @DnDArgument : "angle" "image_angle"
	draw_text_transformed(x + 0, y + -64, "" + string(text_1), image_xscale, image_yscale, image_angle);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 667AD71D
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "font" "font_2"
	draw_set_font(font_2);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7467C358
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "color" "colour_2"
	draw_set_colour(colour_2 & $ffffff);
	var l7467C358_0=(colour_2 >> 24);
	draw_set_alpha(l7467C358_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 2BE1F24E
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "alpha" "image_alpha"
	draw_set_alpha(image_alpha);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 7F50DA5D
	/// @DnDParent : 14B5C35A
	/// @DnDArgument : "y" "32"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "text_2"
	draw_text_transformed(0, y + 32, "" + string(text_2), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5A47BB7F
	/// @DnDParent : 14B5C35A
	draw_set_alpha(1);
}