/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 07217240
randomize();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 59F595D9
/// @DnDInput : 6
/// @DnDArgument : "var" "grid"
/// @DnDArgument : "function" "mp_grid_create"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "arena_grid_width * grid_rate"
/// @DnDArgument : "arg_3" "arena_grid_height * grid_rate"
/// @DnDArgument : "arg_4" "cell_width / grid_rate"
/// @DnDArgument : "arg_5" "cell_height / grid_rate"
grid = mp_grid_create(0, 0, arena_grid_width * grid_rate, arena_grid_height * grid_rate, cell_width / grid_rate, cell_height / grid_rate);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 21DEC504
/// @DnDArgument : "objectid" "obj_button_pause"
/// @DnDArgument : "layer" ""Popups""
/// @DnDSaveInfo : "objectid" "obj_button_pause"
instance_create_layer(0, 0, "Popups", obj_button_pause);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 0F1FA2C2
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5BE87537
/// @DnDArgument : "target" "music"
/// @DnDArgument : "soundid" "snd_music_menu_main"
/// @DnDArgument : "loop" "1"
/// @DnDArgument : "offset" "0"
/// @DnDSaveInfo : "soundid" "snd_music_menu_main"
music = audio_play_sound(snd_music_menu_main, 0, 1, 1.0, 0, 1.0);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 623B6818
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < arena_grid_width"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < arena_grid_width; _i++) {
	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 32E722BE
	/// @DnDParent : 623B6818
	/// @DnDArgument : "init" "_j = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_j < arena_grid_height"
	/// @DnDArgument : "expr" "_j++"
	for(var _j = 0; _j < arena_grid_height; _j++) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C513E42
		/// @DnDParent : 32E722BE
		/// @DnDArgument : "var" "_i"
		if(_i == 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55DFCF71
			/// @DnDParent : 4C513E42
			/// @DnDArgument : "var" "_j"
			if(_j == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 613C1424
				/// @DnDParent : 55DFCF71
				/// @DnDArgument : "xpos" "_i * cell_width"
				/// @DnDArgument : "ypos" "_j * cell_height"
				/// @DnDArgument : "var" "_new_wall"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_level_wall"
				/// @DnDArgument : "layer" ""Level""
				/// @DnDSaveInfo : "objectid" "obj_level_wall"
				var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 4A0FA5C2
				/// @DnDApplyTo : _new_wall
				/// @DnDParent : 55DFCF71
				with(_new_wall) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 49EE97C8
					/// @DnDParent : 4A0FA5C2
					/// @DnDArgument : "expr" "FACE_TYPE.TOP_LEFT"
					/// @DnDArgument : "var" "curr_face_type"
					curr_face_type = FACE_TYPE.TOP_LEFT;
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 508640ED
					/// @DnDParent : 4A0FA5C2
					/// @DnDArgument : "function" "set_sprite"
					set_sprite();
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 2E6DAF51
			/// @DnDParent : 4C513E42
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4BE3B27F
				/// @DnDParent : 2E6DAF51
				/// @DnDArgument : "var" "_j"
				/// @DnDArgument : "value" "arena_grid_height - 1"
				if(_j == arena_grid_height - 1)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 2F0126D5
					/// @DnDParent : 4BE3B27F
					/// @DnDArgument : "xpos" "_i * cell_width"
					/// @DnDArgument : "ypos" "_j * cell_height"
					/// @DnDArgument : "var" "_new_wall"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "objectid" "obj_level_wall"
					/// @DnDArgument : "layer" ""Level""
					/// @DnDSaveInfo : "objectid" "obj_level_wall"
					var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 6922EAE6
					/// @DnDApplyTo : _new_wall
					/// @DnDParent : 4BE3B27F
					with(_new_wall) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0420D357
						/// @DnDParent : 6922EAE6
						/// @DnDArgument : "expr" "FACE_TYPE.BOTTOM_LEFT"
						/// @DnDArgument : "var" "curr_face_type"
						curr_face_type = FACE_TYPE.BOTTOM_LEFT;
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 75DFEA2E
						/// @DnDParent : 6922EAE6
						/// @DnDArgument : "function" "set_sprite"
						set_sprite();
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 22F58B4C
				/// @DnDParent : 2E6DAF51
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 7F82533F
					/// @DnDParent : 22F58B4C
					/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
					if(gap_count < gap_max && random(1.0) < gap_rate)
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 23FE8BAD
						/// @DnDParent : 7F82533F
						/// @DnDArgument : "xpos" "_i * cell_width"
						/// @DnDArgument : "ypos" "_j * cell_height"
						/// @DnDArgument : "var" "_new_wall"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_level_wall"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_level_wall"
						var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 16E98B23
						/// @DnDApplyTo : _new_wall
						/// @DnDParent : 7F82533F
						with(_new_wall) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6140914A
							/// @DnDParent : 16E98B23
							/// @DnDArgument : "expr" "FACE_TYPE.LEFT_GAP"
							/// @DnDArgument : "var" "curr_face_type"
							curr_face_type = FACE_TYPE.LEFT_GAP;
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 69F840AA
							/// @DnDParent : 16E98B23
							/// @DnDArgument : "function" "set_sprite"
							set_sprite();
						}
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 716C4080
						/// @DnDParent : 7F82533F
						/// @DnDArgument : "xpos" "_new_wall.x - cell_width / 2"
						/// @DnDArgument : "ypos" "_new_wall.y + cell_height / 2"
						/// @DnDArgument : "var" "_new_spawner"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_enemy_spawner"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_enemy_spawner"
						var _new_spawner = instance_create_layer(_new_wall.x - cell_width / 2, _new_wall.y + cell_height / 2, "Level", obj_enemy_spawner);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 541818F9
						/// @DnDApplyTo : _new_spawner
						/// @DnDParent : 7F82533F
						/// @DnDArgument : "expr" "FACE_DIRECTION.LEFT"
						/// @DnDArgument : "var" "curr_face_direction"
						with(_new_spawner) {
						curr_face_direction = FACE_DIRECTION.LEFT;
						
						}
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7F73D68B
						/// @DnDParent : 7F82533F
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "gap_count"
						gap_count += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 4C5311F5
					/// @DnDParent : 22F58B4C
					else
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 30591FC1
						/// @DnDParent : 4C5311F5
						/// @DnDArgument : "xpos" "_i * cell_width"
						/// @DnDArgument : "ypos" "_j * cell_height"
						/// @DnDArgument : "var" "_new_wall"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_level_wall"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_level_wall"
						var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 1C509A7C
						/// @DnDApplyTo : _new_wall
						/// @DnDParent : 4C5311F5
						with(_new_wall) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 642E72FE
							/// @DnDParent : 1C509A7C
							/// @DnDArgument : "expr" "FACE_TYPE.LEFT"
							/// @DnDArgument : "var" "curr_face_type"
							curr_face_type = FACE_TYPE.LEFT;
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 199A8D10
							/// @DnDParent : 1C509A7C
							/// @DnDArgument : "function" "set_sprite"
							set_sprite();
						}
					}
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 223E58DB
		/// @DnDParent : 32E722BE
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20A3A378
			/// @DnDParent : 223E58DB
			/// @DnDArgument : "var" "_i"
			/// @DnDArgument : "value" "arena_grid_width - 1"
			if(_i == arena_grid_width - 1)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7F4C2F81
				/// @DnDParent : 20A3A378
				/// @DnDArgument : "var" "_j"
				if(_j == 0)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 22A7FAA4
					/// @DnDParent : 7F4C2F81
					/// @DnDArgument : "xpos" "_i * cell_width"
					/// @DnDArgument : "ypos" "_j * cell_height"
					/// @DnDArgument : "var" "_new_wall"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "objectid" "obj_level_wall"
					/// @DnDArgument : "layer" ""Level""
					/// @DnDSaveInfo : "objectid" "obj_level_wall"
					var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 0307147F
					/// @DnDApplyTo : _new_wall
					/// @DnDParent : 7F4C2F81
					with(_new_wall) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 41AC124C
						/// @DnDParent : 0307147F
						/// @DnDArgument : "expr" "FACE_TYPE.TOP_RIGHT"
						/// @DnDArgument : "var" "curr_face_type"
						curr_face_type = FACE_TYPE.TOP_RIGHT;
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 4A127970
						/// @DnDParent : 0307147F
						/// @DnDArgument : "function" "set_sprite"
						set_sprite();
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 27B3FE51
				/// @DnDParent : 20A3A378
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5AE28D3E
					/// @DnDParent : 27B3FE51
					/// @DnDArgument : "var" "_j"
					/// @DnDArgument : "value" "arena_grid_height - 1"
					if(_j == arena_grid_height - 1)
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 4F3A86E3
						/// @DnDParent : 5AE28D3E
						/// @DnDArgument : "xpos" "_i * cell_width"
						/// @DnDArgument : "ypos" "_j * cell_height"
						/// @DnDArgument : "var" "_new_wall"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_level_wall"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_level_wall"
						var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 6B20B2EB
						/// @DnDApplyTo : _new_wall
						/// @DnDParent : 5AE28D3E
						with(_new_wall) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 543C225A
							/// @DnDParent : 6B20B2EB
							/// @DnDArgument : "expr" "FACE_TYPE.BOTTOM_RIGHT"
							/// @DnDArgument : "var" "curr_face_type"
							curr_face_type = FACE_TYPE.BOTTOM_RIGHT;
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 3EDE86C0
							/// @DnDParent : 6B20B2EB
							/// @DnDArgument : "function" "set_sprite"
							set_sprite();
						}
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 20A2D127
					/// @DnDParent : 27B3FE51
					else
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 069017B1
						/// @DnDParent : 20A2D127
						/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
						if(gap_count < gap_max && random(1.0) < gap_rate)
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 7909F7AE
							/// @DnDParent : 069017B1
							/// @DnDArgument : "xpos" "_i * cell_width"
							/// @DnDArgument : "ypos" "_j * cell_height"
							/// @DnDArgument : "var" "_new_wall"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "obj_level_wall"
							/// @DnDArgument : "layer" ""Level""
							/// @DnDSaveInfo : "objectid" "obj_level_wall"
							var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 461EF86F
							/// @DnDApplyTo : _new_wall
							/// @DnDParent : 069017B1
							with(_new_wall) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 7AEFDE47
								/// @DnDParent : 461EF86F
								/// @DnDArgument : "expr" "FACE_TYPE.RIGHT_GAP"
								/// @DnDArgument : "var" "curr_face_type"
								curr_face_type = FACE_TYPE.RIGHT_GAP;
							
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 75323834
								/// @DnDParent : 461EF86F
								/// @DnDArgument : "function" "set_sprite"
								set_sprite();
							}
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 2969F507
							/// @DnDParent : 069017B1
							/// @DnDArgument : "xpos" "_new_wall.x + 3 * cell_width / 2"
							/// @DnDArgument : "ypos" "_new_wall.y + cell_height / 2"
							/// @DnDArgument : "var" "_new_spawner"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "obj_enemy_spawner"
							/// @DnDArgument : "layer" ""Level""
							/// @DnDSaveInfo : "objectid" "obj_enemy_spawner"
							var _new_spawner = instance_create_layer(_new_wall.x + 3 * cell_width / 2, _new_wall.y + cell_height / 2, "Level", obj_enemy_spawner);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 4A03D8AB
							/// @DnDApplyTo : _new_spawner
							/// @DnDParent : 069017B1
							/// @DnDArgument : "expr" "FACE_DIRECTION.RIGHT"
							/// @DnDArgument : "var" "curr_face_direction"
							with(_new_spawner) {
							curr_face_direction = FACE_DIRECTION.RIGHT;
							
							}
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5279AB79
							/// @DnDParent : 069017B1
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "expr_relative" "1"
							/// @DnDArgument : "var" "gap_count"
							gap_count += 1;
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 096F7221
						/// @DnDParent : 20A2D127
						else
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 62A19FEE
							/// @DnDParent : 096F7221
							/// @DnDArgument : "xpos" "_i * cell_width"
							/// @DnDArgument : "ypos" "_j * cell_height"
							/// @DnDArgument : "var" "_new_wall"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "obj_level_wall"
							/// @DnDArgument : "layer" ""Level""
							/// @DnDSaveInfo : "objectid" "obj_level_wall"
							var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 52F30E6C
							/// @DnDApplyTo : _new_wall
							/// @DnDParent : 096F7221
							with(_new_wall) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4605E0CD
								/// @DnDParent : 52F30E6C
								/// @DnDArgument : "expr" "FACE_TYPE.RIGHT"
								/// @DnDArgument : "var" "curr_face_type"
								curr_face_type = FACE_TYPE.RIGHT;
							
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 06EF5497
								/// @DnDParent : 52F30E6C
								/// @DnDArgument : "function" "set_sprite"
								set_sprite();
							}
						}
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 04640099
			/// @DnDParent : 223E58DB
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23E1EE36
				/// @DnDParent : 04640099
				/// @DnDArgument : "var" "_j"
				if(_j == 0)
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 1124EB7D
					/// @DnDParent : 23E1EE36
					/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
					if(gap_count < gap_max && random(1.0) < gap_rate)
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 532B9745
						/// @DnDParent : 1124EB7D
						/// @DnDArgument : "xpos" "_i * cell_width"
						/// @DnDArgument : "ypos" "_j * cell_height"
						/// @DnDArgument : "var" "_new_wall"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_level_wall"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_level_wall"
						var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 60A0D62B
						/// @DnDApplyTo : _new_wall
						/// @DnDParent : 1124EB7D
						with(_new_wall) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 01479196
							/// @DnDParent : 60A0D62B
							/// @DnDArgument : "expr" "FACE_TYPE.TOP_GAP"
							/// @DnDArgument : "var" "curr_face_type"
							curr_face_type = FACE_TYPE.TOP_GAP;
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 59CB623A
							/// @DnDParent : 60A0D62B
							/// @DnDArgument : "function" "set_sprite"
							set_sprite();
						}
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 43407824
						/// @DnDParent : 1124EB7D
						/// @DnDArgument : "xpos" "_new_wall.x + cell_width / 2"
						/// @DnDArgument : "ypos" "_new_wall.y - cell_height / 2"
						/// @DnDArgument : "var" "_new_spawner"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_enemy_spawner"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_enemy_spawner"
						var _new_spawner = instance_create_layer(_new_wall.x + cell_width / 2, _new_wall.y - cell_height / 2, "Level", obj_enemy_spawner);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 26F9ED90
						/// @DnDApplyTo : _new_spawner
						/// @DnDParent : 1124EB7D
						/// @DnDArgument : "expr" "FACE_DIRECTION.TOP"
						/// @DnDArgument : "var" "curr_face_direction"
						with(_new_spawner) {
						curr_face_direction = FACE_DIRECTION.TOP;
						
						}
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1A0743A2
						/// @DnDParent : 1124EB7D
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "gap_count"
						gap_count += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 04F8A060
					/// @DnDParent : 23E1EE36
					else
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 774AA11B
						/// @DnDParent : 04F8A060
						/// @DnDArgument : "xpos" "_i * cell_width"
						/// @DnDArgument : "ypos" "_j * cell_height"
						/// @DnDArgument : "var" "_new_wall"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "obj_level_wall"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_level_wall"
						var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 79EAC9C5
						/// @DnDApplyTo : _new_wall
						/// @DnDParent : 04F8A060
						with(_new_wall) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1641BD37
							/// @DnDParent : 79EAC9C5
							/// @DnDArgument : "expr" "FACE_TYPE.TOP"
							/// @DnDArgument : "var" "curr_face_type"
							curr_face_type = FACE_TYPE.TOP;
						
							/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 21E33371
							/// @DnDParent : 79EAC9C5
							/// @DnDArgument : "function" "set_sprite"
							set_sprite();
						}
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 5568C3A1
				/// @DnDParent : 04640099
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 679156E2
					/// @DnDParent : 5568C3A1
					/// @DnDArgument : "var" "_j"
					/// @DnDArgument : "value" "arena_grid_height - 1"
					if(_j == arena_grid_height - 1)
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 5BFD73E7
						/// @DnDParent : 679156E2
						/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
						if(gap_count < gap_max && random(1.0) < gap_rate)
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 34AB7D93
							/// @DnDParent : 5BFD73E7
							/// @DnDArgument : "xpos" "_i * cell_width"
							/// @DnDArgument : "ypos" "_j * cell_height"
							/// @DnDArgument : "var" "_new_wall"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "obj_level_wall"
							/// @DnDArgument : "layer" ""Level""
							/// @DnDSaveInfo : "objectid" "obj_level_wall"
							var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 29785E5F
							/// @DnDApplyTo : _new_wall
							/// @DnDParent : 5BFD73E7
							with(_new_wall) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 4A57C33A
								/// @DnDParent : 29785E5F
								/// @DnDArgument : "expr" "FACE_TYPE.BOTTOM_GAP"
								/// @DnDArgument : "var" "curr_face_type"
								curr_face_type = FACE_TYPE.BOTTOM_GAP;
							
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 1AD8A4B4
								/// @DnDParent : 29785E5F
								/// @DnDArgument : "function" "set_sprite"
								set_sprite();
							}
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 70D0151E
							/// @DnDParent : 5BFD73E7
							/// @DnDArgument : "xpos" "_new_wall.x + cell_width / 2"
							/// @DnDArgument : "ypos" "_new_wall.y + 3 * cell_height / 2"
							/// @DnDArgument : "var" "_new_spawner"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "obj_enemy_spawner"
							/// @DnDArgument : "layer" ""Level""
							/// @DnDSaveInfo : "objectid" "obj_enemy_spawner"
							var _new_spawner = instance_create_layer(_new_wall.x + cell_width / 2, _new_wall.y + 3 * cell_height / 2, "Level", obj_enemy_spawner);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6517EDF0
							/// @DnDApplyTo : _new_spawner
							/// @DnDParent : 5BFD73E7
							/// @DnDArgument : "expr" "FACE_DIRECTION.BOTTOM"
							/// @DnDArgument : "var" "curr_face_direction"
							with(_new_spawner) {
							curr_face_direction = FACE_DIRECTION.BOTTOM;
							
							}
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5F09F2EF
							/// @DnDParent : 5BFD73E7
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "expr_relative" "1"
							/// @DnDArgument : "var" "gap_count"
							gap_count += 1;
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 57D943B8
						/// @DnDParent : 679156E2
						else
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 3E10F400
							/// @DnDParent : 57D943B8
							/// @DnDArgument : "xpos" "_i * cell_width"
							/// @DnDArgument : "ypos" "_j * cell_height"
							/// @DnDArgument : "var" "_new_wall"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "obj_level_wall"
							/// @DnDArgument : "layer" ""Level""
							/// @DnDSaveInfo : "objectid" "obj_level_wall"
							var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);
						
							/// @DnDAction : YoYo Games.Common.Apply_To
							/// @DnDVersion : 1
							/// @DnDHash : 1D4A8971
							/// @DnDApplyTo : _new_wall
							/// @DnDParent : 57D943B8
							with(_new_wall) {
								/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 2D238C15
								/// @DnDParent : 1D4A8971
								/// @DnDArgument : "expr" "FACE_TYPE.BOTTOM"
								/// @DnDArgument : "var" "curr_face_type"
								curr_face_type = FACE_TYPE.BOTTOM;
							
								/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 4A8B8135
								/// @DnDParent : 1D4A8971
								/// @DnDArgument : "function" "set_sprite"
								set_sprite();
							}
						}
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 01A9E456
					/// @DnDParent : 5568C3A1
					else
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 04B0E026
						/// @DnDParent : 01A9E456
						/// @DnDArgument : "xpos" "_i * cell_width"
						/// @DnDArgument : "ypos" "_j * cell_height"
						/// @DnDArgument : "objectid" "obj_level_ground"
						/// @DnDArgument : "layer" ""Level""
						/// @DnDSaveInfo : "objectid" "obj_level_ground"
						instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_ground);
					}
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 132C1266
/// @DnDArgument : "var" "gap_count"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "gap_min"
if(gap_count < gap_min)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5EF9F372
	/// @DnDParent : 132C1266
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2872571C
/// @DnDInput : 2
/// @DnDArgument : "var" "_flower_rate"
/// @DnDArgument : "value" "3"
/// @DnDArgument : "var_1" "_flower_edge_offset"
/// @DnDArgument : "value_1" "240"
var _flower_rate = 3;
var _flower_edge_offset = 240;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F208167
/// @DnDArgument : "var" "_flower_count"
/// @DnDArgument : "value" "round(arena_grid_width * arena_grid_height * _flower_rate)"
var _flower_count = round(arena_grid_width * arena_grid_height * _flower_rate);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 478CF26A
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _flower_count"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _flower_count; _i++) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6FDC7DD4
	/// @DnDParent : 478CF26A
	/// @DnDArgument : "var" "_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "_flower_edge_offset"
	/// @DnDArgument : "max" "cell_width * arena_grid_width - _flower_edge_offset"
	var _x = (random_range(_flower_edge_offset, cell_width * arena_grid_width - _flower_edge_offset));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7B32F177
	/// @DnDParent : 478CF26A
	/// @DnDArgument : "var" "_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "_flower_edge_offset"
	/// @DnDArgument : "max" "cell_height * arena_grid_height - _flower_edge_offset"
	var _y = (random_range(_flower_edge_offset, cell_height * arena_grid_height - _flower_edge_offset));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13B938E7
	/// @DnDParent : 478CF26A
	/// @DnDArgument : "xpos" "_x"
	/// @DnDArgument : "ypos" "_y"
	/// @DnDArgument : "objectid" "obj_flower"
	/// @DnDArgument : "layer" ""Flowers""
	/// @DnDSaveInfo : "objectid" "obj_flower"
	instance_create_layer(_x, _y, "Flowers", obj_flower);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 00F3FA75
/// @DnDArgument : "xpos" "arena_grid_width * cell_width / 2"
/// @DnDArgument : "ypos" "arena_grid_height * cell_height / 2"
/// @DnDArgument : "var" "_player"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_player"
/// @DnDSaveInfo : "objectid" "obj_player"
var _player = instance_create_layer(arena_grid_width * cell_width / 2, arena_grid_height * cell_height / 2, "Instances", obj_player);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CDAB396
/// @DnDInput : 3
/// @DnDApplyTo : _player
/// @DnDArgument : "expr_1" "270"
/// @DnDArgument : "expr_2" "270"
/// @DnDArgument : "var" "player_local_id"
/// @DnDArgument : "var_1" "image_angle"
/// @DnDArgument : "var_2" "gun_angle"
with(_player) {
player_local_id = 0;
image_angle = 270;
gun_angle = 270;

}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1002332C
/// @DnDInput : 4
/// @DnDArgument : "var" "_obstacle_rate"
/// @DnDArgument : "value" "0.2"
/// @DnDArgument : "var_1" "_obstacle_edge_offset"
/// @DnDArgument : "value_1" "600"
/// @DnDArgument : "var_2" "_obstacle_cell_buffer_width"
/// @DnDArgument : "value_2" "cell_width * 1.5"
/// @DnDArgument : "var_3" "_obstacle_cell_buffer_height"
/// @DnDArgument : "value_3" "cell_height * 1.5"
var _obstacle_rate = 0.2;
var _obstacle_edge_offset = 600;
var _obstacle_cell_buffer_width = cell_width * 1.5;
var _obstacle_cell_buffer_height = cell_height * 1.5;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 49831020
/// @DnDArgument : "var" "_obstacle_count"
/// @DnDArgument : "value" "round(arena_grid_width * arena_grid_height * _obstacle_rate)"
var _obstacle_count = round(arena_grid_width * arena_grid_height * _obstacle_rate);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 641169CE
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _obstacle_count"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _obstacle_count; _i++) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E889332
	/// @DnDInput : 6
	/// @DnDParent : 641169CE
	/// @DnDArgument : "var" "_new_search"
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var_1" "_can_place"
	/// @DnDArgument : "value_1" "true"
	/// @DnDArgument : "var_2" "_tries"
	/// @DnDArgument : "value_2" "0"
	/// @DnDArgument : "var_3" "_max_tries"
	/// @DnDArgument : "value_3" "60"
	/// @DnDArgument : "var_4" "_new_obstacle_x"
	/// @DnDArgument : "value_4" "0"
	/// @DnDArgument : "var_5" "_new_obstacle_y"
	/// @DnDArgument : "value_5" "0"
	var _new_search = true;
	var _can_place = true;
	var _tries = 0;
	var _max_tries = 60;
	var _new_obstacle_x = 0;
	var _new_obstacle_y = 0;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 1FDC8F52
	/// @DnDParent : 641169CE
	/// @DnDArgument : "var" "_new_search"
	/// @DnDArgument : "value" "true"
	while ((_new_search == true)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A70F53E
		/// @DnDInput : 3
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "random_range(_obstacle_edge_offset, (cell_width * arena_grid_width) - _obstacle_edge_offset)"
		/// @DnDArgument : "expr_2" "random_range(_obstacle_edge_offset, (cell_height * arena_grid_height) - _obstacle_edge_offset)"
		/// @DnDArgument : "var" "_new_search"
		/// @DnDArgument : "var_1" "_new_obstacle_x"
		/// @DnDArgument : "var_2" "_new_obstacle_y"
		_new_search = false;
		_new_obstacle_x = random_range(_obstacle_edge_offset, (cell_width * arena_grid_width) - _obstacle_edge_offset);
		_new_obstacle_y = random_range(_obstacle_edge_offset, (cell_height * arena_grid_height) - _obstacle_edge_offset);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 24F50B30
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 1FDC8F52
		with(obj_player) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07DBB51F
			/// @DnDParent : 24F50B30
			/// @DnDArgument : "var" "point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height)"
			/// @DnDArgument : "value" "true"
			if(point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height) == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 061124D0
				/// @DnDParent : 07DBB51F
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "_new_search"
				_new_search = true;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F7F2B19
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "var" "_new_search"
		/// @DnDArgument : "value" "false"
		if(_new_search == false)
		{
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 6A17DAB0
			/// @DnDApplyTo : {obj_obstacle}
			/// @DnDParent : 2F7F2B19
			with(obj_obstacle) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 65199677
				/// @DnDParent : 6A17DAB0
				/// @DnDArgument : "var" "point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height)"
				/// @DnDArgument : "value" "true"
				if(point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height) == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 41DD985B
					/// @DnDParent : 65199677
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "_new_search"
					_new_search = true;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47EA8106
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_tries"
		_tries += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 15A5FF94
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "expr" "_tries >= _max_tries && _new_search"
		if(_tries >= _max_tries && _new_search)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 244E328A
			/// @DnDInput : 2
			/// @DnDParent : 15A5FF94
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "var" "_can_place"
			/// @DnDArgument : "var_1" "_new_search"
			_can_place = false;
			_new_search = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69AA69E9
	/// @DnDParent : 641169CE
	/// @DnDArgument : "var" "_can_place"
	/// @DnDArgument : "value" "true"
	if(_can_place == true)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2D504BBF
		/// @DnDParent : 69AA69E9
		/// @DnDArgument : "xpos" "_new_obstacle_x"
		/// @DnDArgument : "ypos" "_new_obstacle_y"
		/// @DnDArgument : "objectid" "obj_obstacle"
		/// @DnDArgument : "layer" ""Obstacles""
		/// @DnDSaveInfo : "objectid" "obj_obstacle"
		instance_create_layer(_new_obstacle_x, _new_obstacle_y, "Obstacles", obj_obstacle);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 12CA55BE
/// @DnDArgument : "funcName" "_add_grid_obstacles"
/// @DnDArgument : "temp" "1"
var _add_grid_obstacles = function() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0EFF0312
	/// @DnDInput : 3
	/// @DnDParent : 12CA55BE
	/// @DnDArgument : "function" "mp_grid_add_instances"
	/// @DnDArgument : "arg" "grid"
	/// @DnDArgument : "arg_1" "obj_obstacle"
	/// @DnDArgument : "arg_2" "true"
	mp_grid_add_instances(grid, obj_obstacle, true);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3F59EAE2
/// @DnDInput : 3
/// @DnDArgument : "var" "_handle"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "call_later"
/// @DnDArgument : "arg" "1"
/// @DnDArgument : "arg_1" "time_source_units_frames"
/// @DnDArgument : "arg_2" "_add_grid_obstacles"
var _handle = call_later(1, time_source_units_frames, _add_grid_obstacles);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 191D25FA
/// @DnDArgument : "funcName" "pause_game"
function pause_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 006A6B03
	/// @DnDParent : 191D25FA
	/// @DnDArgument : "expr" "GAME_STATE.PAUSED"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.PAUSED;

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 6CD776E5
	/// @DnDParent : 191D25FA
	/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_pause"
	/// @DnDArgument : "layer" ""Popups""
	/// @DnDSaveInfo : "sequenceid" "seq_pause"
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_pause);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 3A6BD102
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 191D25FA
	with(obj_player) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63C11E0C
		/// @DnDParent : 3A6BD102
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "not" "1"
		if(!(speed == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6FFF58B7
			/// @DnDParent : 63C11E0C
			/// @DnDArgument : "expr" "speed"
			/// @DnDArgument : "var" "last_speed"
			last_speed = speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69918510
			/// @DnDParent : 63C11E0C
			/// @DnDArgument : "var" "speed"
			speed = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 2A241C43
	/// @DnDApplyTo : {obj_player_shoot}
	/// @DnDParent : 191D25FA
	with(obj_player_shoot) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 441F4A5F
		/// @DnDParent : 2A241C43
		/// @DnDArgument : "var" "image_speed"
		/// @DnDArgument : "not" "1"
		if(!(image_speed == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C82BACF
			/// @DnDParent : 441F4A5F
			/// @DnDArgument : "expr" "image_speed"
			/// @DnDArgument : "var" "last_image_speed"
			last_image_speed = image_speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D74086D
			/// @DnDParent : 441F4A5F
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 568F0FCA
	/// @DnDApplyTo : {obj_enemy}
	/// @DnDParent : 191D25FA
	with(obj_enemy) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14C75F0E
		/// @DnDParent : 568F0FCA
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "not" "1"
		if(!(speed == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C8E8C75
			/// @DnDParent : 14C75F0E
			/// @DnDArgument : "expr" "speed"
			/// @DnDArgument : "var" "last_speed"
			last_speed = speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CCCD5D3
			/// @DnDParent : 14C75F0E
			/// @DnDArgument : "var" "speed"
			speed = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 198AEEEC
	/// @DnDApplyTo : {obj_projectile}
	/// @DnDParent : 191D25FA
	with(obj_projectile) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42C92CF3
		/// @DnDParent : 198AEEEC
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "not" "1"
		if(!(speed == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68EDB29B
			/// @DnDParent : 42C92CF3
			/// @DnDArgument : "expr" "speed"
			/// @DnDArgument : "var" "last_speed"
			last_speed = speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7AE485BA
			/// @DnDParent : 42C92CF3
			/// @DnDArgument : "var" "speed"
			speed = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 52BC7D33
	/// @DnDApplyTo : {obj_flower}
	/// @DnDParent : 191D25FA
	with(obj_flower) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B730885
		/// @DnDParent : 52BC7D33
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "not" "1"
		if(!(speed == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4BA256AD
			/// @DnDParent : 2B730885
			/// @DnDArgument : "expr" "speed"
			/// @DnDArgument : "var" "last_speed"
			last_speed = speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 067E32F9
			/// @DnDParent : 2B730885
			/// @DnDArgument : "var" "speed"
			speed = 0;
		}
	}

	/// @DnDAction : YoYo Games.Audio.Pause_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 67136FC0
	/// @DnDParent : 191D25FA
	audio_pause_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 33A55286
	/// @DnDParent : 191D25FA
	/// @DnDArgument : "soundid" "snd_menu_button"
	/// @DnDArgument : "offset" "0"
	/// @DnDSaveInfo : "soundid" "snd_menu_button"
	audio_play_sound(snd_menu_button, 0, 0, 1.0, 0, 1.0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2C3FD691
/// @DnDArgument : "funcName" "resume_game"
function resume_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59A42BB7
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "expr" "GAME_STATE.PLAYING"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.PLAYING;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61C4E762
	/// @DnDApplyTo : {obj_banner_pause}
	/// @DnDParent : 2C3FD691
	with(obj_banner_pause) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4483E840
	/// @DnDApplyTo : {obj_button_main_menu}
	/// @DnDParent : 2C3FD691
	with(obj_button_main_menu) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 11E86B50
	/// @DnDApplyTo : {obj_button_continue}
	/// @DnDParent : 2C3FD691
	with(obj_button_continue) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 162CFEA4
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "value" "last_speed"
	/// @DnDArgument : "instvar" "3"
	with(obj_player) {
	speed = last_speed;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 041ACCCF
	/// @DnDApplyTo : {obj_player_shoot}
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "expr" "last_image_speed"
	/// @DnDArgument : "var" "image_speed"
	with(obj_player_shoot) {
	image_speed = last_image_speed;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 157D8F07
	/// @DnDApplyTo : {obj_enemy}
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "value" "last_speed"
	/// @DnDArgument : "instvar" "3"
	with(obj_enemy) {
	speed = last_speed;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 70DA7B7B
	/// @DnDApplyTo : {obj_projectile}
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "value" "last_speed"
	/// @DnDArgument : "instvar" "3"
	with(obj_projectile) {
	speed = last_speed;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4C204EBC
	/// @DnDApplyTo : {obj_flower}
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "value" "last_speed"
	/// @DnDArgument : "instvar" "3"
	with(obj_flower) {
	speed = last_speed;
	}

	/// @DnDAction : YoYo Games.Audio.Resume_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3A7580C1
	/// @DnDParent : 2C3FD691
	audio_resume_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6D8091B9
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "target" "_button_push"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "soundid" "snd_menu_button"
	/// @DnDArgument : "offset" "0"
	/// @DnDSaveInfo : "soundid" "snd_menu_button"
	var _button_push = audio_play_sound(snd_menu_button, 0, 0, 1.0, 0, 1.0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 716A6B1F
/// @DnDArgument : "funcName" "wave_cleared"
function wave_cleared() 
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 6704CDC7
	/// @DnDParent : 716A6B1F
	/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_wave_cleared"
	/// @DnDArgument : "layer" ""Popups""
	/// @DnDSaveInfo : "sequenceid" "seq_wave_cleared"
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_wave_cleared);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3F76D8A8
	/// @DnDParent : 716A6B1F
	/// @DnDArgument : "soundid" "music"
	audio_stop_sound(music);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C5AA139
	/// @DnDParent : 716A6B1F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "music"
	music = -1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 037C2807
	/// @DnDParent : 716A6B1F
	/// @DnDArgument : "target" "music"
	/// @DnDArgument : "soundid" "snd_music_round_clear"
	/// @DnDArgument : "offset" "0"
	/// @DnDSaveInfo : "soundid" "snd_music_round_clear"
	music = audio_play_sound(snd_music_round_clear, 0, 0, 1.0, 0, 1.0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2F7EA121
/// @DnDArgument : "funcName" "wave_incoming"
function wave_incoming() 
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 5646056E
	/// @DnDParent : 2F7EA121
	/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_wave_incoming"
	/// @DnDArgument : "layer" ""Popups""
	/// @DnDSaveInfo : "sequenceid" "seq_wave_incoming"
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_wave_incoming);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5AD4417C
	/// @DnDParent : 2F7EA121
	/// @DnDArgument : "var" "curr_wave"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1"
	if(curr_wave > 1)
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 156D7D44
		/// @DnDParent : 5AD4417C
		/// @DnDArgument : "soundid" "music"
		audio_stop_sound(music);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61C13ED6
		/// @DnDParent : 5AD4417C
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "music"
		music = -1;
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 1B28911A
		/// @DnDInput : 3
		/// @DnDParent : 5AD4417C
		/// @DnDArgument : "var" "_to_play"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "snd_music_game_1"
		/// @DnDArgument : "option_1" "snd_music_game_2"
		/// @DnDArgument : "option_2" "snd_music_game_3"
		var _to_play = choose(snd_music_game_1, snd_music_game_2, snd_music_game_3);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 0DAAEC01
		/// @DnDParent : 5AD4417C
		/// @DnDArgument : "target" "music"
		/// @DnDArgument : "soundid" "_to_play"
		/// @DnDArgument : "offset" "0"
		music = audio_play_sound(_to_play, 0, 0, 1.0, 0, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3A36A189
/// @DnDArgument : "funcName" "wave_new_spawners"
function wave_new_spawners() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C83E269
	/// @DnDParent : 3A36A189
	/// @DnDArgument : "var" "_enemy_rate"
	/// @DnDArgument : "value" "0.1"
	var _enemy_rate = 0.1;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1789F667
	/// @DnDParent : 3A36A189
	/// @DnDArgument : "var" "_enemy_count"
	/// @DnDArgument : "value" "ceil((arena_grid_width - 2)  * (arena_grid_height - 2) * _enemy_rate * curr_wave)"
	var _enemy_count = ceil((arena_grid_width - 2)  * (arena_grid_height - 2) * _enemy_rate * curr_wave);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7152499A
	/// @DnDParent : 3A36A189
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < _enemy_count"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < _enemy_count; _i++) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A7A13DB
		/// @DnDInput : 2
		/// @DnDParent : 7152499A
		/// @DnDArgument : "var" "_picked_spawner"
		/// @DnDArgument : "value" "irandom(instance_number(obj_enemy_spawner) - 1)"
		/// @DnDArgument : "var_1" "_curr_spawner"
		/// @DnDArgument : "value_1" "0"
		var _picked_spawner = irandom(instance_number(obj_enemy_spawner) - 1);
		var _curr_spawner = 0;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 495CB29F
		/// @DnDApplyTo : {obj_enemy_spawner}
		/// @DnDParent : 7152499A
		with(obj_enemy_spawner) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 735D859C
			/// @DnDParent : 495CB29F
			/// @DnDArgument : "var" "_curr_spawner"
			/// @DnDArgument : "value" "_picked_spawner"
			if(_curr_spawner == _picked_spawner)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4E91A054
				/// @DnDParent : 735D859C
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spawn_queue"
				spawn_queue += 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74FBBFB6
			/// @DnDParent : 495CB29F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_curr_spawner"
			_curr_spawner += 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0BE87DE3
/// @DnDArgument : "funcName" "lose_game"
function lose_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E4CDD2E
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "expr" "GAME_STATE.ENDED"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.ENDED;

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 4E7C3751
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_lose"
	/// @DnDArgument : "layer" ""Popups""
	/// @DnDSaveInfo : "sequenceid" "seq_lose"
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_lose);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6D169737
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "soundid" "music"
	audio_stop_sound(music);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D51A00B
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "music"
	music = -1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 49336A63
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "target" "music"
	/// @DnDArgument : "soundid" "snd_music_lose"
	/// @DnDArgument : "offset" "0"
	/// @DnDSaveInfo : "soundid" "snd_music_lose"
	music = audio_play_sound(snd_music_lose, 0, 0, 1.0, 0, 1.0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 75F6831F
/// @DnDArgument : "funcName" "win_game"
function win_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FAB1822
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "expr" "GAME_STATE.ENDED"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.ENDED;

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 2471114F
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_win"
	/// @DnDArgument : "layer" ""Popups""
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_win);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2F5AA054
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "soundid" "music"
	audio_stop_sound(music);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73E9F99C
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "music"
	music = -1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 24ACC126
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "target" "music"
	/// @DnDArgument : "soundid" "snd_music_round_clear"
	/// @DnDArgument : "offset" "0"
	/// @DnDSaveInfo : "soundid" "snd_music_round_clear"
	music = audio_play_sound(snd_music_round_clear, 0, 0, 1.0, 0, 1.0);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7AB3A0B6
/// @DnDArgument : "xpos" "_i * cell_width"
/// @DnDArgument : "ypos" "_j * cell_height"
/// @DnDArgument : "var" "_new_wall"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_level_wall"
/// @DnDArgument : "layer" ""Level""
/// @DnDSaveInfo : "objectid" "obj_level_wall"
var _new_wall = instance_create_layer(_i * cell_width, _j * cell_height, "Level", obj_level_wall);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6B194FDA
/// @DnDApplyTo : _new_wall
with(_new_wall) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CE31F75
	/// @DnDParent : 6B194FDA
	/// @DnDArgument : "expr" "FACE_TYPE.LEFT_GAP"
	/// @DnDArgument : "var" "curr_face_type"
	curr_face_type = FACE_TYPE.LEFT_GAP;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5ED3E781
	/// @DnDParent : 6B194FDA
	/// @DnDArgument : "function" "set_sprite"
	set_sprite();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CE31F75
	/// @DnDParent : 6B194FDA
	/// @DnDArgument : "expr" "FACE_TYPE.LEFT_GAP"
	/// @DnDArgument : "var" "curr_face_type"
	curr_face_type = FACE_TYPE.LEFT_GAP;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5ED3E781
	/// @DnDParent : 6B194FDA
	/// @DnDArgument : "function" "set_sprite"
	set_sprite();
}