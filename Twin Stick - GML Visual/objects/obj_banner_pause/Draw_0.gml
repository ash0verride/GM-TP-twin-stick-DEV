/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 28F1F633
/// @DnDComment : // Sets black rectangle behind pause screen
/// @DnDArgument : "color" "c_black"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_black & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 08E574ED
/// @DnDArgument : "alpha" "0.6"
draw_set_alpha(0.6);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 72F619DB
/// @DnDArgument : "x1" "- room_width / 2"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "108.5 - room_height / 2"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "room_width / 2"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "108.5 + room_height"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + - room_width / 2, y + 108.5 - room_height / 2, x + room_width / 2, y + 108.5 + room_height, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 22453E8D
/// @DnDComment : // Resets draw options to default
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 754DF486
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5A0302C4
/// @DnDComment : // Draws pause banner sprite
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 26F6C000
/// @DnDComment : // Sets the pause banners texts draw options
/// @DnDArgument : "font" "font"
draw_set_font(font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0C244B8B
/// @DnDArgument : "color" "colour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(colour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1E59CF11
/// @DnDArgument : "halign" "halign"
/// @DnDArgument : "valign" "valign"
draw_set_halign(halign);
draw_set_valign(valign);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 405838A8
/// @DnDComment : // Draws the text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text"
draw_text(x + 0, y + -64,  + string(text));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5F4491F3
/// @DnDComment : // Returns the draw options to defaults
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 06F4350A
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 431DF3EB
draw_set_halign(fa_left);
draw_set_valign(fa_top);