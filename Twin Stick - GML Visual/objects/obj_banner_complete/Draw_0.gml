/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1F9791C4
/// @DnDComment : // Sets black rectangle behind win screen
/// @DnDArgument : "color" "c_black"
draw_set_colour(c_black & $ffffff);
var l1F9791C4_0=(c_black >> 24);
draw_set_alpha(l1F9791C4_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 7B7E231A
/// @DnDArgument : "alpha" "0.6 * image_alpha"
draw_set_alpha(0.6 * image_alpha);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 4D648FCA
/// @DnDArgument : "x1" "-room_width / 2"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "108.5 - room_height / 2"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "room_width / 2"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "108.5 + room_height / 2"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + -room_width / 2, y + 108.5 - room_height / 2, x + room_width / 2, y + 108.5 + room_height / 2, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 31F8B978
/// @DnDComment : // Resets draw options to default
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 067CBE24
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 23539EE7
/// @DnDComment : // Draws complete banner sprite
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6F58585C
/// @DnDComment : // Sets the complete banners texts draw options
/// @DnDArgument : "font" "font_1"
draw_set_font(font_1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 26A98E53
/// @DnDArgument : "color" "colour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(colour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 1EC412DC
/// @DnDArgument : "alpha" "image_alpha"
draw_set_alpha(image_alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 22C7BADE
/// @DnDArgument : "halign" "halign"
/// @DnDArgument : "valign" "valign"
draw_set_halign(halign);
draw_set_valign(valign);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4DA44730
/// @DnDComment : // Draws the text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-96"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text_1"
draw_text(x + 0, y + -96,  + string(text_1));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0BDEDC4E
/// @DnDComment : // Sets the sub text font
/// @DnDArgument : "font" "font_2"
draw_set_font(font_2);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 663D7AD9
/// @DnDComment : // Draws the text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text_2"
draw_text(x + 0, y + 8,  + string(text_2));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3A8BAD9D
/// @DnDComment : // Returns the draw options to defaults
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5AF25866
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0DE3D249
draw_set_halign(fa_left);
draw_set_valign(fa_top);