/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FE6DA37
/// @DnDComment : // Sets the key variable to pressed$(13_10)// Sets the target scale$(13_10)// Speeds up the scale rate
/// @DnDInput : 3
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "0.9"
/// @DnDArgument : "expr_2" "0.9"
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "var_1" "target_scale"
/// @DnDArgument : "var_2" "scale_rate"
is_pressed = true;
target_scale = 0.9;
scale_rate = 0.9;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6BD9772F
/// @DnDComment : // Plays the button pushed sound effect
/// @DnDArgument : "target" "sound_button"
/// @DnDArgument : "soundid" "snd_menu_button"
/// @DnDSaveInfo : "soundid" "snd_menu_button"
sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);