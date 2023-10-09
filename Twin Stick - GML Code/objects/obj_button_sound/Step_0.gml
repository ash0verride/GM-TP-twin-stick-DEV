var _max_pads = gamepad_get_device_count();

for (var _i = 0; _i < _max_pads; _i++)
{
	if (gamepad_is_connected(_i))
	{		
		if (gamepad_button_check_pressed(_i, gp_select))
		{
			is_pressed = true;
			target_scale = 0.9;
			scale_rate = 0.9;
		}
	}
}

if (image_xscale != target_scale || image_yscale != target_scale)
{
	image_xscale = lerp(image_xscale, target_scale, scale_rate);
	image_yscale = lerp(image_yscale, target_scale, scale_rate);
}

if (is_pressed)
{
	if (image_xscale == target_scale && image_yscale == target_scale)
	{
		if (image_xscale == 1 && image_yscale == 1)
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
				
				var _button_push = audio_play_sound(snd_menu_button, 100, false);
			}
			
			audio_set_master_gain(0, global.audio_volume);
			
			is_pressed = false;
			scale_rate = 0.1;
		}
		else
		{
			target_scale = 1.0;	
		}
	}
}