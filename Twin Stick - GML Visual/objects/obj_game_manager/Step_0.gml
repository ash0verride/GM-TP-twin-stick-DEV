/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75D9E134
/// @DnDComment : // Checks to see if the game is playing
/// @DnDArgument : "var" "curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 09AE7C54
	/// @DnDComment : // Checks for when new wave of enemies should be spawned$(13_10)// condition depends of if there are no enimes in the room$(13_10)// the current wave is not 0$(13_10)// and there are no banners present witin the room either
	/// @DnDParent : 75D9E134
	/// @DnDArgument : "expr" "instance_number(obj_enemy) <= 0 && curr_wave != 0 && !instance_exists(obj_banner_wave_clear) && !instance_exists(obj_banner_wave_incoming)"
	if(instance_number(obj_enemy) <= 0 && curr_wave != 0 && !instance_exists(obj_banner_wave_clear) && !instance_exists(obj_banner_wave_incoming))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BBD754D
		/// @DnDComment : // Check for if a new wave is called
		/// @DnDParent : 09AE7C54
		/// @DnDArgument : "var" "was_new_wave"
		/// @DnDArgument : "value" "true"
		if(was_new_wave == true)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70CBC7FA
			/// @DnDComment : // Variable that is used to check spawner queues are empty
			/// @DnDParent : 6BBD754D
			/// @DnDArgument : "var" "_is_queue_empty"
			/// @DnDArgument : "value" "true"
			var _is_queue_empty = true;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 784621F9
			/// @DnDComment : // Loops through all the spawners
			/// @DnDApplyTo : {obj_enemy_spawner}
			/// @DnDParent : 6BBD754D
			with(obj_enemy_spawner) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6A98D978
				/// @DnDComment : // Checks if queue has more spawns to come
				/// @DnDParent : 784621F9
				/// @DnDArgument : "var" "spawn_queue"
				/// @DnDArgument : "op" "2"
				if(spawn_queue > 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0031F9ED
					/// @DnDComment : // Sets variable to false indicating queue is not empty
					/// @DnDParent : 6A98D978
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "_is_queue_empty"
					_is_queue_empty = false;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6105016C
			/// @DnDComment : // Checks if queue's were empty
			/// @DnDParent : 6BBD754D
			/// @DnDArgument : "var" "_is_queue_empty"
			/// @DnDArgument : "value" "true"
			if(_is_queue_empty == true)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3282DAFE
				/// @DnDComment : // Checks if the current wave is less than max waves
				/// @DnDParent : 6105016C
				/// @DnDArgument : "var" "curr_wave"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "max_levels"
				if(curr_wave < max_levels)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5EFF7AEE
					/// @DnDComment : // Increments the current wave 
					/// @DnDParent : 3282DAFE
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "curr_wave"
					curr_wave += 1;
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 4DF9074E
					/// @DnDComment : // Runs the wave cleared fucction spawning the wave clear banner
					/// @DnDParent : 3282DAFE
					/// @DnDArgument : "function" "wave_cleared"
					wave_cleared();
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D557131
					/// @DnDComment : // Sets the check for new wave to false
					/// @DnDParent : 3282DAFE
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "was_new_wave"
					was_new_wave = false;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 19EE1BF8
				/// @DnDParent : 6105016C
				else
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 2250C54F
					/// @DnDComment : // Calls win game function that shows the template complete banner
					/// @DnDParent : 19EE1BF8
					/// @DnDArgument : "function" "win_game"
					win_game();
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 134DCD1D
		/// @DnDParent : 09AE7C54
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20B41717
			/// @DnDComment : // Sets the check for new wave to true
			/// @DnDParent : 134DCD1D
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "was_new_wave"
			was_new_wave = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 42FA1E71
	/// @DnDParent : 75D9E134
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E5295E3
		/// @DnDComment : // Checks if the current wave is 0 (game start)
		/// @DnDParent : 42FA1E71
		/// @DnDArgument : "var" "curr_wave"
		if(curr_wave == 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06EA0A6D
			/// @DnDComment : // Checks if the start timer has run down yet
			/// @DnDParent : 7E5295E3
			/// @DnDArgument : "var" "start_time"
			/// @DnDArgument : "op" "3"
			if(start_time <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3DE390F3
				/// @DnDComment : // Increments the current wave
				/// @DnDParent : 06EA0A6D
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "curr_wave"
				curr_wave += 1;
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 33649716
				/// @DnDComment : // Runs the wave incoming function
				/// @DnDParent : 06EA0A6D
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "function" "wave_incoming"
				var wave_incoming();
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 54C2E751
			/// @DnDParent : 7E5295E3
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4EF6F0F6
				/// @DnDComment : // Decreases the start time variable by 1 frame
				/// @DnDParent : 54C2E751
				/// @DnDArgument : "expr" "-delta_time / 1000000"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "start_time"
				start_time += -delta_time / 1000000;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10436C57
	/// @DnDComment : // Loops through the players positions and adds them to the camera's position$(13_10)	// done this way incase more than 1 player is used later and value can be manipulated by the player count
	/// @DnDInput : 4
	/// @DnDParent : 75D9E134
	/// @DnDArgument : "var" "_x_adjust"
	/// @DnDArgument : "value" "room_width / 2"
	/// @DnDArgument : "var_1" "_y_adjust"
	/// @DnDArgument : "value_1" "room_height / 2"
	/// @DnDArgument : "var_2" "_cam_x"
	/// @DnDArgument : "value_2" "0"
	/// @DnDArgument : "var_3" "_cam_y"
	/// @DnDArgument : "value_3" "0"
	var _x_adjust = room_width / 2;
	var _y_adjust = room_height / 2;
	var _cam_x = 0;
	var _cam_y = 0;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 16F33483
	/// @DnDComment : // Loops through the players positions and adds them to the camera's position$(13_10)// done this way incase more than 1 player is used later and value can be manipulated by the player count
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 75D9E134
	with(obj_player) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AE8F8E7
		/// @DnDInput : 2
		/// @DnDParent : 16F33483
		/// @DnDArgument : "expr" "obj_player.x"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "obj_player.y"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "_cam_x"
		/// @DnDArgument : "var_1" "_cam_y"
		_cam_x += obj_player.x;
		_cam_y += obj_player.y;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5077AFA3
	/// @DnDComment : // Clamps the camera position to stay witin the games play area
	/// @DnDInput : 2
	/// @DnDParent : 75D9E134
	/// @DnDArgument : "expr" "clamp(_cam_x, _x_adjust, arena_grid_width * cell_width - _x_adjust)"
	/// @DnDArgument : "expr_1" "clamp(_cam_y, _y_adjust, arena_grid_height * cell_height - _y_adjust)"
	/// @DnDArgument : "var" "_cam_x"
	/// @DnDArgument : "var_1" "_cam_y"
	_cam_x = clamp(_cam_x, _x_adjust, arena_grid_width * cell_width - _x_adjust);
	_cam_y = clamp(_cam_y, _y_adjust, arena_grid_height * cell_height - _y_adjust);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EB14C78
	/// @DnDComment : // Moves the camera positon based on the room dimensions
	/// @DnDInput : 2
	/// @DnDParent : 75D9E134
	/// @DnDArgument : "expr" "-_x_adjust"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-_y_adjust"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "_cam_x"
	/// @DnDArgument : "var_1" "_cam_y"
	_cam_x += -_x_adjust;
	_cam_y += -_y_adjust;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 75D4BAE1
	/// @DnDComment : // Sets the camera view position
	/// @DnDInput : 3
	/// @DnDParent : 75D9E134
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "_cam_x"
	/// @DnDArgument : "arg_2" "_cam_y"
	camera_set_view_pos(view_camera[0], _cam_x, _cam_y);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 74D26984
	/// @DnDComment : // Moves the game manager position to the cameras x and y position
	/// @DnDInput : 2
	/// @DnDParent : 75D9E134
	/// @DnDArgument : "value" "_cam_x"
	/// @DnDArgument : "value_1" "_cam_y"
	/// @DnDArgument : "instvar_1" "1"
	x = _cam_x;
	y = _cam_y;
}