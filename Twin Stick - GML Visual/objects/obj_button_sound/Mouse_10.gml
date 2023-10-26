/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16073737
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37EBFEFB
	/// @DnDComment : // Sets the buttons scale to 95%
	/// @DnDParent : 16073737
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;
}