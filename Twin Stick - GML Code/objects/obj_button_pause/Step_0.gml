x = camera_get_view_x(view_camera[0]) + 1870;
y = camera_get_view_y(view_camera[0]) + 50;

if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !obj_game_manager.was_paused)
{
	if (keyboard_check_pressed(vk_escape))
	{
		obj_game_manager.pause_game();
		is_pressed = true;
		target_scale = 0.9;
		scale_rate = 0.9;
	}
	else
	{
		var _max_pads = gamepad_get_device_count();

		for (var _i = 0; _i < _max_pads; _i++)
		{
			if (gamepad_is_connected(_i))
			{		
				if (gamepad_button_check_pressed(_i, gp_start))
				{
					obj_game_manager.pause_game();
					is_pressed = true;
					target_scale = 0.9;
					scale_rate = 0.9;
				}
			}
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
			is_pressed = false;
			scale_rate = 0.1;
		}
		else
		{
			target_scale = 1.0;	
		}
	}
}