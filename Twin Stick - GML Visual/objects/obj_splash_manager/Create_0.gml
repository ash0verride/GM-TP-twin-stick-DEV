/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 696F9697
/// @DnDArgument : "function" "window_set_fullscreen"
/// @DnDArgument : "arg" "true"
window_set_fullscreen(true);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 44AD6C90
/// @DnDArgument : "xpos" "room_width / 2"
/// @DnDArgument : "ypos" "room_height / 2"
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_splash"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_splash"
layer_sequence_create("Instances", room_width / 2, room_height / 2, seq_splash);

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 08C6E9AB
randomize();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67499787
/// @DnDArgument : "expr" "[]"
/// @DnDArgument : "var" "highscores"
highscores = [];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 6A71316B
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < 10; _i++) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52925AC5
	/// @DnDParent : 6A71316B
	/// @DnDArgument : "var" "highscores[_i]"
	highscores[_i] = 0;
}

/// @DnDAction : YoYo Games.Files.Buffer_Load
/// @DnDVersion : 1
/// @DnDHash : 7C507BE5
/// @DnDArgument : "target" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
high_score_buffer = buffer_load("TWIN_STICK_HS.sav");

/// @DnDAction : YoYo Games.Buffers.If_Buffer_Exists
/// @DnDVersion : 1
/// @DnDHash : 5B1F9C6D
/// @DnDArgument : "buffer" "high_score_buffer"
var l5B1F9C6D_0 = buffer_exists(high_score_buffer);
if(l5B1F9C6D_0)
{
	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 66A89721
	/// @DnDParent : 5B1F9C6D
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 432E5C9C
	/// @DnDParent : 5B1F9C6D
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CA5BF1B
		/// @DnDParent : 432E5C9C
		/// @DnDArgument : "expr" "buffer_read(high_score_buffer, buffer_u64)"
		/// @DnDArgument : "var" "highscores[_i]"
		highscores[_i] = buffer_read(high_score_buffer, buffer_u64);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 081A1213
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63140C72
	/// @DnDParent : 081A1213
	/// @DnDArgument : "expr" "buffer_create(16384, buffer_fixed, 2) "
	/// @DnDArgument : "var" "high_score_buffer"
	high_score_buffer = buffer_create(16384, buffer_fixed, 2) ;

	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 51B096E0
	/// @DnDParent : 081A1213
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 66A20B30
	/// @DnDParent : 081A1213
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 26ACEC64
		/// @DnDInput : 3
		/// @DnDParent : 66A20B30
		/// @DnDArgument : "function" "buffer_write"
		/// @DnDArgument : "arg" "high_score_buffer"
		/// @DnDArgument : "arg_1" "buffer_u64"
		/// @DnDArgument : "arg_2" "highscores[_i]"
		buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
	}

	/// @DnDAction : YoYo Games.Files.Buffer_Save
	/// @DnDVersion : 1
	/// @DnDHash : 5211E247
	/// @DnDParent : 081A1213
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
	buffer_save(high_score_buffer, "TWIN_STICK_HS.sav");
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 061CBE3A
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2D7D1C69
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 2, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_36_outline, true, { outlineEnable: true, outlineDistance: 2, outlineColour: c_black });

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0CC0C61A
/// @DnDArgument : "target" "music"
/// @DnDArgument : "soundid" "snd_music_menu_main"
/// @DnDArgument : "loop" "1"
/// @DnDArgument : "offset" "0"
/// @DnDSaveInfo : "soundid" "snd_music_menu_main"
music = audio_play_sound(snd_music_menu_main, 0, 1, 1.0, 0, 1.0);