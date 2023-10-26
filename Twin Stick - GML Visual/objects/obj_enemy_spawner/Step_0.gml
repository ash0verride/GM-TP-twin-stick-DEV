/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 056059D3
/// @DnDComment : // Checks the current game is playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40646F47
	/// @DnDComment : // Checks if the spawner has a queue
	/// @DnDParent : 056059D3
	/// @DnDArgument : "var" "spawn_queue"
	/// @DnDArgument : "op" "2"
	if(spawn_queue > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36A55033
		/// @DnDComment : // Checks if the cooldown has run down
		/// @DnDParent : 40646F47
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
			/// @DnDVersion : 1
			/// @DnDHash : 39A50190
			/// @DnDComment : // Checks if the level has not exceded the maximum amount of enemies
			/// @DnDParent : 36A55033
			/// @DnDArgument : "var" "_enemy_count"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "object" "obj_enemy"
			/// @DnDSaveInfo : "object" "obj_enemy"
			var _enemy_count = instance_number(obj_enemy);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F7A6879
			/// @DnDParent : 36A55033
			/// @DnDArgument : "var" "_enemy_count"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "obj_game_manager.max_enemies"
			if(_enemy_count < obj_game_manager.max_enemies)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 474A931E
				/// @DnDComment : // Calls the spawn enemy function 
				/// @DnDParent : 2F7A6879
				/// @DnDArgument : "function" "spawn_enemy"
				spawn_enemy();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6500EAA3
		/// @DnDParent : 40646F47
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CF54441
			/// @DnDComment : // Counts down the spawner cooldown
			/// @DnDParent : 6500EAA3
			/// @DnDArgument : "expr" "-delta_time / 1000000"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "cooldown"
			cooldown += -delta_time / 1000000;
		}
	}
}