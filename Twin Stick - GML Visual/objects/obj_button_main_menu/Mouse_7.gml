/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D806781
/// @DnDComment : // Sets the key variable to pressed
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "is_pressed"
is_pressed = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 343683A2
/// @DnDComment : // Sets the target scale
/// @DnDArgument : "expr" "0.9"
/// @DnDArgument : "var" "target_scale"
target_scale = 0.9;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C1E3AF9
/// @DnDComment : // Speeds up the scale rate
/// @DnDArgument : "expr" "0.9"
/// @DnDArgument : "var" "scale_rate"
scale_rate = 0.9;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 09BE322B
/// @DnDComment : // Plays the button pushed sound effect
/// @DnDArgument : "target" "sound_button"
/// @DnDArgument : "soundid" "snd_menu_button"
/// @DnDSaveInfo : "soundid" "snd_menu_button"
sound_button = audio_play_sound(snd_menu_button, 0, 0, 1.0, undefined, 1.0);