/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40BE38E2
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 71A433C8
	/// @DnDInput : 2
	/// @DnDParent : 40BE38E2
	/// @DnDArgument : "value" "hspeed * speed_dropoff"
	/// @DnDArgument : "value_1" "vspeed * speed_dropoff"
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "5"
	hspeed = hspeed * speed_dropoff;
	vspeed = vspeed * speed_dropoff;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 549374A5
	/// @DnDParent : 40BE38E2
	/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
	/// @DnDArgument : "value" "GAME_STATE.PLAYING"
	if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
	{
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Device_Count
		/// @DnDVersion : 1
		/// @DnDHash : 459BB0D2
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "_max_pads"
		/// @DnDArgument : "var_temp" "1"
		var l459BB0D2_0 = gamepad_get_device_count();
		var l459BB0D2_1 = 0;
		for(var l459BB0D2_2 = 0; l459BB0D2_2 < l459BB0D2_0; ++l459BB0D2_2) {
			if(gamepad_is_connected(l459BB0D2_2)) { ++l459BB0D2_1; }
		}
		var _max_pads = l459BB0D2_1;
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 6483A8C8
		/// @DnDParent : 549374A5
		/// @DnDArgument : "init" "_i = 0"
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "_i < _max_pads"
		/// @DnDArgument : "expr" "_i++"
		for(var _i = 0; _i < _max_pads; _i++) {
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
			/// @DnDVersion : 1
			/// @DnDHash : 26DDAFC6
			/// @DnDParent : 6483A8C8
			/// @DnDArgument : "var" "_connected"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "gp" "_i"
			var _connected = gamepad_is_connected(_i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37C1942C
			/// @DnDParent : 6483A8C8
			/// @DnDArgument : "var" "_connected"
			/// @DnDArgument : "value" "true"
			if(_connected == true)
			{
				/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
				/// @DnDVersion : 1
				/// @DnDHash : 6BAFDBCB
				/// @DnDParent : 37C1942C
				/// @DnDArgument : "gp" "_i"
				/// @DnDArgument : "deadzone" "controller_deadzone"
				gamepad_set_axis_deadzone(_i, controller_deadzone);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 382E536A
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "player_local_id"
		if(player_local_id == 0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 69F313C5
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "ord("W")"
			var l69F313C5_0;
			l69F313C5_0 = keyboard_check(ord("W"));
			if (l69F313C5_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 1F378EB0
				/// @DnDParent : 69F313C5
				/// @DnDArgument : "value" "-move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "5"
				vspeed += -move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 4B7F819D
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "vk_up"
			var l4B7F819D_0;
			l4B7F819D_0 = keyboard_check(vk_up);
			if (l4B7F819D_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 28EA548D
				/// @DnDParent : 4B7F819D
				/// @DnDArgument : "value" "-move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "5"
				vspeed += -move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 175F83A0
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "ord("S")"
			var l175F83A0_0;
			l175F83A0_0 = keyboard_check(ord("S"));
			if (l175F83A0_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 5E1A041F
				/// @DnDParent : 175F83A0
				/// @DnDArgument : "value" "move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "5"
				vspeed += move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 1D253777
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "vk_down"
			var l1D253777_0;
			l1D253777_0 = keyboard_check(vk_down);
			if (l1D253777_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 0F040395
				/// @DnDParent : 1D253777
				/// @DnDArgument : "value" "move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "5"
				vspeed += move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 356A1FA1
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "ord("A")"
			var l356A1FA1_0;
			l356A1FA1_0 = keyboard_check(ord("A"));
			if (l356A1FA1_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 70D70124
				/// @DnDParent : 356A1FA1
				/// @DnDArgument : "value" "-move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "4"
				hspeed += -move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 0351FD72
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "vk_left"
			var l0351FD72_0;
			l0351FD72_0 = keyboard_check(vk_left);
			if (l0351FD72_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 312711D0
				/// @DnDParent : 0351FD72
				/// @DnDArgument : "value" "-move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "4"
				hspeed += -move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 149893CC
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "ord("D")"
			var l149893CC_0;
			l149893CC_0 = keyboard_check(ord("D"));
			if (l149893CC_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 65F713BF
				/// @DnDParent : 149893CC
				/// @DnDArgument : "value" "move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "4"
				hspeed += move_speed;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 4134001E
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "vk_right"
			var l4134001E_0;
			l4134001E_0 = keyboard_check(vk_right);
			if (l4134001E_0)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 34DEFE76
				/// @DnDParent : 4134001E
				/// @DnDArgument : "value" "move_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "4"
				hspeed += move_speed;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6DEA8AD6
			/// @DnDParent : 382E536A
			/// @DnDArgument : "expr" "mouse_x != mouse_prev_x || mouse_y != mouse_prev_y"
			if(mouse_x != mouse_prev_x || mouse_y != mouse_prev_y)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 30B1BDDB
				/// @DnDParent : 6DEA8AD6
				/// @DnDArgument : "var" "is_first_frame"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "true"
				if(!(is_first_frame == true))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 092D8F58
					/// @DnDParent : 30B1BDDB
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "is_mouse_aiming"
					is_mouse_aiming = true;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 4B09DC8A
				/// @DnDParent : 6DEA8AD6
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4784D948
					/// @DnDParent : 4B09DC8A
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "is_first_frame"
					is_first_frame = false;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 36ABB0B0
			/// @DnDParent : 382E536A
			else
			{
				/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
				/// @DnDVersion : 1
				/// @DnDHash : 546AEA7E
				/// @DnDParent : 36ABB0B0
				/// @DnDArgument : "var" "_connected"
				/// @DnDArgument : "var_temp" "1"
				var _connected = gamepad_is_connected(0);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3C4F5152
				/// @DnDParent : 36ABB0B0
				/// @DnDArgument : "var" "_connected"
				/// @DnDArgument : "value" "true"
				if(_connected == true)
				{
					/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
					/// @DnDVersion : 1.1
					/// @DnDHash : 00108A23
					/// @DnDParent : 3C4F5152
					/// @DnDArgument : "var" "_v_axis"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "axis" "gp_axisrv"
					var _v_axis = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axisrv) : 0;
				
					/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
					/// @DnDVersion : 1.1
					/// @DnDHash : 384290C5
					/// @DnDParent : 3C4F5152
					/// @DnDArgument : "var" "_h_axis"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "axis" "gp_axisrh"
					var _h_axis = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axisrh) : 0;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 37F7B8E3
					/// @DnDParent : 3C4F5152
					/// @DnDArgument : "var" "_v_axis"
					/// @DnDArgument : "not" "1"
					if(!(_v_axis == 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5DBE4010
						/// @DnDParent : 37F7B8E3
						/// @DnDArgument : "expr" "false"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "is_mouse_aiming"
						is_mouse_aiming += false;
					}
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 64FB83F1
					/// @DnDParent : 3C4F5152
					/// @DnDArgument : "var" "_h_axis"
					/// @DnDArgument : "not" "1"
					if(!(_h_axis == 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5AA4340D
						/// @DnDParent : 64FB83F1
						/// @DnDArgument : "expr" "false"
						/// @DnDArgument : "var" "is_mouse_aiming"
						is_mouse_aiming = false;
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60D3C555
			/// @DnDParent : 382E536A
			/// @DnDArgument : "var" "is_mouse_aiming"
			/// @DnDArgument : "value" "true"
			if(is_mouse_aiming == true)
			{
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 51D9DCA3
				/// @DnDParent : 60D3C555
				/// @DnDArgument : "var" "_new_dir"
				/// @DnDArgument : "value" "point_direction(x, y, mouse_x, mouse_y)"
				var _new_dir = point_direction(x, y, mouse_x, mouse_y);
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 29240F76
				/// @DnDParent : 60D3C555
				/// @DnDArgument : "var" "_delta_dir"
				/// @DnDArgument : "value" "abs(_new_dir - gun_angle)"
				var _delta_dir = abs(_new_dir - gun_angle);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 446F7D9B
				/// @DnDParent : 60D3C555
				/// @DnDArgument : "var" "_delta_dir"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "180"
				if(_delta_dir >= 180)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 637C8298
					/// @DnDParent : 446F7D9B
					/// @DnDArgument : "var" "gun_angle"
					/// @DnDArgument : "op" "2"
					/// @DnDArgument : "value" "180"
					if(gun_angle > 180)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 61807C2F
						/// @DnDParent : 637C8298
						/// @DnDArgument : "expr" "-360"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "gun_angle"
						gun_angle += -360;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 76441717
					/// @DnDParent : 446F7D9B
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 38BF260A
						/// @DnDParent : 76441717
						/// @DnDArgument : "expr" "360"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "gun_angle"
						gun_angle += 360;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7200FAB4
				/// @DnDParent : 60D3C555
				/// @DnDArgument : "expr" "lerp(gun_angle, _new_dir, rotation_speed)"
				/// @DnDArgument : "var" "gun_angle"
				gun_angle = lerp(gun_angle, _new_dir, rotation_speed);
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 49ADE338
			/// @DnDParent : 382E536A
			/// @DnDArgument : "key" "ord("R")"
			var l49ADE338_0;
			l49ADE338_0 = keyboard_check(ord("R"));
			if (l49ADE338_0)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 02DA3E7A
				/// @DnDParent : 49ADE338
				/// @DnDArgument : "var" "player_is_reloading"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "true"
				if(!(player_is_reloading == true))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 506F46C4
					/// @DnDParent : 02DA3E7A
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "player_is_reloading"
					player_is_reloading = true;
				
					/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
					/// @DnDVersion : 1
					/// @DnDHash : 67C99398
					/// @DnDParent : 02DA3E7A
					/// @DnDArgument : "soundid" "reloading_sound"
					/// @DnDArgument : "not" "1"
					var l67C99398_0 = reloading_sound;
					if (!audio_is_playing(l67C99398_0))
					{
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 073F685D
						/// @DnDParent : 67C99398
						/// @DnDArgument : "target" "reloading_sound"
						/// @DnDArgument : "soundid" "snd_gun_reload"
						/// @DnDArgument : "loop" "1"
						/// @DnDArgument : "gain" "0.4"
						/// @DnDSaveInfo : "soundid" "snd_gun_reload"
						reloading_sound = audio_play_sound(snd_gun_reload, 0, 1, 0.4, undefined, 1.0);
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 1F3507F7
			/// @DnDParent : 382E536A
			var l1F3507F7_0;
			l1F3507F7_0 = keyboard_check(vk_space);
			if (l1F3507F7_0)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 4E1D8A2D
				/// @DnDParent : 1F3507F7
				/// @DnDArgument : "function" "trigger_pressed"
				trigger_pressed();
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 40D91F1E
			/// @DnDParent : 382E536A
			var l40D91F1E_0;
			l40D91F1E_0 = mouse_check_button(mb_left);
			if (l40D91F1E_0)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 2D146F46
				/// @DnDParent : 40D91F1E
				/// @DnDArgument : "function" "trigger_pressed"
				trigger_pressed();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 49353D99
		/// @DnDParent : 549374A5
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6BC3D046
			/// @DnDParent : 49353D99
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "is_mouse_aiming"
			is_mouse_aiming = false;
		}
	
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
		/// @DnDVersion : 1
		/// @DnDHash : 11674228
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "_connected"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "player_local_id"
		var _connected = gamepad_is_connected(player_local_id);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7ACE0F2B
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "_connected"
		/// @DnDArgument : "value" "true"
		if(_connected == true)
		{
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 3D714678
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "var" "_lv_axis"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "gp" "player_local_id"
			/// @DnDArgument : "axis" "gp_axislv"
			var _lv_axis = gamepad_is_connected(player_local_id) ? gamepad_axis_value(player_local_id, gp_axislv) : 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 2CA97AA2
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "value" "move_speed * _lv_axis"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "instvar" "5"
			vspeed += move_speed * _lv_axis;
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 560AC6FE
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "var" "_lh_axis"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "gp" "player_local_id"
			var _lh_axis = gamepad_is_connected(player_local_id) ? gamepad_axis_value(player_local_id, gp_axislh) : 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 23845CA2
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "value" "move_speed * _lh_axis"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "instvar" "4"
			hspeed += move_speed * _lh_axis;
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 2A11A591
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "var" "_rv_axis"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "gp" "player_local_id"
			/// @DnDArgument : "axis" "gp_axisrv"
			var _rv_axis = gamepad_is_connected(player_local_id) ? gamepad_axis_value(player_local_id, gp_axisrv) : 0;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A4BE3A9
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "var" "_look_x"
			/// @DnDArgument : "value" "_rv_axis"
			var _look_x = _rv_axis;
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 45B43E5E
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "var" "_rh_axis"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "gp" "player_local_id"
			/// @DnDArgument : "axis" "gp_axisrh"
			var _rh_axis = gamepad_is_connected(player_local_id) ? gamepad_axis_value(player_local_id, gp_axisrh) : 0;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D92A4B0
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "var" "_look_y"
			/// @DnDArgument : "value" "-_rh_axis"
			var _look_y = -_rh_axis;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 77EB2D49
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "expr" "_look_x != 0 || _look_y != 0"
			if(_look_x != 0 || _look_y != 0)
			{
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 690377B1
				/// @DnDParent : 77EB2D49
				/// @DnDArgument : "var" "_new_dir"
				/// @DnDArgument : "value" "point_direction(0, 0, _look_x, _look_y) - 90"
				var _new_dir = point_direction(0, 0, _look_x, _look_y) - 90;
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 52FDDD23
				/// @DnDParent : 77EB2D49
				/// @DnDArgument : "var" "_delta_dir"
				/// @DnDArgument : "value" "abs(_new_dir - gun_angle)"
				var _delta_dir = abs(_new_dir - gun_angle);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2598ACFF
				/// @DnDParent : 77EB2D49
				/// @DnDArgument : "var" "_delta_dir"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "180"
				if(_delta_dir > 180)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6E8D1C52
					/// @DnDParent : 2598ACFF
					/// @DnDArgument : "var" "gun_angle"
					/// @DnDArgument : "op" "2"
					/// @DnDArgument : "value" "180"
					if(gun_angle > 180)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1B5CAF38
						/// @DnDParent : 6E8D1C52
						/// @DnDArgument : "expr" "-360"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "gun_angle"
						gun_angle += -360;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 7FF423A8
					/// @DnDParent : 2598ACFF
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 634CF0DC
						/// @DnDParent : 7FF423A8
						/// @DnDArgument : "expr" "360"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "gun_angle"
						gun_angle += 360;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 56582311
				/// @DnDParent : 77EB2D49
				/// @DnDArgument : "expr" "lerp(gun_angle, _new_dir, rotation_speed)"
				/// @DnDArgument : "var" "gun_angle"
				gun_angle = lerp(gun_angle, _new_dir, rotation_speed);
			}
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 1400BD86
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "gp" "player_local_id"
			/// @DnDArgument : "btn" "gp_face3"
			var l1400BD86_0 = player_local_id;
			var l1400BD86_1 = gp_face3;
			if(gamepad_is_connected(l1400BD86_0) && (gamepad_button_check(l1400BD86_0, l1400BD86_1) || gamepad_button_check_released(l1400BD86_0, l1400BD86_1)))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 49ED1EB0
				/// @DnDParent : 1400BD86
				/// @DnDArgument : "var" "player_is_reloading"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "true"
				if(!(player_is_reloading == true))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0E9D9B45
					/// @DnDParent : 49ED1EB0
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "player_is_reloading"
					player_is_reloading = true;
				
					/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
					/// @DnDVersion : 1
					/// @DnDHash : 0AE29F69
					/// @DnDParent : 49ED1EB0
					/// @DnDArgument : "soundid" "reloading_sound"
					/// @DnDArgument : "not" "1"
					var l0AE29F69_0 = reloading_sound;
					if (!audio_is_playing(l0AE29F69_0))
					{
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 2048117E
						/// @DnDParent : 0AE29F69
						/// @DnDArgument : "target" "reloading_sound"
						/// @DnDArgument : "soundid" "snd_gun_reload"
						/// @DnDArgument : "loop" "1"
						/// @DnDArgument : "gain" "0.4"
						/// @DnDSaveInfo : "soundid" "snd_gun_reload"
						reloading_sound = audio_play_sound(snd_gun_reload, 0, 1, 0.4, undefined, 1.0);
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 2F077D62
			/// @DnDParent : 7ACE0F2B
			/// @DnDArgument : "gp" "player_local_id"
			/// @DnDArgument : "btn" "gp_shoulderrb"
			var l2F077D62_0 = player_local_id;
			var l2F077D62_1 = gp_shoulderrb;
			if(gamepad_is_connected(l2F077D62_0) && (gamepad_button_check(l2F077D62_0, l2F077D62_1) || gamepad_button_check_released(l2F077D62_0, l2F077D62_1)))
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 31D120AC
				/// @DnDParent : 2F077D62
				/// @DnDArgument : "function" "trigger_pressed"
				trigger_pressed();
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 26D8B8BC
		/// @DnDParent : 549374A5
		/// @DnDArgument : "value" "clamp(speed, -max_speed, max_speed)"
		/// @DnDArgument : "instvar" "3"
		speed = clamp(speed, -max_speed, max_speed);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 713A3143
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "_delta_body_dir"
		/// @DnDArgument : "value" "abs(body_angle - direction)"
		var _delta_body_dir = abs(body_angle - direction);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 336B4C05
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "_delta_body_dir"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "180"
		if(_delta_body_dir >= 180)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68EF12C1
			/// @DnDParent : 336B4C05
			/// @DnDArgument : "var" "body_angle"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "180"
			if(body_angle > 180)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4F1E7FB0
				/// @DnDParent : 68EF12C1
				/// @DnDArgument : "expr" "-360"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "body_angle"
				body_angle += -360;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7F06FE75
			/// @DnDParent : 336B4C05
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 165840D6
				/// @DnDParent : 7F06FE75
				/// @DnDArgument : "expr" "360"
				/// @DnDArgument : "var" "body_angle"
				body_angle = 360;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F9F9890
		/// @DnDParent : 549374A5
		/// @DnDArgument : "expr" "lerp(body_angle, direction, rotation_speed * 0.5)"
		/// @DnDArgument : "var" "body_angle"
		body_angle = lerp(body_angle, direction, rotation_speed * 0.5);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 03236A58
		/// @DnDParent : 549374A5
		/// @DnDArgument : "value" "body_angle"
		/// @DnDArgument : "instvar" "12"
		image_angle = body_angle;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E21C7A4
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "player_is_reloading"
		/// @DnDArgument : "value" "true"
		if(player_is_reloading == true)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14B7EAA1
			/// @DnDParent : 4E21C7A4
			/// @DnDArgument : "var" "player_curr_ammo"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "player_max_ammo"
			if(player_curr_ammo < player_max_ammo)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 07589CAE
				/// @DnDParent : 14B7EAA1
				/// @DnDArgument : "expr" "delta_time / 1000000"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "player_reload_cooldown"
				player_reload_cooldown += delta_time / 1000000;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2ED5FBB7
				/// @DnDParent : 14B7EAA1
				/// @DnDArgument : "var" "player_reload_cooldown"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "player_reload_rate"
				if(player_reload_cooldown > player_reload_rate)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 48569C22
					/// @DnDInput : 2
					/// @DnDParent : 2ED5FBB7
					/// @DnDArgument : "expr" "-player_reload_rate"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "expr_relative_1" "1"
					/// @DnDArgument : "var" "player_reload_cooldown"
					/// @DnDArgument : "var_1" "player_curr_ammo"
					player_reload_cooldown += -player_reload_rate;
					player_curr_ammo += 1;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1FCEED7A
			/// @DnDParent : 4E21C7A4
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 426E10F8
				/// @DnDParent : 1FCEED7A
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "player_is_reloading"
				player_is_reloading = false;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51E9EE35
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "player_fire_cooldown"
		/// @DnDArgument : "op" "2"
		if(player_fire_cooldown > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2FD0FF4F
			/// @DnDParent : 51E9EE35
			/// @DnDArgument : "expr" "-delta_time / 1000000"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "player_fire_cooldown"
			player_fire_cooldown += -delta_time / 1000000;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0DA193D2
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "is_flashed"
		/// @DnDArgument : "value" "true"
		if(is_flashed == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D4A3ECB
			/// @DnDParent : 0DA193D2
			/// @DnDArgument : "expr" "-delta_time / 1000000"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "flash_cooldown"
			flash_cooldown += -delta_time / 1000000;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B720DBF
			/// @DnDParent : 0DA193D2
			/// @DnDArgument : "var" "flash_cooldown"
			/// @DnDArgument : "op" "3"
			if(flash_cooldown <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5266EC37
				/// @DnDInput : 2
				/// @DnDParent : 7B720DBF
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "flash_time"
				/// @DnDArgument : "var" "is_flashed"
				/// @DnDArgument : "var_1" "flash_cooldown"
				is_flashed = false;
				flash_cooldown = flash_time;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B714EE3
		/// @DnDParent : 549374A5
		/// @DnDArgument : "var" "hud_health_alpha"
		/// @DnDArgument : "op" "2"
		if(hud_health_alpha > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 66CAE902
			/// @DnDParent : 2B714EE3
			/// @DnDArgument : "expr" "-delta_time * 2 / 1000000"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "hud_health_alpha"
			hud_health_alpha += -delta_time * 2 / 1000000;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 687DE7A4
	/// @DnDParent : 40BE38E2
	/// @DnDArgument : "var" "player_health"
	/// @DnDArgument : "op" "3"
	if(player_health <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 211D6940
		/// @DnDInput : 4
		/// @DnDParent : 687DE7A4
		/// @DnDArgument : "var" "_new_boom"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "instance_create_depth"
		/// @DnDArgument : "arg" "x"
		/// @DnDArgument : "arg_1" "y"
		/// @DnDArgument : "arg_2" "depth - 1"
		/// @DnDArgument : "arg_3" "obj_particle_handler"
		var _new_boom = instance_create_depth(x, y, depth - 1, obj_particle_handler);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2838BDE6
		/// @DnDApplyTo : _new_boom
		/// @DnDParent : 687DE7A4
		/// @DnDArgument : "function" "set_character_defeat"
		with(_new_boom) {
			set_character_defeat();
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7019CE1C
		/// @DnDApplyTo : _new_boom
		/// @DnDParent : 687DE7A4
		/// @DnDArgument : "expr" "other"
		/// @DnDArgument : "var" "owner"
		with(_new_boom) {
		owner = other;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7D8B70D0
		/// @DnDParent : 687DE7A4
		instance_destroy();
	}
}