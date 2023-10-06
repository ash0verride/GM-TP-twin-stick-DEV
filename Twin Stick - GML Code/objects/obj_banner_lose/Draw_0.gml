draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(x - (room_width / 2), (y + 108.5) - (room_height / 2), x + (room_width / 2), (y + 108.5) + (room_height / 2), false);
draw_set_alpha(1.0);

draw_self();

draw_set_font(font_1);
draw_set_color(colour);
draw_set_halign(halign);
draw_set_valign(valign);

draw_text(x, y - 64, text_1);

draw_set_font(font_2);

draw_text(x, y + 32, text_2);