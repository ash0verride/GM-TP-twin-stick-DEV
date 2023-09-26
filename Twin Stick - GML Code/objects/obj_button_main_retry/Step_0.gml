if (gamepad_is_connected(0))
{		
	if (gamepad_button_check(0, gp_face1))
	{
		room_restart();
	}
}