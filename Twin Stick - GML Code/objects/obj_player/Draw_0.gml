draw_sprite_ext(spr_player_shadow, 0,x, y, 1.0, 1.0, body_angle, c_white, image_alpha);
if (is_flashed)
{
	draw_sprite_ext(spr_player_gun_shadow, 0, x, y, 1.0, 1.0, gun_angle, c_white, image_alpha);
}

image_index = is_flashed;
draw_self();

if (!is_flashed)
{
	draw_sprite_ext(spr_player_gun_shadow, 0,x, y, 1.0, 1.0, gun_angle, c_white, image_alpha);
}
draw_sprite_ext(spr_player_gun, is_flashed,x, y, 1.0, 1.0, gun_angle, c_white, image_alpha);