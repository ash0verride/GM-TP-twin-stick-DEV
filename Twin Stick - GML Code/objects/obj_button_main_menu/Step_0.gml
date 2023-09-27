var _max_pads = gamepad_get_device_count();

for (var _i = 0; _i < _max_pads; _i++)
{
	if (gamepad_is_connected(_i))
	{		
		if (gamepad_button_check(_i, gp_face2))
		{
			room_goto(rm_main_menu);
		}
	}
}