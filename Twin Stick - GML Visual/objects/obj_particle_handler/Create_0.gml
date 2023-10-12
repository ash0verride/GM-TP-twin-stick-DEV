/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B722F5D
/// @DnDInput : 2
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "expr_1" "noone"
/// @DnDArgument : "var" "particle_sys"
/// @DnDArgument : "var_1" "owner"
particle_sys = noone;
owner = noone;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0A3BC39B
/// @DnDArgument : "funcName" "set_smoke"
function set_smoke() 
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 5B78B8E4
	/// @DnDParent : 0A3BC39B
	/// @DnDArgument : "var" "particle_sys"
	/// @DnDArgument : "layer" ""Smoke""
	/// @DnDArgument : "partsys" "ps_shoot_smoke"
	/// @DnDSaveInfo : "partsys" "ps_shoot_smoke"
	particle_sys = part_system_create_layer("Smoke", 0, ps_shoot_smoke);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 782678F0
	/// @DnDInput : 3
	/// @DnDParent : 0A3BC39B
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 49071919
/// @DnDArgument : "funcName" "set_player_shot"
function set_player_shot() 
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 3057EF1A
	/// @DnDParent : 49071919
	/// @DnDArgument : "var" "particle_sys"
	/// @DnDArgument : "layer" ""Explosions""
	/// @DnDArgument : "partsys" "ps_player_shot"
	/// @DnDSaveInfo : "partsys" "ps_player_shot"
	particle_sys = part_system_create_layer("Explosions", 0, ps_player_shot);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0046D098
	/// @DnDInput : 3
	/// @DnDParent : 49071919
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 744F6F37
/// @DnDArgument : "funcName" "set_enemy_shot"
function set_enemy_shot() 
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 544CC38D
	/// @DnDParent : 744F6F37
	/// @DnDArgument : "var" "particle_sys"
	/// @DnDArgument : "layer" ""Explosions""
	/// @DnDArgument : "partsys" "ps_enemy_shot"
	/// @DnDSaveInfo : "partsys" "ps_enemy_shot"
	particle_sys = part_system_create_layer("Explosions", 0, ps_enemy_shot);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5D11FF79
	/// @DnDInput : 3
	/// @DnDParent : 744F6F37
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3573E6D9
/// @DnDArgument : "funcName" "set_character_defeat"
function set_character_defeat() 
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 5F888A0C
	/// @DnDParent : 3573E6D9
	/// @DnDArgument : "var" "particle_sys"
	/// @DnDArgument : "layer" ""Explosions""
	/// @DnDArgument : "partsys" "ps_enemy_shot"
	/// @DnDSaveInfo : "partsys" "ps_enemy_shot"
	particle_sys = part_system_create_layer("Explosions", 0, ps_enemy_shot);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 18A13A71
	/// @DnDInput : 3
	/// @DnDParent : 3573E6D9
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1004A3DE
/// @DnDArgument : "funcName" "set_angle"
function set_angle() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6F9553BA
	/// @DnDInput : 2
	/// @DnDParent : 1004A3DE
	/// @DnDArgument : "function" "part_system_angle"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "owner.direction + 180"
	part_system_angle(particle_sys, owner.direction + 180);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5135DEF8
/// @DnDArgument : "funcName" "destroy_particles"
function destroy_particles() 
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Destroy
	/// @DnDVersion : 1.1
	/// @DnDHash : 047DCD47
	/// @DnDParent : 5135DEF8
	/// @DnDArgument : "system" "particle_sys"
	part_system_destroy(particle_sys);
}