draw_set_font(font);
draw_set_color(colour);
draw_set_halign(halign);
draw_set_valign(valign);

draw_self();

draw_text_transformed(x, y + 10, text, image_xscale, image_yscale, 0);