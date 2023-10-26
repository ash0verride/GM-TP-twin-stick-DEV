/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 07217240
/// @DnDComment : // Sets a random seed for the project
randomize();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3445AD47
/// @DnDComment : // Variable for the current game state - initally set to playing
/// @DnDArgument : "expr" "GAME_STATE.PLAYING"
/// @DnDArgument : "var" "curr_game_state"
curr_game_state = GAME_STATE.PLAYING;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40488318
/// @DnDComment : // Variable for storing the current wave - initally set to 0
/// @DnDArgument : "var" "curr_wave	"
curr_wave	 = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15D543A0
/// @DnDComment : // Variable for storing the maximum waves a player can go through
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "max_levels"
max_levels = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FF9768B
/// @DnDComment : // Variables for setting the grid size of the level$(13_10)// can be changed to larger or smaller sizes for bigger or smaller levels
/// @DnDInput : 2
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_1" "8"
/// @DnDArgument : "var" "arena_grid_width"
/// @DnDArgument : "var_1" "arena_grid_height"
arena_grid_width = 8;
arena_grid_height = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 260D30D9
/// @DnDComment : // Variables for cell sizes (background grid pieces)
/// @DnDInput : 2
/// @DnDArgument : "expr" "512"
/// @DnDArgument : "expr_1" "512"
/// @DnDArgument : "var" "cell_width"
/// @DnDArgument : "var_1" "cell_height"
cell_width = 512;
cell_height = 512;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 076F6FAF
/// @DnDComment : // Variables for setting up the pathfiding grid$(13_10)// The higher the rate the more precise the pathfinding but more resource demanding
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "grid_rate"
grid_rate = 8;

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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 62B59E92
/// @DnDComment : // Variables for setting up the rate gaps appear in the walls (enemy spawn points)$(13_10)// Rate is how offten a side peice will become a gap$(13_10)// Count is how many gaps are created$(13_10)// Min is the minimum amount of gaps a level can have or it will regenerate$(13_10)// Max is the maximum amount of gaps a level can have before it stops making more
/// @DnDInput : 4
/// @DnDArgument : "expr" "1/3"
/// @DnDArgument : "expr_2" "2"
/// @DnDArgument : "expr_3" "8"
/// @DnDArgument : "var" "gap_rate"
/// @DnDArgument : "var_1" "gap_count"
/// @DnDArgument : "var_2" "gap_min"
/// @DnDArgument : "var_3" "gap_max"
gap_rate = 1/3;
gap_count = 0;
gap_min = 2;
gap_max = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BBC967A
/// @DnDComment : // Variables used for the score font used in the hud
/// @DnDInput : 5
/// @DnDArgument : "expr" "fnt_luckiest_guy_48"
/// @DnDArgument : "expr_1" "c_white"
/// @DnDArgument : "expr_2" "0.75"
/// @DnDArgument : "expr_3" "fa_center"
/// @DnDArgument : "expr_4" "fa_middle"
/// @DnDArgument : "var" "score_font"
/// @DnDArgument : "var_1" "score_colour"
/// @DnDArgument : "var_2" "score_alpha"
/// @DnDArgument : "var_3" "score_halign"
/// @DnDArgument : "var_4" "score_valign"
score_font = fnt_luckiest_guy_48;
score_colour = c_white;
score_alpha = 0.75;
score_halign = fa_center;
score_valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17B63F66
/// @DnDComment : // Variables used to check the last states of paused and new waves so they arnt acceidentally called twice
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "was_paused"
/// @DnDArgument : "var_1" "was_new_wave"
was_paused = false;
was_new_wave = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BA5E48D
/// @DnDComment : // Variable used to change how long the inital wave will take to start after the game begins
/// @DnDArgument : "expr" "3.0"
/// @DnDArgument : "var" "start_time"
start_time = 3.0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D447744
/// @DnDComment : // Variable used to set the maximum amount of enemeies that can appear on screen at any time
/// @DnDArgument : "expr" "40"
/// @DnDArgument : "var" "max_enemies"
max_enemies = 40;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 21DEC504
/// @DnDComment : // Creates pause button used in the top left corner of the screen
/// @DnDArgument : "objectid" "obj_button_pause"
/// @DnDArgument : "layer" ""Popups""
/// @DnDSaveInfo : "objectid" "obj_button_pause"
instance_create_layer(0, 0, "Popups", obj_button_pause);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 0F1FA2C2
/// @DnDComment : // Stops all sound
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5BE87537
/// @DnDComment : // Plays the first music track and creates variable for music to play from
/// @DnDArgument : "target" "music"
/// @DnDArgument : "soundid" "snd_music_menu_main"
/// @DnDArgument : "loop" "1"
/// @DnDArgument : "offset" "0"
/// @DnDSaveInfo : "soundid" "snd_music_menu_main"
music = audio_play_sound(snd_music_menu_main, 0, 1, 1.0, 0, 1.0);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 623B6818
/// @DnDComment : // Loops that create the level from the grid variables by its width and height
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
		/// @DnDComment : // Checks if current grid element is on the left wall
		/// @DnDParent : 32E722BE
		/// @DnDArgument : "var" "_i"
		if(_i == 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55DFCF71
			/// @DnDComment : // Checks if the current grid element is along the top wall
			/// @DnDParent : 4C513E42
			/// @DnDArgument : "var" "_j"
			if(_j == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 613C1424
				/// @DnDComment : // Sets top left grid element
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
				/// @DnDComment : // Checks if the current grid element is along the bottom wall
				/// @DnDParent : 2E6DAF51
				/// @DnDArgument : "var" "_j"
				/// @DnDArgument : "value" "arena_grid_height - 1"
				if(_j == arena_grid_height - 1)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 2F0126D5
					/// @DnDComment : // Sets the bottom left grid element
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
					/// @DnDComment : // Checks if the wall element should become a gap if too many dont already exist
					/// @DnDParent : 22F58B4C
					/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
					if(gap_count < gap_max && random(1.0) < gap_rate)
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 23FE8BAD
						/// @DnDComment : // Sets a left gap element
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
						/// @DnDComment : // Creates an enemy spawner inside the gap location
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
						/// @DnDComment : // Increases the gap count
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
						/// @DnDComment : // Sets a left wall element
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
			/// @DnDComment : // Checks if current grid element is on the right wall
			/// @DnDParent : 223E58DB
			/// @DnDArgument : "var" "_i"
			/// @DnDArgument : "value" "arena_grid_width - 1"
			if(_i == arena_grid_width - 1)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7F4C2F81
				/// @DnDComment : // Checks if current grid element is along the top wall
				/// @DnDParent : 20A3A378
				/// @DnDArgument : "var" "_j"
				if(_j == 0)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 22A7FAA4
					/// @DnDComment : // Sets the top right grid element
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
					/// @DnDComment : // Checks if the current grid element is along the bottom wall
					/// @DnDParent : 27B3FE51
					/// @DnDArgument : "var" "_j"
					/// @DnDArgument : "value" "arena_grid_height - 1"
					if(_j == arena_grid_height - 1)
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 4F3A86E3
						/// @DnDComment : // Sets the bottom right grid element
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
						/// @DnDComment : // Checks if the wall element should become a gap if too many dont already exist
						/// @DnDParent : 20A2D127
						/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
						if(gap_count < gap_max && random(1.0) < gap_rate)
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 7909F7AE
							/// @DnDComment : // Sets right gap element
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
							/// @DnDComment : // Creates an enemy spawner inside the gap location
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
							/// @DnDComment : // Increases the gap count
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
							/// @DnDComment : // Sets a right wall element
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
				/// @DnDComment : // Checks if current grid element is along the top wall
				/// @DnDParent : 04640099
				/// @DnDArgument : "var" "_j"
				if(_j == 0)
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 1124EB7D
					/// @DnDComment : // Checks if the wall element should become a gap if too many dont already exist
					/// @DnDParent : 23E1EE36
					/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
					if(gap_count < gap_max && random(1.0) < gap_rate)
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 532B9745
						/// @DnDComment : // Sets top gap element
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
						/// @DnDComment : // Creates an enemy spawner inside the gap location
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
						/// @DnDComment : // Increases the gap count
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
						/// @DnDComment : // Sets a top wall element
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
					/// @DnDComment : // Checks if current grid element is along the bottom wall
					/// @DnDParent : 5568C3A1
					/// @DnDArgument : "var" "_j"
					/// @DnDArgument : "value" "arena_grid_height - 1"
					if(_j == arena_grid_height - 1)
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 5BFD73E7
						/// @DnDComment : // Checks if the wall element should become a gap if too many dont already exist
						/// @DnDParent : 679156E2
						/// @DnDArgument : "expr" "gap_count < gap_max && random(1.0) < gap_rate"
						if(gap_count < gap_max && random(1.0) < gap_rate)
						{
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 34AB7D93
							/// @DnDComment : // Sets a bottom gap element
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
							/// @DnDComment : // Creates an enemy spawner inside the gap location
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
							/// @DnDComment : // Increases the gap count
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
							/// @DnDComment : // Sets a bottom wall element
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
						/// @DnDComment : // Sets a normal ground element
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
/// @DnDComment : // Checks enough gaps have been created to fufil the minimum criteria
/// @DnDArgument : "var" "gap_count"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "gap_min"
if(gap_count < gap_min)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5EF9F372
	/// @DnDComment : // Restarts room to try generate new level
	/// @DnDParent : 132C1266
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2872571C
/// @DnDComment : // Variabls used for the rate flowers can be made per level grid cell$(13_10)// Variable for the offset flowers can spawn from wall edges
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
/// @DnDComment : // Variable created to set the amount of flowers within the level
/// @DnDArgument : "var" "_flower_count"
/// @DnDArgument : "value" "round(arena_grid_width * arena_grid_height * _flower_rate)"
var _flower_count = round(arena_grid_width * arena_grid_height * _flower_rate);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 478CF26A
/// @DnDComment : // Loop for creation of flowers 
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _flower_count"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _flower_count; _i++) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6FDC7DD4
	/// @DnDComment : // Creates new flower at random location within the bounds of the level and offset
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
/// @DnDComment : // Creates a player within the centre of the room and sets their ID to 0 (player 1) facing them down
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
/// @DnDComment : // Variables for spwaning the obstacles within the room$(13_10)// Rate of obstacles per grid cell in level$(13_10)// Offset from room edges they can spawn$(13_10)// Buffer distance from each other they can spawn to allow spacing
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
/// @DnDComment : // Total obstacle count based from the variables
/// @DnDArgument : "var" "_obstacle_count"
/// @DnDArgument : "value" "round(arena_grid_width * arena_grid_height * _obstacle_rate)"
var _obstacle_count = round(arena_grid_width * arena_grid_height * _obstacle_rate);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 641169CE
/// @DnDComment : // Loop for creating the obstacles
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _obstacle_count"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < _obstacle_count; _i++) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E889332
	/// @DnDComment : // Variables for checking if a placement is possible$(13_10)// Variables for checking how many tries have been attempted to prevent excessive hangs$(13_10)// Variables for new obstacles position
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
	/// @DnDComment : // Loop for searching
	/// @DnDParent : 641169CE
	/// @DnDArgument : "var" "_new_search"
	/// @DnDArgument : "value" "true"
	while ((_new_search == true)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A70F53E
		/// @DnDComment : // Reset loop criteria$(13_10)// Set new positions
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
		/// @DnDComment : // Loop through players
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 1FDC8F52
		with(obj_player) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07DBB51F
			/// @DnDComment : // Check if objects within spawn location
			/// @DnDParent : 24F50B30
			/// @DnDArgument : "var" "point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height)"
			/// @DnDArgument : "value" "true"
			if(point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height) == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 061124D0
				/// @DnDComment : // Ask for new search
				/// @DnDParent : 07DBB51F
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "_new_search"
				_new_search = true;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F7F2B19
		/// @DnDComment : // Checks if still can search
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "var" "_new_search"
		/// @DnDArgument : "value" "false"
		if(_new_search == false)
		{
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 6A17DAB0
			/// @DnDComment : // Loops through obstable objects within room
			/// @DnDApplyTo : {obj_obstacle}
			/// @DnDParent : 2F7F2B19
			with(obj_obstacle) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 65199677
				/// @DnDComment : // Check if objects within spawn location
				/// @DnDParent : 6A17DAB0
				/// @DnDArgument : "var" "point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height)"
				/// @DnDArgument : "value" "true"
				if(point_in_rectangle(_new_obstacle_x, _new_obstacle_y, x - _obstacle_cell_buffer_width, y - _obstacle_cell_buffer_height, x + _obstacle_cell_buffer_width, y + _obstacle_cell_buffer_height) == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 41DD985B
					/// @DnDComment : // Ask for new search
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
		/// @DnDComment : // Increase try counter
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_tries"
		_tries += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 15A5FF94
		/// @DnDComment : // Check if tries have been exceded and still needs to search
		/// @DnDParent : 1FDC8F52
		/// @DnDArgument : "expr" "_tries >= _max_tries && _new_search"
		if(_tries >= _max_tries && _new_search)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 244E328A
			/// @DnDComment : // Stops search but cant place obstacle
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
	/// @DnDComment : // Checks if can place obstacle
	/// @DnDParent : 641169CE
	/// @DnDArgument : "var" "_can_place"
	/// @DnDArgument : "value" "true"
	if(_can_place == true)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2D504BBF
		/// @DnDComment : // Creates new obstacle at desired position
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
/// @DnDComment : // Adds the obstacle objects to the enemies pathfiding grid
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
/// @DnDComment : // Calls the obstacle objects to be added to the path finding after one from to allow them to set their sprites
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
/// @DnDComment : // Function used to pause the game
/// @DnDArgument : "funcName" "pause_game"
function pause_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 006A6B03
	/// @DnDComment : // Changes the current game state to paused
	/// @DnDParent : 191D25FA
	/// @DnDArgument : "expr" "GAME_STATE.PAUSED"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.PAUSED;

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 6CD776E5
	/// @DnDComment : // Creates the pause menu on the screen
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
	/// @DnDComment : // Sets all the players to stop moving and saves their last speed if moving
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
	/// @DnDComment : // Sets all the players firing animations to stop moving and saves their last speed if moving
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
	/// @DnDComment : // Sets all the enemies to stop moving and saves their last speed if moving
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
	/// @DnDComment : // Sets all the projectiles to stop moving and saves their last speed if moving
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

	/// @DnDAction : YoYo Games.Audio.Pause_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 67136FC0
	/// @DnDComment : // Pauses all audio
	/// @DnDParent : 191D25FA
	audio_pause_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 33A55286
	/// @DnDComment : // Plays button sound effect
	/// @DnDParent : 191D25FA
	/// @DnDArgument : "soundid" "snd_menu_button"
	/// @DnDArgument : "offset" "0"
	/// @DnDSaveInfo : "soundid" "snd_menu_button"
	audio_play_sound(snd_menu_button, 0, 0, 1.0, 0, 1.0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2C3FD691
/// @DnDComment : // Function used to resume the game
/// @DnDArgument : "funcName" "resume_game"
function resume_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59A42BB7
	/// @DnDComment : // Sets the current games state to playing
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "expr" "GAME_STATE.PLAYING"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.PLAYING;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61C4E762
	/// @DnDComment : // Destroys the pause menu
	/// @DnDApplyTo : {obj_banner_pause}
	/// @DnDParent : 2C3FD691
	with(obj_banner_pause) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4483E840
	/// @DnDComment : // Destroys the pause menu button
	/// @DnDApplyTo : {obj_button_main_menu}
	/// @DnDParent : 2C3FD691
	with(obj_button_main_menu) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 11E86B50
	/// @DnDComment : // Destroys the pause play button
	/// @DnDApplyTo : {obj_button_continue}
	/// @DnDParent : 2C3FD691
	with(obj_button_continue) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 162CFEA4
	/// @DnDComment : // Sets the players move speed back to its previous value
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
	/// @DnDComment : // Sets the players shooting animation speed back to its previous value
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
	/// @DnDComment : // Sets the enemies speed back to their previous value
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
	/// @DnDComment : // Sets the projectiles speed back to their previous value
	/// @DnDApplyTo : {obj_projectile}
	/// @DnDParent : 2C3FD691
	/// @DnDArgument : "value" "last_speed"
	/// @DnDArgument : "instvar" "3"
	with(obj_projectile) {
	speed = last_speed;
	}

	/// @DnDAction : YoYo Games.Audio.Resume_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3A7580C1
	/// @DnDComment : // Resumes all audio
	/// @DnDParent : 2C3FD691
	audio_resume_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6D8091B9
	/// @DnDComment : // Plays button sound effect
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
/// @DnDComment : // Function used when wave is cleared
/// @DnDArgument : "funcName" "wave_cleared"
function wave_cleared() 
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 6704CDC7
	/// @DnDComment : // Creates wave complete banner
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
	/// @DnDComment : // Stops the current music
	/// @DnDParent : 716A6B1F
	/// @DnDArgument : "soundid" "music"
	audio_stop_sound(music);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C5AA139
	/// @DnDComment : // Resets and plays round clear music
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
/// @DnDComment : // Fuction used when wave is incoming
/// @DnDArgument : "funcName" "wave_incoming"
function wave_incoming() 
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 5646056E
	/// @DnDComment : // Creates wave incoming banner
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
	/// @DnDComment : // Checks if not on wave 1
	/// @DnDParent : 2F7EA121
	/// @DnDArgument : "var" "curr_wave"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1"
	if(curr_wave > 1)
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 156D7D44
		/// @DnDComment : // Stops the current music
		/// @DnDParent : 5AD4417C
		/// @DnDArgument : "soundid" "music"
		audio_stop_sound(music);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61C13ED6
		/// @DnDComment : // Resets and plays random song for new round
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
/// @DnDComment : // Function used for calling a new wave through the spawners
/// @DnDArgument : "funcName" "wave_new_spawners"
function wave_new_spawners() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C83E269
	/// @DnDComment : // Variable used for the enemy spawn rate
	/// @DnDParent : 3A36A189
	/// @DnDArgument : "var" "_enemy_rate"
	/// @DnDArgument : "value" "0.1"
	var _enemy_rate = 0.1;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1789F667
	/// @DnDComment : // Variable that calculates how many enemies will spawn based on the room size, current wave and enemy rate
	/// @DnDParent : 3A36A189
	/// @DnDArgument : "var" "_enemy_count"
	/// @DnDArgument : "value" "ceil((arena_grid_width - 2)  * (arena_grid_height - 2) * _enemy_rate * curr_wave)"
	var _enemy_count = ceil((arena_grid_width - 2)  * (arena_grid_height - 2) * _enemy_rate * curr_wave);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7152499A
	/// @DnDComment : // Loops through the enemy count
	/// @DnDParent : 3A36A189
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < _enemy_count"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < _enemy_count; _i++) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A7A13DB
		/// @DnDComment : // Picks a random spawner to spawn from$(13_10)// Variable for counting current spawner
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
		/// @DnDComment : // Loops through the spawners
		/// @DnDApplyTo : {obj_enemy_spawner}
		/// @DnDParent : 7152499A
		with(obj_enemy_spawner) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 735D859C
			/// @DnDComment : // Checks if the current spawner is the picked spawner
			/// @DnDParent : 495CB29F
			/// @DnDArgument : "var" "_curr_spawner"
			/// @DnDArgument : "value" "_picked_spawner"
			if(_curr_spawner == _picked_spawner)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4E91A054
				/// @DnDComment : // Adds and enemy to its spawn queue
				/// @DnDParent : 735D859C
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "spawn_queue"
				spawn_queue = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74FBBFB6
			/// @DnDComment : // Increases the current spawner count
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
/// @DnDComment : // Function called for when the player loses the game
/// @DnDArgument : "funcName" "lose_game"
function lose_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E4CDD2E
	/// @DnDComment : // Sets the current game state to ended
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "expr" "GAME_STATE.ENDED"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.ENDED;

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 4E7C3751
	/// @DnDComment : // Creates the gameover banner popup
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
	/// @DnDComment : // Stops the current game music
	/// @DnDParent : 0BE87DE3
	/// @DnDArgument : "soundid" "music"
	audio_stop_sound(music);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D51A00B
	/// @DnDComment : // Resets and sets the music to play the lose sound
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
/// @DnDComment : // Function called for when the player completes the game
/// @DnDArgument : "funcName" "win_game"
function win_game() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FAB1822
	/// @DnDComment : // Sets the current game state to ended
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "expr" "GAME_STATE.ENDED"
	/// @DnDArgument : "var" "curr_game_state"
	curr_game_state = GAME_STATE.ENDED;

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 2471114F
	/// @DnDComment : // Creates the template complete banner popup
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)"
	/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_win"
	/// @DnDArgument : "layer" ""Popups""
	/// @DnDSaveInfo : "sequenceid" "seq_win"
	layer_sequence_create("Popups", camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2), camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2), seq_win);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2F5AA054
	/// @DnDComment : // Stops the current game music
	/// @DnDParent : 75F6831F
	/// @DnDArgument : "soundid" "music"
	audio_stop_sound(music);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73E9F99C
	/// @DnDComment : // Resets and sets the music to play the clear sound
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