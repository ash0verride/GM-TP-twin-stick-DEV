/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1DFED730
/// @DnDComment : // Sets black rectangle behind lose screen
/// @DnDArgument : "color" "c_black"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_black & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 189DDF58
/// @DnDArgument : "alpha" "0.6"
draw_set_alpha(0.6);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 52C01EA5
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
/// @DnDHash : 60D93FF6
/// @DnDComment : // Resets draw options to default
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 086DD603
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 32B6415A
/// @DnDComment : // Draws lose banner sprite
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 011FB999
/// @DnDComment : // Sets the lose banners texts draw options
/// @DnDArgument : "font" "font_1"
draw_set_font(font_1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 192FB572
/// @DnDArgument : "color" "colour"
/// @DnDArgument : "alpha" "false"
draw_set_colour(colour & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0E648E4B
/// @DnDArgument : "halign" "halign"
/// @DnDArgument : "valign" "valign"
draw_set_halign(halign);
draw_set_valign(valign);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 09597C21
/// @DnDComment : // Draws the text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text_1"
draw_text(x + 0, y + -64,  + string(text_1));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5F5802A2
/// @DnDComment : // Sets the sub text font
/// @DnDArgument : "font" "font_2"
draw_set_font(font_2);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 59497278
/// @DnDComment : // Draws the text
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text_2"
draw_text(x + 0, y + 32,  + string(text_2));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 726FB52F
/// @DnDComment : // Returns the draw options to defaults
/// @DnDArgument : "color" "c_white"
/// @DnDArgument : "alpha" "false"
draw_set_colour(c_white & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 512A4F71
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 37E67FA2
draw_set_halign(fa_left);
draw_set_valign(fa_top);