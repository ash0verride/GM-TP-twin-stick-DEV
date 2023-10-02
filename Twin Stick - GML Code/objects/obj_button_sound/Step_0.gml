var _max_pads = gamepad_get_device_count();

for (var _i = 0; _i < _max_pads; _i++)
{
	if (gamepad_is_connected(_i))
	{		
		if (gamepad_button_check_pressed(_i, gp_select))
		{
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
		}
	}
}