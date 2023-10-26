/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 340EF971
/// @DnDComment : // Variables for the pause banner text
/// @DnDInput : 5
/// @DnDArgument : "expr" ""PAUSE""
/// @DnDArgument : "expr_1" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "expr_2" "c_white"
/// @DnDArgument : "expr_3" "fa_center"
/// @DnDArgument : "expr_4" "fa_middle"
/// @DnDArgument : "var" "text"
/// @DnDArgument : "var_1" "font"
/// @DnDArgument : "var_2" "colour"
/// @DnDArgument : "var_3" "halign"
/// @DnDArgument : "var_4" "valign"
text = "PAUSE";
font = fnt_luckiest_guy_96_outline;
colour = c_white;
halign = fa_center;
valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 56DCEF30
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });