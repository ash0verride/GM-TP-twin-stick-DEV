/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 629F68A1
/// @DnDComment : // Variable for how long the banner will display for before fading out
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "banner_life	"
banner_life	 = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34322D15
/// @DnDComment : // Variable for storing the objects alpha
/// @DnDArgument : "expr" "image_alpha"
/// @DnDArgument : "var" "banner_alpha"
banner_alpha = image_alpha;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CE7689D
/// @DnDComment : // Variables for the wave clear text
/// @DnDInput : 5
/// @DnDArgument : "expr" ""WAVE CLEAR""
/// @DnDArgument : "expr_1" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "expr_2" "c_green"
/// @DnDArgument : "expr_3" "fa_center"
/// @DnDArgument : "expr_4" "fa_middle"
/// @DnDArgument : "var" "text_1"
/// @DnDArgument : "var_1" "font_1"
/// @DnDArgument : "var_2" "colour_1"
/// @DnDArgument : "var_3" "halign"
/// @DnDArgument : "var_4" "valign"
text_1 = "WAVE CLEAR";
font_1 = fnt_luckiest_guy_96_outline;
colour_1 = c_green;
halign = fa_center;
valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33030F8B
/// @DnDComment : // Variable for the wave clear sub text
/// @DnDInput : 3
/// @DnDArgument : "expr" ""LOOKING NEAT BUT MORE ARE COMING""
/// @DnDArgument : "expr_1" "fnt_luckiest_guy_24"
/// @DnDArgument : "expr_2" "c_white"
/// @DnDArgument : "var" "text_2"
/// @DnDArgument : "var_1" "font_2"
/// @DnDArgument : "var_2" "colour_2"
text_2 = "LOOKING NEAT BUT MORE ARE COMING";
font_2 = fnt_luckiest_guy_24;
colour_2 = c_white;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 67867AA3
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });