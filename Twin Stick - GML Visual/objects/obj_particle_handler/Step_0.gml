/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25743A1E
/// @DnDArgument : "var" "owner"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(owner == noone))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 44B42F59
	/// @DnDInput : 2
	/// @DnDParent : 25743A1E
	/// @DnDArgument : "value" "owner.x"
	/// @DnDArgument : "value_1" "owner.y"
	/// @DnDArgument : "instvar_1" "1"
	x = owner.x;
	y = owner.y;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5A999823
	/// @DnDInput : 3
	/// @DnDParent : 25743A1E
	/// @DnDArgument : "function" "part_system_position"
	/// @DnDArgument : "arg" "particle_sys"
	/// @DnDArgument : "arg_1" "x"
	/// @DnDArgument : "arg_2" "y"
	part_system_position(particle_sys, x, y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0193E1A1
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(obj_game_manager.curr_game_state == GAME_STATE.PAUSED)
{
	/// @DnDAction : YoYo Games.Particles.Pause_Particles
	/// @DnDVersion : 1.1
	/// @DnDHash : 5AC9FEC7
	/// @DnDParent : 0193E1A1
	/// @DnDArgument : "system" "particle_sys"
	part_system_automatic_update(particle_sys, false);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5047F27E
else
{
	/// @DnDAction : YoYo Games.Particles.Pause_Particles
	/// @DnDVersion : 1.1
	/// @DnDHash : 77C0153E
	/// @DnDParent : 5047F27E
	/// @DnDArgument : "system" "particle_sys"
	/// @DnDArgument : "state" "0"
	part_system_automatic_update(particle_sys, true);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A035C83
/// @DnDArgument : "var" "part_particles_count(particle_sys)"
if(part_particles_count(particle_sys) == 0)
{
	/// @DnDAction : YoYo Games.Particles.Part_Syst_Destroy
	/// @DnDVersion : 1.1
	/// @DnDHash : 6FB48DB5
	/// @DnDParent : 4A035C83
	/// @DnDArgument : "system" "particle_sys"
	part_system_destroy(particle_sys);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 379C5975
	/// @DnDParent : 4A035C83
	instance_destroy();
}