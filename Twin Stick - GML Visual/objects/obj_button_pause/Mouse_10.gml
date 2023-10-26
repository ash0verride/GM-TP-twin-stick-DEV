/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21B18ABA
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35EE8297
	/// @DnDComment : // Sets the buttons scale to 95%
	/// @DnDParent : 21B18ABA
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;
}