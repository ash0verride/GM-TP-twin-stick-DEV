/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66C835C6
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33FC0797
	/// @DnDComment : // Sets the buttons scale to 100%
	/// @DnDParent : 66C835C6
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 1;
}