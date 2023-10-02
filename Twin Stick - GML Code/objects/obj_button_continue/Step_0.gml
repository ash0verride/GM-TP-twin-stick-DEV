if (obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	if (keyboard_check_pressed(vk_escape))
	{
		obj_game_manager.resume_game();
	}
	else
	{
		var _max_pads = gamepad_get_device_count();

		for (var _i = 0; _i < _max_pads; _i++)
		{
			if (gamepad_is_connected(_i))
			{		
				if (gamepad_button_check_pressed(_i, gp_face1) || gamepad_button_check_pressed(_i, gp_start))
				{
					obj_game_manager.resume_game();
				}
			}
		}
	}
}