/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 773F0AED
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3A2551DF
	/// @DnDParent : 773F0AED
	/// @DnDArgument : "var" "audio_volume"
	global.audio_volume = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3DDC9F6D
	/// @DnDParent : 773F0AED
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "instvar" "11"
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4A1A471F
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5C4FE190
	/// @DnDParent : 4A1A471F
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "audio_volume"
	global.audio_volume = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3AFAFCD8
	/// @DnDParent : 4A1A471F
	/// @DnDArgument : "instvar" "11"
	image_index = 0;
}

/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
/// @DnDVersion : 1
/// @DnDHash : 2DD45DBB
/// @DnDArgument : "volume" "global.audio_volume"
audio_set_master_gain(0, global.audio_volume);