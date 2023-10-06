text_1 = "YOU LOSE";
text_2 = "";
player_score = 0;
font_1 = fnt_luckiest_guy_96_outline;
font_2 = fnt_luckiest_guy_36_outline;
colour = c_white;
halign = fa_center;
valign = fa_middle;

player_score = obj_player.player_score;
text_2 = "SCORE: " + string(player_score);

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

var _is_swapping = false;
var _stored_score = -1;

for (var _i = 0; _i < 10; _i ++)
{
	if (highscores[_i] < player_score && !_is_swapping)
	{
		_is_swapping = true;
		_stored_score = player_score;
	}
	
	if (_is_swapping)
	{
		var _next_swap = highscores[_i];
		highscores[_i] = _stored_score;
		_stored_score = _next_swap;
	}
}

buffer_seek(high_score_buffer, buffer_seek_start, 0);
	
for (var _i = 0; _i < 10; _i ++)
{
	buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
}

buffer_save(high_score_buffer, "TWIN_STICK_HS.sav");