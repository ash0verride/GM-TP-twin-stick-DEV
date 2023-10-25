/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D18BABD
/// @DnDArgument : "var" "owner.object_index"
/// @DnDArgument : "value" "obj_player"
if(owner.object_index == obj_player)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DA3044E
	/// @DnDParent : 4D18BABD
	/// @DnDArgument : "var" "_owner_id"
	/// @DnDArgument : "value" "owner.player_local_id"
	var _owner_id = owner.player_local_id;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6567713E
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 4D18BABD
	with(obj_player) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CFF562E
		/// @DnDParent : 6567713E
		/// @DnDArgument : "var" "player_local_id"
		/// @DnDArgument : "value" "_owner_id"
		if(player_local_id == _owner_id)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E4FB703
			/// @DnDParent : 4CFF562E
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "player_score"
			player_score += 100;
		}
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 712CC614
	/// @DnDInput : 4
	/// @DnDParent : 4D18BABD
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
	/// @DnDHash : 692A4056
	/// @DnDApplyTo : _new_boom
	/// @DnDParent : 4D18BABD
	/// @DnDArgument : "function" "set_character_defeat"
	with(_new_boom) {
		set_character_defeat();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B602BDE
	/// @DnDParent : 4D18BABD
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "_new_boom.owner"
	_new_boom.owner = self;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7537FD02
	/// @DnDApplyTo : other
	/// @DnDParent : 4D18BABD
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 06900B48
	/// @DnDParent : 4D18BABD
	/// @DnDArgument : "function" "spark_projectile"
	spark_projectile();
}