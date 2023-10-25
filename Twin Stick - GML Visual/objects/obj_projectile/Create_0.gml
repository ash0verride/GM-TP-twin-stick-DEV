/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 18610843
/// @DnDArgument : "funcName" "correct_player"
function correct_player() 
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 7444EB67
	/// @DnDParent : 18610843
	/// @DnDArgument : "direction" "owner.gun_angle"
	direction = owner.gun_angle;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5C501965
	/// @DnDInput : 4
	/// @DnDParent : 18610843
	/// @DnDArgument : "value" "spr_player_fireball"
	/// @DnDArgument : "value_1" "direction"
	/// @DnDArgument : "value_2" "owner.hspeed * speed_dropoff"
	/// @DnDArgument : "value_relative_2" "1"
	/// @DnDArgument : "value_3" "owner.vspeed * speed_dropoff"
	/// @DnDArgument : "value_relative_3" "1"
	/// @DnDArgument : "instvar" "10"
	/// @DnDArgument : "instvar_1" "12"
	/// @DnDArgument : "instvar_2" "4"
	/// @DnDArgument : "instvar_3" "5"
	sprite_index = spr_player_fireball;
	image_angle = direction;
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5182194E
	/// @DnDInput : 4
	/// @DnDParent : 18610843
	/// @DnDArgument : "var" "_new_gun_flash"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "instance_create_depth"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "depth - 1"
	/// @DnDArgument : "arg_3" "obj_player_shoot"
	var _new_gun_flash = instance_create_depth(x, y, depth - 1, obj_player_shoot);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D20A5DA
	/// @DnDInput : 2
	/// @DnDApplyTo : _new_gun_flash
	/// @DnDParent : 18610843
	/// @DnDArgument : "expr" "other.owner"
	/// @DnDArgument : "expr_1" "other.direction"
	/// @DnDArgument : "var" "owner"
	/// @DnDArgument : "var_1" "image_angle"
	with(_new_gun_flash) {
	owner = other.owner;
	image_angle = other.direction;
	
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7F16BF6E
	/// @DnDInput : 4
	/// @DnDParent : 18610843
	/// @DnDArgument : "var" "_new_smoke"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "instance_create_depth"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "depth - 1"
	/// @DnDArgument : "arg_3" "obj_particle_handler"
	var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0DF6E07D
	/// @DnDApplyTo : _new_smoke
	/// @DnDParent : 18610843
	/// @DnDArgument : "function" "set_smoke"
	with(_new_smoke) {
		set_smoke();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00785863
	/// @DnDApplyTo : _new_smoke
	/// @DnDParent : 18610843
	/// @DnDArgument : "expr" "other"
	/// @DnDArgument : "var" "owner"
	with(_new_smoke) {
	owner = other;
	
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4A4E0AAA
/// @DnDArgument : "funcName" "correct_enemy"
function correct_enemy() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1076062C
	/// @DnDInput : 5
	/// @DnDParent : 4A4E0AAA
	/// @DnDArgument : "value" "spr_enemy_fireball"
	/// @DnDArgument : "value_1" "point_direction(owner.x, owner.y, owner.target.x, owner.target.y)"
	/// @DnDArgument : "value_2" "direction"
	/// @DnDArgument : "value_3" "owner.hspeed * speed_dropoff"
	/// @DnDArgument : "value_relative_3" "1"
	/// @DnDArgument : "value_4" "owner.vspeed * speed_dropoff"
	/// @DnDArgument : "value_relative_4" "1"
	/// @DnDArgument : "instvar" "10"
	/// @DnDArgument : "instvar_1" "2"
	/// @DnDArgument : "instvar_2" "12"
	/// @DnDArgument : "instvar_3" "4"
	/// @DnDArgument : "instvar_4" "5"
	sprite_index = spr_enemy_fireball;
	direction = point_direction(owner.x, owner.y, owner.target.x, owner.target.y);
	image_angle = direction;
	hspeed += owner.hspeed * speed_dropoff;
	vspeed += owner.vspeed * speed_dropoff;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 639CDA86
	/// @DnDInput : 4
	/// @DnDParent : 4A4E0AAA
	/// @DnDArgument : "var" "_new_smoke"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "instance_create_depth"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "depth - 1"
	/// @DnDArgument : "arg_3" "obj_particle_handler"
	var _new_smoke = instance_create_depth(x, y, depth - 1, obj_particle_handler);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6EC19938
	/// @DnDApplyTo : _new_smoke
	/// @DnDParent : 4A4E0AAA
	/// @DnDArgument : "function" "set_smoke"
	with(_new_smoke) {
		set_smoke();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CF034E4
	/// @DnDApplyTo : _new_smoke
	/// @DnDParent : 4A4E0AAA
	/// @DnDArgument : "expr" "other"
	/// @DnDArgument : "var" "owner"
	with(_new_smoke) {
	owner = other;
	
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 019A489F
/// @DnDArgument : "funcName" "spark_projectile"
function spark_projectile() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 09C79617
	/// @DnDInput : 4
	/// @DnDParent : 019A489F
	/// @DnDArgument : "var" "_new_hit"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "instance_create_depth"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "depth - 1"
	/// @DnDArgument : "arg_3" "obj_particle_handler"
	var _new_hit = instance_create_depth(x, y, depth - 1, obj_particle_handler);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F205E29
	/// @DnDParent : 019A489F
	/// @DnDArgument : "var" "owner.object_index"
	/// @DnDArgument : "value" "obj_player"
	if(owner.object_index == obj_player)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 619751C7
		/// @DnDApplyTo : _new_hit
		/// @DnDParent : 3F205E29
		/// @DnDArgument : "function" "set_player_shot"
		with(_new_hit) {
			set_player_shot();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3FEEE8AC
	/// @DnDParent : 019A489F
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 06AC8311
		/// @DnDApplyTo : _new_hit
		/// @DnDParent : 3FEEE8AC
		/// @DnDArgument : "function" "set_enemy_shot"
		with(_new_hit) {
			set_enemy_shot();
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0383F4A5
	/// @DnDParent : 019A489F
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "_new_hit.owner"
	_new_hit.owner = self;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3C04AEA6
	/// @DnDApplyTo : _new_hit
	/// @DnDParent : 019A489F
	/// @DnDArgument : "function" "set_angle"
	with(_new_hit) {
		set_angle();
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2B9603D6
	/// @DnDParent : 019A489F
	instance_destroy();
}