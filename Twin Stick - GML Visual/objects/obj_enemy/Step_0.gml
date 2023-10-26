/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 340F1866
/// @DnDComment : // Case statement used to control enemy behavior based on games state
/// @DnDArgument : "expr" "obj_game_manager.curr_game_state"
var l340F1866_0 = obj_game_manager.curr_game_state;
switch(l340F1866_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0EFD664A
	/// @DnDComment : // Case for when the game has ended
	/// @DnDParent : 340F1866
	/// @DnDArgument : "const" "GAME_STATE.ENDED"
	case GAME_STATE.ENDED:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0454BC4B
		/// @DnDComment : // Enemy speed will slow down based on dropoff rate
		/// @DnDParent : 0EFD664A
		/// @DnDArgument : "value" "speed * speed_dropoff"
		/// @DnDArgument : "instvar" "3"
		speed = speed * speed_dropoff;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 772BB751
		/// @DnDComment : // Enemy speed cannot exceed maximum speed
		/// @DnDParent : 0EFD664A
		/// @DnDArgument : "value" "min(speed, max_speed)"
		/// @DnDArgument : "instvar" "3"
		speed = min(speed, max_speed);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0636E50D
	/// @DnDComment : // Case for when the game is playing
	/// @DnDParent : 340F1866
	/// @DnDArgument : "const" "GAME_STATE.PLAYING"
	case GAME_STATE.PLAYING:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60E9B64D
		/// @DnDComment : // Checks if the enemy is still spawning
		/// @DnDParent : 0636E50D
		/// @DnDArgument : "var" "is_spawning"
		/// @DnDArgument : "value" "true"
		if(is_spawning == true)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18FFD435
			/// @DnDComment : // Checks if itself is within a collision rectangle created around the spawner it came from and sets itself to the variable is it still does
			/// @DnDParent : 60E9B64D
			/// @DnDArgument : "var" "_instance"
			/// @DnDArgument : "value" "collision_rectangle(owner.x - (obj_game_manager.cell_width / 1.05), owner.y - (obj_game_manager.cell_height / 1.05), owner.x + (obj_game_manager.cell_width / 1.05) , owner.y + (obj_game_manager.cell_height / 1.05), self, true, false)"
			var _instance = collision_rectangle(owner.x - (obj_game_manager.cell_width / 1.05), owner.y - (obj_game_manager.cell_height / 1.05), owner.x + (obj_game_manager.cell_width / 1.05) , owner.y + (obj_game_manager.cell_height / 1.05), self, true, false);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 046B7A33
			/// @DnDComment : // Checks if the variable is empty
			/// @DnDParent : 60E9B64D
			/// @DnDArgument : "var" "_instance"
			/// @DnDArgument : "value" "noone"
			if(_instance == noone)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3D84221D
				/// @DnDComment : // Changes its spawning state to false
				/// @DnDParent : 046B7A33
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "is_spawning"
				is_spawning = false;
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 736C18FB
				/// @DnDComment : // Locks the nearest player target and begins path finding
				/// @DnDParent : 046B7A33
				/// @DnDArgument : "function" "lock_target"
				lock_target();
			
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 0E311E80
				/// @DnDComment : // Makes sure the direction it is traveling in matches its sprite facing
				/// @DnDParent : 046B7A33
				/// @DnDArgument : "value" "image_angle + 180"
				/// @DnDArgument : "instvar" "2"
				direction = image_angle + 180;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6060586A
		/// @DnDParent : 0636E50D
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D451E11
			/// @DnDComment : // Checks if the next node is within threshold distance
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "point_distance(x, y, next_node_x, next_node_y)"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "node_threshold"
			if(point_distance(x, y, next_node_x, next_node_y) <= node_threshold)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 5202EA5F
				/// @DnDComment : // Calls function to find new path
				/// @DnDParent : 6D451E11
				/// @DnDArgument : "function" "find_path"
				find_path();
			}
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02A1954B
			/// @DnDComment : // Stores the node direction
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_node_direction"
			/// @DnDArgument : "value" "point_direction(x, y, next_node_x, next_node_y)"
			var _node_direction = point_direction(x, y, next_node_x, next_node_y);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A46392D
			/// @DnDComment : // Calculates the speed change to the next node position
			/// @DnDInput : 2
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_node_velo_x"
			/// @DnDArgument : "value" "lengthdir_x(max_speed, _node_direction)"
			/// @DnDArgument : "var_1" "_node_velo_y"
			/// @DnDArgument : "value_1" "lengthdir_y(max_speed, _node_direction)"
			var _node_velo_x = lengthdir_x(max_speed, _node_direction);
			var _node_velo_y = lengthdir_y(max_speed, _node_direction);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 483DD8F0
			/// @DnDComment : // Lerps the speed towards the next position
			/// @DnDInput : 2
			/// @DnDParent : 6060586A
			/// @DnDArgument : "value" "lerp(hspeed, _node_velo_x, speed_rate)"
			/// @DnDArgument : "value_1" "lerp(vspeed, _node_velo_y, speed_rate)"
			/// @DnDArgument : "instvar" "4"
			/// @DnDArgument : "instvar_1" "5"
			hspeed = lerp(hspeed, _node_velo_x, speed_rate);
			vspeed = lerp(vspeed, _node_velo_y, speed_rate);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 77A92D4B
			/// @DnDComment : // Caps the speed to the max speed
			/// @DnDParent : 6060586A
			/// @DnDArgument : "value" "min(speed, max_speed)"
			/// @DnDArgument : "instvar" "3"
			speed = min(speed, max_speed);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DD9C3F0
			/// @DnDComment : // Stores a tempory variable of self
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_self"
			/// @DnDArgument : "value" "self"
			var _self = self;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 1C5679BC
			/// @DnDComment : // Loops through obstacles witin the room
			/// @DnDApplyTo : {obj_obstacle}
			/// @DnDParent : 6060586A
			with(obj_obstacle) {
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 35CF0035
				/// @DnDComment : // Calculates the distance to obstacle
				/// @DnDParent : 1C5679BC
				/// @DnDArgument : "var" "_repulse_dis"
				/// @DnDArgument : "value" "point_distance(_self.x, _self.y, x, y)"
				var _repulse_dis = point_distance(_self.x, _self.y, x, y);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 34BD5FED
				/// @DnDComment : // Checks distance is less than repulse distance
				/// @DnDParent : 1C5679BC
				/// @DnDArgument : "var" "_repulse_dis"
				/// @DnDArgument : "op" "3"
				/// @DnDArgument : "value" "_self.repulse_buffer"
				if(_repulse_dis <= _self.repulse_buffer)
				{
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 253598CF
					/// @DnDComment : // Calculates strength of repulse from distance$(13_10)// Calculates direction of repulse from positions
					/// @DnDInput : 2
					/// @DnDParent : 34BD5FED
					/// @DnDArgument : "var" "_repulse_strength"
					/// @DnDArgument : "value" "_self.repulse_buffer / _repulse_dis"
					/// @DnDArgument : "var_1" "_repulse_dir"
					/// @DnDArgument : "value_1" "point_direction(x, y, _self.x, _self.y)"
					var _repulse_strength = _self.repulse_buffer / _repulse_dis;
					var _repulse_dir = point_direction(x, y, _self.x, _self.y);
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3F8301CB
					/// @DnDComment : // Repulse speed calculated from direction, speed and strength
					/// @DnDInput : 2
					/// @DnDParent : 34BD5FED
					/// @DnDArgument : "var" "_repulse_velo_x"
					/// @DnDArgument : "value" "lengthdir_x(_self.max_speed, _repulse_dir) * _repulse_strength"
					/// @DnDArgument : "var_1" "_repulse_velo_y"
					/// @DnDArgument : "value_1" "lengthdir_y(_self.max_speed, _repulse_dir) * _repulse_strength"
					var _repulse_velo_x = lengthdir_x(_self.max_speed, _repulse_dir) * _repulse_strength;
					var _repulse_velo_y = lengthdir_y(_self.max_speed, _repulse_dir) * _repulse_strength;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5F4F0483
					/// @DnDComment : // Lerps towards new speed
					/// @DnDInput : 2
					/// @DnDParent : 34BD5FED
					/// @DnDArgument : "expr" "lerp(_self.hspeed, _repulse_velo_x, _self.speed_rate)"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "expr_1" "lerp(_self.vspeed, _repulse_velo_y, _self.speed_rate)"
					/// @DnDArgument : "expr_relative_1" "1"
					/// @DnDArgument : "var" "_self.hspeed"
					/// @DnDArgument : "var_1" "_self.vspeed"
					_self.hspeed += lerp(_self.hspeed, _repulse_velo_x, _self.speed_rate);
					_self.vspeed += lerp(_self.vspeed, _repulse_velo_y, _self.speed_rate);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2242725A
					/// @DnDComment : // Limits speed by maximum speed
					/// @DnDParent : 34BD5FED
					/// @DnDArgument : "expr" "min(_self.speed, _self.max_speed)"
					/// @DnDArgument : "var" "_self.speed"
					_self.speed = min(_self.speed, _self.max_speed);
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 7465D4B5
			/// @DnDComment : // Loops through enemies within the room
			/// @DnDApplyTo : {obj_enemy}
			/// @DnDParent : 6060586A
			with(obj_enemy) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1DF9752A
				/// @DnDComment : // Checks enemy is not itself
				/// @DnDParent : 7465D4B5
				/// @DnDArgument : "var" "id"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "_self.id"
				if(!(id == _self.id))
				{
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 518BF8F8
					/// @DnDComment : // Calculates the distance to enemy
					/// @DnDParent : 1DF9752A
					/// @DnDArgument : "var" "_repulse_dis"
					/// @DnDArgument : "value" "point_distance(_self.x, _self.y, x, y)"
					var _repulse_dis = point_distance(_self.x, _self.y, x, y);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6C892797
					/// @DnDComment : // Checks distance is less than repulse distance
					/// @DnDParent : 1DF9752A
					/// @DnDArgument : "var" "_repulse_dis"
					/// @DnDArgument : "op" "3"
					/// @DnDArgument : "value" "_self.repulse_buffer"
					if(_repulse_dis <= _self.repulse_buffer)
					{
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 25C81A8C
						/// @DnDComment : // Calculates the strenght of repulse from distance$(13_10)// Calculates the direction of repulse from positions
						/// @DnDInput : 2
						/// @DnDParent : 6C892797
						/// @DnDArgument : "var" "_repulse_strength"
						/// @DnDArgument : "value" "_self.repulse_buffer / _repulse_dis"
						/// @DnDArgument : "var_1" "_repulse_dir"
						/// @DnDArgument : "value_1" "point_direction(x, y, _self.x, _self.y)"
						var _repulse_strength = _self.repulse_buffer / _repulse_dis;
						var _repulse_dir = point_direction(x, y, _self.x, _self.y);
					
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 22E519A1
						/// @DnDComment : // Repulse speed calculated from direction speed and strength
						/// @DnDInput : 2
						/// @DnDParent : 6C892797
						/// @DnDArgument : "var" "_repulse_velo_x"
						/// @DnDArgument : "value" "lengthdir_x(_self.max_speed, _repulse_dir) * _repulse_strength"
						/// @DnDArgument : "var_1" "_repulse_velo_y"
						/// @DnDArgument : "value_1" "lengthdir_y(_self.max_speed, _repulse_dir) * _repulse_strength"
						var _repulse_velo_x = lengthdir_x(_self.max_speed, _repulse_dir) * _repulse_strength;
						var _repulse_velo_y = lengthdir_y(_self.max_speed, _repulse_dir) * _repulse_strength;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2E47092C
						/// @DnDComment : // Lerps towards new speed
						/// @DnDInput : 2
						/// @DnDParent : 6C892797
						/// @DnDArgument : "expr" "lerp(_self.hspeed, _repulse_velo_x, _self.speed_rate)"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "expr_1" "lerp(_self.vspeed, _repulse_velo_y, _self.speed_rate)"
						/// @DnDArgument : "expr_relative_1" "1"
						/// @DnDArgument : "var" "_self.hspeed"
						/// @DnDArgument : "var_1" "_self.vspeed"
						_self.hspeed += lerp(_self.hspeed, _repulse_velo_x, _self.speed_rate);
						_self.vspeed += lerp(_self.vspeed, _repulse_velo_y, _self.speed_rate);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 35A59473
						/// @DnDComment : // Limits speed by maximum speed
						/// @DnDParent : 6C892797
						/// @DnDArgument : "expr" "min(_self.speed, _self.max_speed)"
						/// @DnDArgument : "var" "_self.speed"
						_self.speed = min(_self.speed, _self.max_speed);
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DE3722D
			/// @DnDComment : // Calculates new angle from direction fliped because left facing
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_new_angle"
			/// @DnDArgument : "value" "direction - 180"
			var _new_angle = direction - 180;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 34679D0A
			/// @DnDComment : // Calculates the angle difference between the two facings
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_angle_difference"
			/// @DnDArgument : "value" "angle_difference(_new_angle, image_angle)"
			var _angle_difference = angle_difference(_new_angle, image_angle);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74838F21
			/// @DnDComment : // Checks if colliding with something
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "is_colliding"
			/// @DnDArgument : "value" "true"
			if(is_colliding == true)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 7B672B44
				/// @DnDComment : // Adjusts the image angle to actual angle very slowly
				/// @DnDParent : 74838F21
				/// @DnDArgument : "value" "_angle_difference * rotation_speed * speed_dropoff"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "12"
				image_angle += _angle_difference * rotation_speed * speed_dropoff;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 718F6EC8
				/// @DnDComment : // Sets state back to false
				/// @DnDParent : 74838F21
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "is_colliding"
				is_colliding = false;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 696A7527
			/// @DnDParent : 6060586A
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 3F04092A
				/// @DnDComment : // Adjusts the image angle to actual angle
				/// @DnDParent : 696A7527
				/// @DnDArgument : "value" "_angle_difference * rotation_speed"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "instvar" "12"
				image_angle += _angle_difference * rotation_speed;
			}
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63B8CFF8
			/// @DnDComment : // Calculates how far target is
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_target_distance"
			/// @DnDArgument : "value" "point_distance(x, y, target.x, target.y)"
			var _target_distance = point_distance(x, y, target.x, target.y);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 00352D7E
			/// @DnDComment : // Checks if target is inside ignore threshold
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_target_distance"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "danger_close_distance"
			if(_target_distance <= danger_close_distance)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 24CAE934
				/// @DnDComment : // Slows speed down
				/// @DnDParent : 00352D7E
				/// @DnDArgument : "value" "speed * 0.1"
				/// @DnDArgument : "instvar" "3"
				speed = speed * 0.1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0917F3F7
				/// @DnDComment : // Allows firing without caring for other obstacles or enemies
				/// @DnDParent : 00352D7E
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "can_danger_close"
				can_danger_close = true;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0F28EA8A
			/// @DnDParent : 6060586A
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 320CFC40
				/// @DnDComment : // Sets state back to false
				/// @DnDParent : 0F28EA8A
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "can_danger_close"
				can_danger_close = false;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 100632CF
			/// @DnDComment : // Checks if target distance is close enough to fire upon
			/// @DnDParent : 6060586A
			/// @DnDArgument : "var" "_target_distance"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "fire_max_distance"
			if(_target_distance <= fire_max_distance)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1BFA94D3
				/// @DnDComment : // Reduces fire cooldown
				/// @DnDParent : 100632CF
				/// @DnDArgument : "expr" "-delta_time / 1000000"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "fire_cooldown"
				fire_cooldown += -delta_time / 1000000;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45BEB180
				/// @DnDComment : // Checks if cooldown ready to fire
				/// @DnDParent : 100632CF
				/// @DnDArgument : "var" "fire_cooldown"
				/// @DnDArgument : "op" "3"
				if(fire_cooldown <= 0)
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 66A95D04
					/// @DnDComment : // Calls create projectile function
					/// @DnDParent : 45BEB180
					/// @DnDArgument : "function" "create_projectile_enemy"
					create_projectile_enemy();
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6B858476
					/// @DnDComment : // Resets cooldown
					/// @DnDParent : 45BEB180
					/// @DnDArgument : "expr" "fire_rate"
					/// @DnDArgument : "var" "fire_cooldown"
					fire_cooldown = fire_rate;
				}
			}
		}
		break;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66F2E9AE
/// @DnDComment : // Checks if the enemy is flashed and the game is not paused
/// @DnDArgument : "var" "is_flashing"
/// @DnDArgument : "value" "true"
if(is_flashing == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E07D942
	/// @DnDParent : 66F2E9AE
	/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "GAME_STATE.PAUSED"
	if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34FACD9E
		/// @DnDComment : // Reduces the flash cooldown
		/// @DnDParent : 1E07D942
		/// @DnDArgument : "expr" "-delta_time / 1000000"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "flash_cooldown"
		flash_cooldown += -delta_time / 1000000;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3126A504
		/// @DnDComment : // Checks if the flash cooldown has finished
		/// @DnDParent : 1E07D942
		/// @DnDArgument : "var" "flash_cooldown"
		/// @DnDArgument : "op" "3"
		if(flash_cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45753341
			/// @DnDComment : // Resets the flash state$(13_10)// Resets the flash cooldown
			/// @DnDInput : 2
			/// @DnDParent : 3126A504
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "flash_time"
			/// @DnDArgument : "var" "is_flashing"
			/// @DnDArgument : "var_1" "flash_cooldown"
			is_flashing = false;
			flash_cooldown = flash_time;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1249AC57
/// @DnDComment : // Checks if the enemy is out of health
/// @DnDArgument : "var" "curr_health"
/// @DnDArgument : "op" "3"
if(curr_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 60E1B985
	/// @DnDComment : // Destroys itself
	/// @DnDParent : 1249AC57
	instance_destroy();
}