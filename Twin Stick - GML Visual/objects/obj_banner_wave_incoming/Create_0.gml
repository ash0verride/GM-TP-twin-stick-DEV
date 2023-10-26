/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50D56AD2
/// @DnDComment : // Variable for how long the banner will display for before fading out
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "banner_life	"
banner_life	 = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 586BD02F
/// @DnDComment : // Variable for storing the objects alpha
/// @DnDArgument : "expr" "image_alpha"
/// @DnDArgument : "var" "banner_alpha"
banner_alpha = image_alpha;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13EB1410
/// @DnDComment : // Variables for the wave incoming text
/// @DnDInput : 5
/// @DnDArgument : "expr" ""INCOMING WAVE " + string(obj_game_manager.curr_wave)"
/// @DnDArgument : "expr_1" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "expr_2" "c_red"
/// @DnDArgument : "expr_3" "fa_center"
/// @DnDArgument : "expr_4" "fa_middle"
/// @DnDArgument : "var" "text_1"
/// @DnDArgument : "var_1" "font_1"
/// @DnDArgument : "var_2" "colour_1"
/// @DnDArgument : "var_3" "halign"
/// @DnDArgument : "var_4" "valign"
text_1 = "INCOMING WAVE " + string(obj_game_manager.curr_wave);
font_1 = fnt_luckiest_guy_96_outline;
colour_1 = c_red;
halign = fa_center;
valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 256417BD
/// @DnDComment : // Variable for the wave incoming sub text
/// @DnDInput : 3
/// @DnDArgument : "expr" ""GET READY!""
/// @DnDArgument : "expr_1" "fnt_luckiest_guy_24"
/// @DnDArgument : "expr_2" "c_white"
/// @DnDArgument : "var" "text_2"
/// @DnDArgument : "var_1" "font_2"
/// @DnDArgument : "var_2" "colour_2"
text_2 = "GET READY!";
font_2 = fnt_luckiest_guy_24;
colour_2 = c_white;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5121A87B
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });