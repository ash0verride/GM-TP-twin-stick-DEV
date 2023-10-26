/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B722F5D
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_1" "noone"
/// @DnDArgument : "var" "particle_sys"
/// @DnDArgument : "var_1" "owner"
particle_sys = -1;
owner = noone;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F97A3C8
/// @DnDArgument : "funcName" "set_offset"
/// @DnDArgument : "arg" "_is_offset, _x_offset, _y_offset"
function set_offset(_is_offset, _x_offset, _y_offset) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09CF4F4B
	/// @DnDInput : 3
	/// @DnDParent : 6F97A3C8
	/// @DnDArgument : "expr" "_is_offset"
	/// @DnDArgument : "expr_1" "_x_offset"
	/// @DnDArgument : "expr_2" "_y_offset"
	/// @DnDArgument : "var" "is_offset"
	/// @DnDArgument : "var_1" "x_offset"
	/// @DnDArgument : "var_2" "y_offset"
	is_offset = _is_offset;
	x_offset = _x_offset;
	y_offset = _y_offset;
}

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
/// @DnDHash : 720A311D
/// @DnDArgument : "funcName" "set_dust_smoke"
/// @DnDArgument : "arg" "_dust_type"
function set_dust_smoke(_dust_type) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35762B3F
	/// @DnDParent : 720A311D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_dust"
	is_dust = true;

	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 178C68F1
	/// @DnDParent : 720A311D
	/// @DnDArgument : "var" "particle_sys"
	/// @DnDArgument : "layer" ""Smoke""
	/// @DnDArgument : "partsys" "ps_dust_smoke"
	/// @DnDSaveInfo : "partsys" "ps_dust_smoke"
	particle_sys = part_system_create_layer("Smoke", 0, ps_dust_smoke);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5B1FE508
	/// @DnDInput : 3
	/// @DnDParent : 720A311D
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 3E1AC8B7
	/// @DnDParent : 720A311D
	/// @DnDArgument : "expr" "_dust_type"
	var l3E1AC8B7_0 = _dust_type;
	switch(l3E1AC8B7_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6F7A643C
		/// @DnDParent : 3E1AC8B7
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 7EDF7F7B
			/// @DnDInput : 3
			/// @DnDParent : 6F7A643C
			/// @DnDArgument : "function" "set_offset"
			/// @DnDArgument : "arg" "true"
			/// @DnDArgument : "arg_1" "-60"
			/// @DnDArgument : "arg_2" "-30"
			set_offset(true, -60, -30);
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 6FB7649F
			/// @DnDParent : 6F7A643C
			break;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 29D4752A
		/// @DnDParent : 3E1AC8B7
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 2B110F19
			/// @DnDInput : 3
			/// @DnDParent : 29D4752A
			/// @DnDArgument : "function" "set_offset"
			/// @DnDArgument : "arg" "true"
			/// @DnDArgument : "arg_1" "-80"
			/// @DnDArgument : "arg_2" "0"
			set_offset(true, -80, 0);
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 2247986B
			/// @DnDParent : 29D4752A
			break;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2D3A5D03
		/// @DnDParent : 3E1AC8B7
		/// @DnDArgument : "const" "3"
		case 3:
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 43257169
			/// @DnDInput : 3
			/// @DnDParent : 2D3A5D03
			/// @DnDArgument : "function" "set_offset"
			/// @DnDArgument : "arg" "true"
			/// @DnDArgument : "arg_1" "-60"
			/// @DnDArgument : "arg_2" "30"
			set_offset(true, -60, 30);
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 33B556AB
			/// @DnDParent : 2D3A5D03
			break;
			break;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2FFC377F
/// @DnDArgument : "funcName" "set_empty_shot"
function set_empty_shot() 
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
	/// @DnDVersion : 1.2
	/// @DnDHash : 158CA67A
	/// @DnDParent : 2FFC377F
	/// @DnDArgument : "var" "particle_sys"
	/// @DnDArgument : "layer" ""Fumes""
	/// @DnDArgument : "partsys" "ps_shoot_empty"
	/// @DnDSaveInfo : "partsys" "ps_shoot_empty"
	particle_sys = part_system_create_layer("Fumes", 0, ps_shoot_empty);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3EA5E3EF
	/// @DnDInput : 3
	/// @DnDParent : 2FFC377F
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