/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1E86B6ED
/// @DnDComment : // Draws players shadow sprite
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "body_angle"
/// @DnDArgument : "alpha" "image_alpha"
/// @DnDArgument : "sprite" "spr_player_shadow"
/// @DnDSaveInfo : "sprite" "spr_player_shadow"
draw_sprite_ext(spr_player_shadow, 0, x + 0, y + 0, 1, 1, body_angle, $FFFFFF & $ffffff, image_alpha);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 517A9EBA
/// @DnDComment : // Checks if player is flashed
/// @DnDArgument : "var" "is_flashed"
/// @DnDArgument : "value" "true"
if(is_flashed == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 05B3AAA8
	/// @DnDComment : // Draws gun shadow
	/// @DnDParent : 517A9EBA
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "rot" "gun_angle"
	/// @DnDArgument : "alpha" "image_alpha"
	/// @DnDArgument : "sprite" "spr_player_gun"
	/// @DnDSaveInfo : "sprite" "spr_player_gun"
	draw_sprite_ext(spr_player_gun, 0, x + 0, y + 0, 1, 1, gun_angle, $FFFFFF & $ffffff, image_alpha);
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 471E2D30
/// @DnDComment : // Change image index to if flashed or not
/// @DnDArgument : "value" "is_flashed"
/// @DnDArgument : "instvar" "11"
image_index = is_flashed;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 238BF2D5
/// @DnDComment : // Draw player body sprite
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56D9768A
/// @DnDComment : // Checks if player isnt flashed
/// @DnDArgument : "var" "is_flashed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_flashed == true))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3F18DE01
	/// @DnDComment : // Draws gun shadow now
	/// @DnDParent : 56D9768A
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "rot" "gun_angle"
	/// @DnDArgument : "alpha" "image_alpha"
	/// @DnDArgument : "sprite" "spr_player_gun_shadow"
	/// @DnDSaveInfo : "sprite" "spr_player_gun_shadow"
	draw_sprite_ext(spr_player_gun_shadow, 0, x + 0, y + 0, 1, 1, gun_angle, $FFFFFF & $ffffff, image_alpha);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 06731CCA
/// @DnDComment : // Draws the players gun and index depends on if flashed
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "gun_angle"
/// @DnDArgument : "alpha" "image_alpha"
/// @DnDArgument : "sprite" "spr_player_gun"
/// @DnDArgument : "frame" "is_flashed"
/// @DnDSaveInfo : "sprite" "spr_player_gun"
draw_sprite_ext(spr_player_gun, is_flashed, x + 0, y + 0, 1, 1, gun_angle, $FFFFFF & $ffffff, image_alpha);