/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 461F97A2
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18F5CEE5
	/// @DnDComment : // Sets the buttons scale to 95%
	/// @DnDParent : 461F97A2
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;
}