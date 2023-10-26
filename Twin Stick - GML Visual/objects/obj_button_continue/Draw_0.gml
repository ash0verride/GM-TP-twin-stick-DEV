/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1D73AFD3
/// @DnDComment : // Sets the buttons draw options
/// @DnDArgument : "font" "font"
draw_set_font(font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5AD9171D
/// @DnDArgument : "color" "colour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(colour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 30B27BA2
/// @DnDArgument : "halign" "halign"
/// @DnDArgument : "valign" "valign"
draw_set_halign(halign);
draw_set_valign(valign);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2C3AC5CC
/// @DnDComment : // Draws the button
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 11E5798E
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
/// @DnDHash : 067CDEB7
/// @DnDComment : // Returns the draw options to defaults
/// @DnDArgument : "color" "c_white"
draw_set_colour(c_white & $ffffff);
var l067CDEB7_0=(c_white >> 24);
draw_set_alpha(l067CDEB7_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 04E3E189
draw_set_halign(fa_left);
draw_set_valign(fa_top);