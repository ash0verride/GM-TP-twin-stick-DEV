/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 57345737
/// @DnDArgument : "expr" "variable_global_exists("audio_volume")"
/// @DnDArgument : "not" "1"
if(!(variable_global_exists("audio_volume")))
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 25AE15B1
	/// @DnDParent : 57345737
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "audio_volume"
	global.audio_volume = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59E8E1D2
/// @DnDArgument : "var" "global.audio_volume"
/// @DnDArgument : "op" "2"
if(global.audio_volume > 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 25B98431
	/// @DnDParent : 59E8E1D2
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "audio_volume"
	global.audio_volume = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 35E0A222
	/// @DnDParent : 59E8E1D2
	/// @DnDArgument : "instvar" "11"
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F94B847
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2BF6EE0C
	/// @DnDParent : 2F94B847
	/// @DnDArgument : "var" "audio_volume"
	global.audio_volume = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5C810A08
	/// @DnDParent : 2F94B847
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "instvar" "11"
	image_index = 1;
}

/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
/// @DnDVersion : 1
/// @DnDHash : 0E66973C
/// @DnDArgument : "volume" "global.audio_volume"
audio_set_master_gain(0, global.audio_volume);