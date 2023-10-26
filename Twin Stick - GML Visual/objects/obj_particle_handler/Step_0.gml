/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25743A1E
/// @DnDComment : // Checks if owner has been set
/// @DnDArgument : "var" "owner"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(owner == noone))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 491A5628
	/// @DnDComment : // Checks if dust particles
	/// @DnDParent : 25743A1E
	/// @DnDArgument : "var" "is_dust"
	/// @DnDArgument : "value" "true"
	if(is_dust == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 478C3304
		/// @DnDComment : // Checks if the game state is not paused
		/// @DnDParent : 491A5628
		/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "GAME_STATE.PAUSED"
		if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C2FBD3A
			/// @DnDComment : // Sets target alpha from speed
			/// @DnDParent : 478C3304
			/// @DnDArgument : "expr" "owner.speed / owner.max_speed"
			/// @DnDArgument : "var" "target_alpha"
			target_alpha = owner.speed / owner.max_speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0040F548
			/// @DnDComment : // Lerps the alpha to target
			/// @DnDParent : 478C3304
			/// @DnDArgument : "expr" "lerp(current_alpha, target_alpha, 0.1)"
			/// @DnDArgument : "var" "current_alpha"
			current_alpha = lerp(current_alpha, target_alpha, 0.1);
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3D636CE1
		/// @DnDComment : // Sets the dusts alpha
		/// @DnDInput : 3
		/// @DnDParent : 491A5628
		/// @DnDArgument : "function" "part_system_color"
		/// @DnDArgument : "arg" "particle_sys"
		/// @DnDArgument : "arg_1" "c_white"
		/// @DnDArgument : "arg_2" "current_alpha"
		part_system_color(particle_sys, c_white, current_alpha);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61C990B7
		/// @DnDComment : // Stores the direction angle as a real variable
		/// @DnDParent : 491A5628
		/// @DnDArgument : "var" "_new_angle"
		/// @DnDArgument : "value" "real(owner.direction)"
		var _new_angle = real(owner.direction);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 03179256
		/// @DnDComment : // Applies angle to particle system
		/// @DnDInput : 2
		/// @DnDParent : 491A5628
		/// @DnDArgument : "function" "part_system_angle"
		/// @DnDArgument : "arg" "particle_sys"
		/// @DnDArgument : "arg_1" "_new_angle + 90"
		part_system_angle(particle_sys, _new_angle + 90);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22798408
		/// @DnDComment : // Converts angle to radians
		/// @DnDParent : 491A5628
		/// @DnDArgument : "var" "_theta"
		/// @DnDArgument : "value" "degtorad(_new_angle)"
		var _theta = degtorad(_new_angle);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DF15AA4
		/// @DnDComment : // Calculates the adjusted repositioned angles from the set offsets and angle
		/// @DnDInput : 2
		/// @DnDParent : 491A5628
		/// @DnDArgument : "var" "_particle_adjust_x"
		/// @DnDArgument : "value" "x_offset * cos(_theta) - y_offset * sin(_theta)"
		/// @DnDArgument : "var_1" "_particle_adjust_y"
		/// @DnDArgument : "value_1" "y_offset * cos(_theta) + x_offset * sin(_theta)"
		var _particle_adjust_x = x_offset * cos(_theta) - y_offset * sin(_theta);
		var _particle_adjust_y = y_offset * cos(_theta) + x_offset * sin(_theta);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 274ED583
		/// @DnDComment : // Updates the position to the adjusted owner positions
		/// @DnDInput : 2
		/// @DnDParent : 491A5628
		/// @DnDArgument : "value" "owner.x + _particle_adjust_x"
		/// @DnDArgument : "value_1" "owner.y - _particle_adjust_y"
		/// @DnDArgument : "instvar_1" "1"
		x = owner.x + _particle_adjust_x;
		y = owner.y - _particle_adjust_y;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6615BD07
	/// @DnDParent : 25743A1E
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F394384
		/// @DnDComment : // Checks if postion should be at an offset
		/// @DnDParent : 6615BD07
		/// @DnDArgument : "var" "is_offset"
		/// @DnDArgument : "value" "true"
		if(is_offset == true)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2EA91589
			/// @DnDComment : // Stores the players gun angle as a real variable
			/// @DnDParent : 2F394384
			/// @DnDArgument : "var" "_new_angle"
			/// @DnDArgument : "value" "real(owner.gun_angle)"
			var _new_angle = real(owner.gun_angle);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 7138A9D0
			/// @DnDComment : // Applies angle to particle system
			/// @DnDInput : 2
			/// @DnDParent : 2F394384
			/// @DnDArgument : "function" "part_system_angle"
			/// @DnDArgument : "arg" "particle_sys"
			/// @DnDArgument : "arg_1" "_new_angle"
			part_system_angle(particle_sys, _new_angle);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5110B29C
			/// @DnDComment : // Converts angle to radians
			/// @DnDParent : 2F394384
			/// @DnDArgument : "var" "_theta"
			/// @DnDArgument : "value" "degtorad(_new_angle)"
			var _theta = degtorad(_new_angle);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 769CB10D
			/// @DnDComment : // Calculates the adjusted repositioned angles from the set offsets and angle
			/// @DnDInput : 2
			/// @DnDParent : 2F394384
			/// @DnDArgument : "var" "_particle_adjust_x"
			/// @DnDArgument : "value" "x_offset * cos(_theta) - y_offset * sin(_theta)"
			/// @DnDArgument : "var_1" "_particle_adjust_y"
			/// @DnDArgument : "value_1" "y_offset * cos(_theta) + x_offset * sin(_theta)"
			var _particle_adjust_x = x_offset * cos(_theta) - y_offset * sin(_theta);
			var _particle_adjust_y = y_offset * cos(_theta) + x_offset * sin(_theta);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 56DFD407
			/// @DnDComment : // Updates the position to the adjusted owner positions
			/// @DnDInput : 2
			/// @DnDParent : 2F394384
			/// @DnDArgument : "value" "owner.x + _particle_adjust_x"
			/// @DnDArgument : "value_1" "owner.y - _particle_adjust_y"
			/// @DnDArgument : "instvar_1" "1"
			x = owner.x + _particle_adjust_x;
			y = owner.y - _particle_adjust_y;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 226FB8A5
		/// @DnDParent : 6615BD07
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 317C0CE2
			/// @DnDComment : // Updates the position to the owner positions
			/// @DnDInput : 2
			/// @DnDParent : 226FB8A5
			/// @DnDArgument : "value" "owner.x"
			/// @DnDArgument : "value_1" "owner.y"
			/// @DnDArgument : "instvar_1" "1"
			x = owner.x;
			y = owner.y;
		}
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5A999823
	/// @DnDComment : // Updats the particle system position to the object position
	/// @DnDInput : 3
	/// @DnDParent : 25743A1E
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0193E1A1
/// @DnDComment : // Checks if the game state is paused
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	/// @DnDAction : YoYo Games.Particles.Pause_Particles
	/// @DnDVersion : 1.1
	/// @DnDHash : 5AC9FEC7
	/// @DnDComment : // Stops updating the particle systems
	/// @DnDParent : 0193E1A1
	/// @DnDArgument : "system" "particle_sys"
	part_system_automatic_update(particle_sys, false);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5047F27E
else
{
	/// @DnDAction : YoYo Games.Particles.Pause_Particles
	/// @DnDVersion : 1.1
	/// @DnDHash : 77C0153E
	/// @DnDComment : // Resumes updating the particle systems
	/// @DnDParent : 5047F27E
	/// @DnDArgument : "system" "particle_sys"
	/// @DnDArgument : "state" "0"
	part_system_automatic_update(particle_sys, true);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A035C83
/// @DnDComment : // Checks if the particle system has finished
/// @DnDArgument : "var" "part_particles_count(particle_sys)"
if(part_particles_count(particle_sys) == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B8E51DF
	/// @DnDParent : 4A035C83
	/// @DnDArgument : "var" "is_dust"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(is_dust == true))
	{
		/// @DnDAction : YoYo Games.Particles.Part_Syst_Destroy
		/// @DnDVersion : 1.1
		/// @DnDHash : 6FB48DB5
		/// @DnDComment : // Cleans up the particle system
		/// @DnDParent : 6B8E51DF
		/// @DnDArgument : "system" "particle_sys"
		part_system_destroy(particle_sys);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 379C5975
		/// @DnDComment : // Destroys the object
		/// @DnDParent : 6B8E51DF
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3F7E3CD8
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C5BAC10
	/// @DnDComment : // Checks if dust particles
	/// @DnDParent : 3F7E3CD8
	/// @DnDArgument : "var" "is_dust"
	/// @DnDArgument : "value" "true"
	if(is_dust == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EF7583F
		/// @DnDComment : // Checks if player dust
		/// @DnDParent : 5C5BAC10
		/// @DnDArgument : "var" "owner.object_index"
		/// @DnDArgument : "value" "obj_player"
		if(owner.object_index == obj_player)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 713B2754
			/// @DnDComment : // Checks if player is dead
			/// @DnDParent : 4EF7583F
			/// @DnDArgument : "var" "owner.player_health"
			/// @DnDArgument : "op" "3"
			if(owner.player_health <= 0)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 40FADF78
				/// @DnDComment : // Checks if the game state is not paused
				/// @DnDParent : 713B2754
				/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "GAME_STATE.PAUSED"
				if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 586CEE92
					/// @DnDComment : // Lerps alpha to 0
					/// @DnDParent : 40FADF78
					/// @DnDArgument : "expr" "lerp(current_alpha, 0, 0.9)"
					/// @DnDArgument : "var" "current_alpha"
					current_alpha = lerp(current_alpha, 0, 0.9);
				}
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 659C4E9A
				/// @DnDComment : // Sets alpha to dust
				/// @DnDInput : 3
				/// @DnDParent : 713B2754
				/// @DnDArgument : "function" "part_system_color"
				/// @DnDArgument : "arg" "particle_sys"
				/// @DnDArgument : "arg_1" "c_white"
				/// @DnDArgument : "arg_2" "current_alpha"
				part_system_color(particle_sys, c_white, current_alpha);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5D6AC104
				/// @DnDComment : // Checks if dust is invisible
				/// @DnDParent : 713B2754
				/// @DnDArgument : "var" "current_alpha"
				/// @DnDArgument : "op" "3"
				if(current_alpha <= 0)
				{
					/// @DnDAction : YoYo Games.Particles.Part_Syst_Destroy
					/// @DnDVersion : 1.1
					/// @DnDHash : 4D315EDA
					/// @DnDComment : // Cleans up the particle system
					/// @DnDParent : 5D6AC104
					/// @DnDArgument : "system" "particle_sys"
					part_system_destroy(particle_sys);
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 3913789E
					/// @DnDComment : // Destroys the object
					/// @DnDParent : 5D6AC104
					instance_destroy();
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 22A8CEBE
		/// @DnDParent : 5C5BAC10
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 457D82BB
			/// @DnDComment : // Checks if enemy dust
			/// @DnDParent : 22A8CEBE
			/// @DnDArgument : "var" "owner.object_index"
			/// @DnDArgument : "value" "obj_enemy"
			if(owner.object_index == obj_enemy)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 04048F41
				/// @DnDComment : // Checks if enemy is dead
				/// @DnDParent : 457D82BB
				/// @DnDArgument : "var" "owner.curr_health"
				/// @DnDArgument : "op" "3"
				if(owner.curr_health <= 0)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2415D95A
					/// @DnDComment : // Checks if the game state is not paused
					/// @DnDParent : 04048F41
					/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
					/// @DnDArgument : "not" "1"
					/// @DnDArgument : "value" "GAME_STATE.PAUSED"
					if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4F37F5B8
						/// @DnDComment : // Lerps alpha to 0
						/// @DnDParent : 2415D95A
						/// @DnDArgument : "expr" "lerp(current_alpha, 0, 0.9)"
						/// @DnDArgument : "var" "current_alpha"
						current_alpha = lerp(current_alpha, 0, 0.9);
					}
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 4A06BBCA
					/// @DnDComment : // Sets alpha to dust
					/// @DnDInput : 3
					/// @DnDParent : 04048F41
					/// @DnDArgument : "function" "part_system_color"
					/// @DnDArgument : "arg" "particle_sys"
					/// @DnDArgument : "arg_1" "c_white"
					/// @DnDArgument : "arg_2" "current_alpha"
					part_system_color(particle_sys, c_white, current_alpha);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 63F4AA48
					/// @DnDComment : // Checks if dust is invisible
					/// @DnDParent : 04048F41
					/// @DnDArgument : "var" "current_alpha"
					/// @DnDArgument : "op" "3"
					if(current_alpha <= 0)
					{
						/// @DnDAction : YoYo Games.Particles.Part_Syst_Destroy
						/// @DnDVersion : 1.1
						/// @DnDHash : 45775693
						/// @DnDComment : // Cleans up the particle system
						/// @DnDParent : 63F4AA48
						/// @DnDArgument : "system" "particle_sys"
						part_system_destroy(particle_sys);
					
						/// @DnDAction : YoYo Games.Instances.Destroy_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 749C5F15
						/// @DnDComment : // Destroys the object
						/// @DnDParent : 63F4AA48
						instance_destroy();
					}
				}
			}
		}
	}
}