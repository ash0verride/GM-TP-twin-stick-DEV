/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E2F4AD8
/// @DnDArgument : "expr" ""INCOMING WAVE " + string(obj_game_manager.curr_wave)"
/// @DnDArgument : "var" "text_1"
text_1 = "INCOMING WAVE " + string(obj_game_manager.curr_wave);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5121A87B
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });