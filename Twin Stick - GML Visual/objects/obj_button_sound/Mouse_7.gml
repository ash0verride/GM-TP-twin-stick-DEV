if (image_index == 0)
{
	global.audio_volume = 0;
	image_index = 1;
}
else
{
	global.audio_volume = 1;
	image_index = 0;
}

audio_set_master_gain(0, global.audio_volume);