/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 152C2C5D
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6031910D
	/// @DnDComment : // Sets the buttons scale to 100%
	/// @DnDParent : 152C2C5D
	/// @DnDArgument : "expr" "1.0"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 1.0;
}