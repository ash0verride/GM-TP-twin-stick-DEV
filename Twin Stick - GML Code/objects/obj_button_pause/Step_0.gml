x = camera_get_view_x(view_camera[0]) + 1870;
y = camera_get_view_y(view_camera[0]) + 50;

if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING && !obj_game_manager.was_paused)
{
	if (keyboard_check_pressed(vk_escape))
	{
		obj_game_manager.pause_game();
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
				}
			}
		}
	}
}