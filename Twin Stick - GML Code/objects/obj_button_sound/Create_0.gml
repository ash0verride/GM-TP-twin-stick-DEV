if (!variable_global_exists("audio_volume"))
{
	global.audio_volume = 1;
}

if (global.audio_volume > 0)
{
	global.audio_volume = 1;
	image_index = 0;
}
else
{
	global.audio_volume = 0;
	image_index = 1;
}

audio_set_master_gain(0, global.audio_volume);

target_scale = 1.0;
scale_rate = 0.1;
is_pressed = false;