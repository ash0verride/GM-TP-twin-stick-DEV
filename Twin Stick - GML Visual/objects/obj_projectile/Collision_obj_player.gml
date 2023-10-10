/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18888D45
/// @DnDArgument : "var" "owner.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "other.id"
if(!(owner.id == other.id))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5C699B2F
	/// @DnDApplyTo : other
	/// @DnDParent : 18888D45
	/// @DnDArgument : "expr" "is_flashed"
	with(other) var l5C699B2F_0 = is_flashed;
	if(l5C699B2F_0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 04A4784E
		/// @DnDParent : 5C699B2F
		/// @DnDArgument : "function" "spark_projectile"
		spark_projectile();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7A309412
	/// @DnDParent : 18888D45
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49562379
		/// @DnDParent : 7A309412
		/// @DnDArgument : "var" "owner.object_index"
		/// @DnDArgument : "value" "obj_player"
		if(owner.object_index == obj_player)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02BE1A3B
			/// @DnDParent : 49562379
			/// @DnDArgument : "var" "_owner_id"
			/// @DnDArgument : "value" "owner.player_local_id"
			var _owner_id = owner.player_local_id;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 49378F74
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 49562379
			with(obj_player) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 78EE4608
				/// @DnDParent : 49378F74
				/// @DnDArgument : "var" "player_local_id"
				/// @DnDArgument : "value" "_owner_id"
				if(player_local_id == _owner_id)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 66D0433C
					/// @DnDParent : 78EE4608
					/// @DnDArgument : "expr" "500"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "player_score"
					player_score += 500;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54D9CBAC
		/// @DnDInput : 2
		/// @DnDApplyTo : other
		/// @DnDParent : 7A309412
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "is_flashed"
		/// @DnDArgument : "var_1" "player_health"
		with(other) {
		is_flashed = true;
		player_health += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 08126DFB
		/// @DnDInput : 4
		/// @DnDParent : 7A309412
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
		/// @DnDHash : 0162B1AD
		/// @DnDApplyTo : _new_boom
		/// @DnDParent : 7A309412
		/// @DnDArgument : "function" "set_character_defeat"
		with(_new_boom) {
			set_character_defeat();
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DA7A883
		/// @DnDParent : 7A309412
		/// @DnDArgument : "expr" "self"
		/// @DnDArgument : "var" "_new_boom.owner"
		_new_boom.owner = self;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7167D4E4
		/// @DnDParent : 7A309412
		/// @DnDArgument : "function" "spark_projectile"
		spark_projectile();
	}
}