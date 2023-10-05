var _max_pads = gamepad_get_device_count();

for (var _i = 0; _i < _max_pads; _i++)
{
	if (gamepad_is_connected(_i))
	{		
		if (gamepad_button_check_pressed(_i, gp_face1) || gamepad_button_check_pressed(_i, gp_start))
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
			room_goto(rm_arena);
		}
		else
		{
			target_scale = 1.0;	
		}
	}
}