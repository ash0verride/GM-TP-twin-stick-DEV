/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 18F561D2
/// @DnDComment : // Sets the buttons draw options
/// @DnDArgument : "font" "font"
draw_set_font(font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 58A24B39
/// @DnDArgument : "color" "colour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(colour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0D57460D
/// @DnDArgument : "halign" "halign"
/// @DnDArgument : "valign" "valign"
draw_set_halign(halign);
draw_set_valign(valign);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 1766C1B6
/// @DnDComment : // Draws the button
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 367E2F9B
/// @DnDComment : // Draws the buttons text scaled
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "image_xscale"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + 10, "" + string(text), image_xscale, image_yscale, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 09E51073
/// @DnDComment : // Returns the draw options to defaults
/// @DnDArgument : "color" "c_white"
draw_set_colour(c_white & $ffffff);
var l09E51073_0=(c_white >> 24);
draw_set_alpha(l09E51073_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 23B65644
draw_set_halign(fa_left);
draw_set_valign(fa_top);