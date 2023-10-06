layer_sequence_create("Instances", room_width / 2, room_height / 2, seq_splash);

is_highscore_table = false;
highscores_alpha = 0.0;
highscores_alpha_target = 0.0;

highscores = [];

for (var _i = 0; _i < 10; _i ++)
{
	highscores[_i] = 0;
}

high_score_buffer = buffer_load("TWIN_STICK_HS.sav");

if(buffer_exists(high_score_buffer))
{
	buffer_seek(high_score_buffer, buffer_seek_start, 0);
	
	for (var _i = 0; _i < 10; _i ++)
	{
		highscores[_i] = buffer_read(high_score_buffer, buffer_u64);
	}
}
else
{
	high_score_buffer = buffer_create(16384, buffer_fixed, 2);
	buffer_seek(high_score_buffer, buffer_seek_start, 0);
	
	for (var _i = 0; _i < 10; _i ++)
	{
		buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
	}
}

text = "HIGH SCORES";
font_1 = fnt_luckiest_guy_96_outline;
font_2 = fnt_luckiest_guy_36_outline;
colour = c_white;
halign = fa_center;
valign = fa_middle;

font_enable_effects(fnt_luckiest_guy_96_outline, true, {
    outlineEnable: true,
    outlineDistance: 4,
    outlineColour: c_black
});

font_enable_effects(fnt_luckiest_guy_36_outline, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black
});

audio_stop_all();
music = audio_play_sound(snd_music_menu_main, 100, true);