/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22A05ADD
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 0A5A394D
	/// @DnDParent : 22A05ADD
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 547A26FD
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "font" "font_1"
	draw_set_font(font_1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 59CFD47B
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "color" "colour_1"
	draw_set_colour(colour_1 & $ffffff);
	var l59CFD47B_0=(colour_1 >> 24);
	draw_set_alpha(l59CFD47B_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 4FFF6656
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "alpha" "image_alpha"
	draw_set_alpha(image_alpha);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 5F3BA4B6
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "halign" "halign"
	/// @DnDArgument : "valign" "valign"
	draw_set_halign(halign);
	draw_set_valign(valign);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 515EF58E
	/// @DnDParent : 22A05ADD
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
	/// @DnDHash : 247CCDB7
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "font" "font_2"
	draw_set_font(font_2);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7819689E
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "color" "colour_2"
	draw_set_colour(colour_2 & $ffffff);
	var l7819689E_0=(colour_2 >> 24);
	draw_set_alpha(l7819689E_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 1B49BBE3
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "alpha" "image_alpha"
	draw_set_alpha(image_alpha);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 12EAA930
	/// @DnDParent : 22A05ADD
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "32"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "image_xscale"
	/// @DnDArgument : "yscale" "image_yscale"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "text_2"
	/// @DnDArgument : "angle" "image_angle"
	draw_text_transformed(x + 0, y + 32, "" + string(text_2), image_xscale, image_yscale, image_angle);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5D407EC1
	/// @DnDParent : 22A05ADD
	draw_set_alpha(1);
}