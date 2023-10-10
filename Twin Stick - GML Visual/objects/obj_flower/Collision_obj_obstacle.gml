/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66F49A0D
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "GAME_STATE.PAUSED"
if(!(obj_game_manager.curr_game_state == GAME_STATE.PAUSED))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 18D234B1
	/// @DnDParent : 66F49A0D
	/// @DnDArgument : "value" "hspeed"
	/// @DnDArgument : "value_relative" "1"
	x += hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3B4B9807
	/// @DnDParent : 66F49A0D
	/// @DnDArgument : "value" "vspeed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += vspeed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BDF288D
	/// @DnDParent : 66F49A0D
	/// @DnDArgument : "var" "abs(hspeed)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "abs(vspeed)"
	if(abs(hspeed) > abs(vspeed))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 47519B2D
		/// @DnDParent : 1BDF288D
		/// @DnDArgument : "value" "hspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "4"
		hspeed = hspeed * -speed_dropoff;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3ADDD14A
	/// @DnDParent : 66F49A0D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 04815FA0
		/// @DnDParent : 3ADDD14A
		/// @DnDArgument : "value" "vspeed * -speed_dropoff"
		/// @DnDArgument : "instvar" "5"
		vspeed = vspeed * -speed_dropoff;
	}
}