if (obj_game_manager.curr_game_state != GAME_STATE.PAUSED)
{
	hspeed *= speed_dropoff;
	vspeed *= speed_dropoff;

	if (obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
	{
		var _max_pads = gamepad_get_device_count();

		for (var _i = 0; _i < _max_pads; _i++)
		{
		    if (gamepad_is_connected(_i))
		    {
		        gamepad_set_axis_deadzone(_i, controller_deadzone);
		    }
		}

		if (player_local_id == 0)
		{
			if (keyboard_check(ord("W")) || keyboard_check(vk_up))
			{
				vspeed -= move_speed;
			}
	
			if (keyboard_check(ord("A")) || keyboard_check(vk_left))
			{
				hspeed -= move_speed;
			}
	
			if (keyboard_check(ord("S")) || keyboard_check(vk_down))
			{
				vspeed += move_speed;
			}
	
			if (keyboard_check(ord("D")) || keyboard_check(vk_right))
			{
				hspeed += move_speed;
			}
	
			if (mouse_x != mouse_prev_x || mouse_y != mouse_prev_y)
			{
				is_mouse_aiming = true;
			}
			else if (gamepad_is_connected(0))
			{
				if (gamepad_axis_value(0, gp_axisrv) != 0 || gamepad_axis_value(0, gp_axisrh) != 0)
				{
					is_mouse_aiming = false;
				}
			}
	
			if (is_mouse_aiming)
			{
				var _new_dir = point_direction(x, y, mouse_x, mouse_y);
				var _delta_dir = abs(_new_dir - gun_angle)
	
				if (_delta_dir >= 180)
				{
					if (gun_angle > 180)
					{
						gun_angle -= 360;
					}
					else
					{
						gun_angle += 360;
					}
				}
	
				gun_angle = lerp(gun_angle, _new_dir, rotation_speed);
			}
	
			if (keyboard_check(vk_space) || keyboard_check(vk_enter) || mouse_check_button(mb_left))
			{
				create_projectile();
			}
		}
		else
		{
			is_mouse_aiming = false;
		}

		if (gamepad_is_connected(player_local_id))
		{	
			vspeed += move_speed * gamepad_axis_value(player_local_id, gp_axislv);
			hspeed += move_speed * gamepad_axis_value(player_local_id, gp_axislh);
	
			var _look_x = gamepad_axis_value(player_local_id, gp_axisrv);
			var _look_y = -gamepad_axis_value(player_local_id, gp_axisrh);

			if (_look_x != 0 || _look_y != 0)
			{
				var _new_dir = point_direction(0, 0, _look_x, _look_y) - 90;
				var _delta_dir = abs(_new_dir - gun_angle)
	
				if (_delta_dir > 180)
				{
					if (gun_angle > 180)
					{
						gun_angle -= 360;
					}
					else
					{
						gun_angle += 360;
					}
				}
	
				gun_angle = lerp(gun_angle, _new_dir, rotation_speed);
			}
	
			if (gamepad_button_check(player_local_id, gp_shoulderrb))
			{
				create_projectile();
			}
		}
		
		var _delta_body_dir = abs(body_angle - direction)
	
		if (_delta_body_dir >= 180)
		{
			if (body_angle > 180)
			{
				body_angle -= 360;
			}
			else
			{
				body_angle += 360;
			}
		}
		
		body_angle = lerp(body_angle, direction, rotation_speed * 0.5);
		image_angle = body_angle;
	}
}