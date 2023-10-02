text_1 = "INCOMING WAVE " + string(obj_game_manager.curr_wave);
font_1 = fnt_luckiest_guy_96_outline;
colour_1 = c_red;

text_2 = "HOLD TIGHT AND FIX THE BOT\nPLACE HOLDER TEXT";
font_2 = fnt_luckiest_guy_24;
colour_2 = c_white;

halign = fa_center;
valign = fa_middle;

font_enable_effects(fnt_luckiest_guy_96_outline, true, {
    outlineEnable: true,
    outlineDistance: 4,
    outlineColour: c_black
});