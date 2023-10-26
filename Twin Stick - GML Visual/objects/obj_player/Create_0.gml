/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0BEB9921
/// @DnDInput : 4
/// @DnDArgument : "var" "_new_dust_1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_create_depth"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "depth - 1"
/// @DnDArgument : "arg_3" "obj_particle_handler"
var _new_dust_1 = instance_create_depth(x, y, depth - 1, obj_particle_handler);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C7E2A3C
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_new_dust_1.owner"
_new_dust_1.owner = self;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 591BDBC7
/// @DnDApplyTo : _new_dust_1
/// @DnDArgument : "function" "set_dust_smoke"
/// @DnDArgument : "arg" "1"
with(_new_dust_1) {
	set_dust_smoke(1);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 11BA71EE
/// @DnDInput : 4
/// @DnDArgument : "var" "_new_dust_2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_create_depth"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "depth - 1"
/// @DnDArgument : "arg_3" "obj_particle_handler"
var _new_dust_2 = instance_create_depth(x, y, depth - 1, obj_particle_handler);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58C69200
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_new_dust_2.owner"
_new_dust_2.owner = self;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5FB5E9B2
/// @DnDApplyTo : _new_dust_2
/// @DnDArgument : "function" "set_dust_smoke"
/// @DnDArgument : "arg" "1"
with(_new_dust_2) {
	set_dust_smoke(1);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4EB00DC7
/// @DnDInput : 4
/// @DnDArgument : "var" "_new_dust_3"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "instance_create_depth"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "depth - 1"
/// @DnDArgument : "arg_3" "obj_particle_handler"
var _new_dust_3 = instance_create_depth(x, y, depth - 1, obj_particle_handler);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 548675AC
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_new_dust_3.owner"
_new_dust_3.owner = self;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6A0104DA
/// @DnDApplyTo : _new_dust_3
/// @DnDArgument : "function" "set_dust_smoke"
/// @DnDArgument : "arg" "3"
with(_new_dust_3) {
	set_dust_smoke(3);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4F6A1EF3
/// @DnDArgument : "funcName" "create_projectile"
function create_projectile() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1730EB9F
	/// @DnDInput : 3
	/// @DnDParent : 4F6A1EF3
	/// @DnDArgument : "var" "_projectile_origin_x"
	/// @DnDArgument : "value" "110"
	/// @DnDArgument : "var_1" "_projectile_origin_y"
	/// @DnDArgument : "value_1" "0"
	/// @DnDArgument : "var_2" "_theta"
	/// @DnDArgument : "value_2" "degtorad(gun_angle)"
	var _projectile_origin_x = 110;
	var _projectile_origin_y = 0;
	var _theta = degtorad(gun_angle);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79229A1D
	/// @DnDInput : 2
	/// @DnDParent : 4F6A1EF3
	/// @DnDArgument : "var" "_projectile_adjust_x"
	/// @DnDArgument : "value" "_projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta)"
	/// @DnDArgument : "var_1" "_projectile_adjust_y"
	/// @DnDArgument : "value_1" "_projectile_origin_y * cos(_theta) + _projectile_origin_x * sin(_theta)"
	var _projectile_adjust_x = _projectile_origin_x * cos(_theta) - _projectile_origin_y * sin(_theta);
	var _projectile_adjust_y = _projectile_origin_y * cos(_theta) + _projectile_origin_x * sin(_theta);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13AC5722
	/// @DnDParent : 4F6A1EF3
	/// @DnDArgument : "xpos" "_projectile_adjust_x"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-_projectile_adjust_y"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_new_projectile"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_projectile"
	/// @DnDArgument : "layer" ""Projectiles""
	/// @DnDSaveInfo : "objectid" "obj_projectile"
	var _new_projectile = instance_create_layer(x + _projectile_adjust_x, y + -_projectile_adjust_y, "Projectiles", obj_projectile);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 327101B2
	/// @DnDApplyTo : _new_projectile
	/// @DnDParent : 4F6A1EF3
	/// @DnDArgument : "expr" "other"
	/// @DnDArgument : "var" "owner"
	with(_new_projectile) {
	owner = other;
	
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 61E0E341
	/// @DnDApplyTo : _new_projectile
	/// @DnDParent : 4F6A1EF3
	/// @DnDArgument : "function" "correct_player"
	with(_new_projectile) {
		correct_player();
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 14BEC946
/// @DnDArgument : "funcName" "trigger_pressed"
function trigger_pressed() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 546C59A0
	/// @DnDParent : 14BEC946
	/// @DnDArgument : "expr" "!player_is_reloading && player_curr_ammo > 0"
	if(!player_is_reloading && player_curr_ammo > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56B8371C
		/// @DnDParent : 546C59A0
		/// @DnDArgument : "var" "player_fire_cooldown"
		/// @DnDArgument : "op" "3"
		if(player_fire_cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02F70B20
			/// @DnDInput : 2
			/// @DnDParent : 56B8371C
			/// @DnDArgument : "expr" "player_fire_rate"
			/// @DnDArgument : "expr_1" "-1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "player_fire_cooldown"
			/// @DnDArgument : "var_1" "player_curr_ammo"
			player_fire_cooldown = player_fire_rate;
			player_curr_ammo += -1;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 42475940
			/// @DnDParent : 56B8371C
			/// @DnDArgument : "function" "create_projectile"
			create_projectile();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 31306BA0
	/// @DnDParent : 14BEC946
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 431AEAF5
		/// @DnDParent : 31306BA0
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "player_is_reloading"
		player_is_reloading = false;
	}
}