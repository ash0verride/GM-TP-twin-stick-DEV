var _max_pads = gamepad_get_device_count();

for (var _i = 0; _i < _max_pads; _i++)
{
	if (gamepad_is_connected(_i))
	{	
		if (gamepad_button_check_released(_i, gp_face1) || gamepad_button_check_released(_i, gp_start))
		{
			is_pressed = true;
			target_scale = 0.9;
			scale_rate = 0.9;
			
			// Plays the button pushed sound effect
			sound_button = audio_play_sound(snd_menu_button, 100, false);
			
			global.is_mouse_aiming = false;
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
			// Checks if button sound effect has finished playing
			if (!audio_exists(sound_button))
			{
				room_goto(rm_arena);
			}
		}
		else
		{
			target_scale = 1.0;	
		}
	}
}