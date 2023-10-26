/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34A7E181
/// @DnDComment : // Checks if the players health is above 0
/// @DnDArgument : "var" "owner.player_health"
/// @DnDArgument : "op" "2"
if(owner.player_health > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 49431E7A
	/// @DnDComment : // Draws self
	/// @DnDParent : 34A7E181
	draw_self();
}