/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1DFED730
/// @DnDArgument : "color" "$99000000"
draw_set_colour($99000000 & $ffffff);
var l1DFED730_0=($99000000 >> 24);
draw_set_alpha(l1DFED730_0 / $ff);

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
draw_rectangle(x + - room_width / 2, y + 108.5 - room_height / 2, x + room_width / 2, y + 108.5 + room_height, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 086DD603
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 32B6415A
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 011FB999
/// @DnDArgument : "font" "font"
draw_set_font(font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 192FB572
/// @DnDArgument : "color" "colour"
draw_set_colour(colour & $ffffff);
var l192FB572_0=(colour >> 24);
draw_set_alpha(l192FB572_0 / $ff);

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
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-64"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text"
draw_text(x + 0, y + -64,  + string(text));