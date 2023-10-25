/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D58BE6C
/// @DnDArgument : "var" "is_highscore_table"
/// @DnDArgument : "value" "true"
if(is_highscore_table == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1446DD97
	/// @DnDParent : 5D58BE6C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "highscores_alpha_target"
	highscores_alpha_target = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 65CF4678
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 226A3829
	/// @DnDParent : 65CF4678
	/// @DnDArgument : "var" "highscores_alpha_target"
	highscores_alpha_target = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13A2214E
/// @DnDArgument : "expr" "lerp(highscores_alpha, highscores_alpha_target, 0.1)"
/// @DnDArgument : "var" "highscores_alpha"
highscores_alpha = lerp(highscores_alpha, highscores_alpha_target, 0.1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03949314
/// @DnDArgument : "var" "highscores_alpha"
/// @DnDArgument : "not" "1"
if(!(highscores_alpha == 0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1F8A200D
	/// @DnDParent : 03949314
	/// @DnDArgument : "function" "draw_set_color"
	/// @DnDArgument : "arg" "c_black"
	draw_set_color(c_black);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5241EF71
	/// @DnDParent : 03949314
	/// @DnDArgument : "alpha" "0.6 * highscores_alpha"
	draw_set_alpha(0.6 * highscores_alpha);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 1B94E326
	/// @DnDParent : 03949314
	/// @DnDArgument : "x1" "room_width / 4"
	/// @DnDArgument : "y1" "room_width / 8 - 20"
	/// @DnDArgument : "x2" "room_width / 4 * 3"
	/// @DnDArgument : "y2" "room_height / 8 * 6 + 20"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(room_width / 4, room_width / 8 - 20, room_width / 4 * 3, room_height / 8 * 6 + 20, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 52861A79
	/// @DnDParent : 03949314
	/// @DnDArgument : "alpha" "1 * highscores_alpha"
	draw_set_alpha(1 * highscores_alpha);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 386DD4A3
	/// @DnDParent : 03949314
	/// @DnDArgument : "font" "font_1"
	draw_set_font(font_1);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 195314A2
	/// @DnDParent : 03949314
	/// @DnDArgument : "function" "draw_set_color"
	/// @DnDArgument : "arg" "colour"
	draw_set_color(colour);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 38FD4712
	/// @DnDParent : 03949314
	/// @DnDArgument : "halign" "halign"
	/// @DnDArgument : "valign" "valign"
	draw_set_halign(halign);
	draw_set_valign(valign);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0EED9539
	/// @DnDParent : 03949314
	/// @DnDArgument : "x" "room_width / 2"
	/// @DnDArgument : "y" "room_height / 5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "text"
	draw_text(room_width / 2, room_height / 5,  + string(text));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 57C1B087
	/// @DnDParent : 03949314
	/// @DnDArgument : "font" "font_2"
	draw_set_font(font_2);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 25BA6AC7
	/// @DnDParent : 03949314
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4EA39B27
		/// @DnDParent : 25BA6AC7
		/// @DnDArgument : "x" "room_width / 2"
		/// @DnDArgument : "y" "room_height / 3 + (48 * _i)"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "highscores[_i]"
		draw_text(room_width / 2, room_height / 3 + (48 * _i),  + string(highscores[_i]));
	}

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 77452BD2
	/// @DnDParent : 03949314
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 532DD636
	/// @DnDParent : 03949314
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}