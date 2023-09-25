hspeed *= move_drag;
vspeed *= move_drag;

if (obj_game_manager.curr_game_type == GAME_TYPE.SINGLE_PLAYER)
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
	
	if (keyboard_check(vk_space) || keyboard_check(vk_enter))
	{
		
	}
}
else
{
	if (player_id == 0)
	{
		if (keyboard_check(ord("W")))
		{
			
		}
	
		if (keyboard_check(ord("A")))
		{
		
		}
	
		if (keyboard_check(ord("S")))
		{
		
		}
	
		if (keyboard_check(ord("D")))
		{
		
		}
		if (keyboard_check(vk_space))
		{
		
		}
	}
	else if (player_id == 1)
	{
		if (keyboard_check(vk_up))
		{
		
		}
	
		if (keyboard_check(vk_left))
		{
		
		}
	
		if (keyboard_check(vk_down))
		{
		
		}
	
		if (keyboard_check(vk_right))
		{
		
		}
		
		if (keyboard_check(vk_enter))
		{
		
		}
		
		if (keyboard_check(vk_backspace))
		{
			
		}
		
		if (keyboard_check(vk_shift))
		{
			
		}
	}
}

if (gamepad_is_connected(player_id))
{
		
}

if (x < 250 || x > (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - 250)
{
	x = clamp(x, 250, (obj_game_manager.arena_grid_width * obj_game_manager.cell_width) - 250);
	hspeed *= -0.5;
}

if (y < 250 || y > (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - 250)
{
	y = clamp(y, 250, (obj_game_manager.arena_grid_height * obj_game_manager.cell_height) - 250);
	vspeed *= -0.5;
}