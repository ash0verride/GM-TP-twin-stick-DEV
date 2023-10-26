/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 696F9697
/// @DnDComment : // Sets window to full screen
/// @DnDArgument : "function" "window_set_fullscreen"
/// @DnDArgument : "arg" "true"
window_set_fullscreen(true);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 44AD6C90
/// @DnDComment : // Creates the splash screen squence
/// @DnDArgument : "xpos" "room_width / 2"
/// @DnDArgument : "ypos" "room_height / 2"
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_splash"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_splash"
layer_sequence_create("Instances", room_width / 2, room_height / 2, seq_splash);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DA42F2B
/// @DnDComment : // Sets variables used for the highscore table visible state
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "is_highscore_table"
/// @DnDArgument : "var_1" "highscores_alpha"
/// @DnDArgument : "var_2" "highscores_alpha_target"
is_highscore_table = false;
highscores_alpha = 0;
highscores_alpha_target = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67499787
/// @DnDComment : // Array used for storing the high scores within
/// @DnDArgument : "expr" "[]"
/// @DnDArgument : "var" "highscores"
highscores = [];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 6A71316B
/// @DnDComment : // Loops to set array to 0 values
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
/// @DnDComment : // Loads buffer for highscores
/// @DnDArgument : "target" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
high_score_buffer = buffer_load("TWIN_STICK_HS.sav");

/// @DnDAction : YoYo Games.Buffers.If_Buffer_Exists
/// @DnDVersion : 1
/// @DnDHash : 5B1F9C6D
/// @DnDComment : // Checks if buffer exists
/// @DnDArgument : "buffer" "high_score_buffer"
var l5B1F9C6D_0 = buffer_exists(high_score_buffer);
if(l5B1F9C6D_0)
{
	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 66A89721
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 5B1F9C6D
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 432E5C9C
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 5B1F9C6D
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CA5BF1B
		/// @DnDComment : // Sets the highscores to values read from the buffer
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
	/// @DnDComment : // Creates highscore buffer
	/// @DnDParent : 081A1213
	/// @DnDArgument : "expr" "buffer_create(16384, buffer_fixed, 2) "
	/// @DnDArgument : "var" "high_score_buffer"
	high_score_buffer = buffer_create(16384, buffer_fixed, 2) ;

	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 51B096E0
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 081A1213
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 66A20B30
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 081A1213
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 26ACEC64
		/// @DnDComment : // Writes highscore values to the buffer
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
	/// @DnDComment : // Saves the new empty highscore buffer
	/// @DnDParent : 081A1213
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
	buffer_save(high_score_buffer, "TWIN_STICK_HS.sav");
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B1CA656
/// @DnDComment : // Variables used for highscore text
/// @DnDInput : 6
/// @DnDArgument : "expr" ""HIGH SCORES""
/// @DnDArgument : "expr_1" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "expr_2" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "expr_3" "c_white"
/// @DnDArgument : "expr_4" "fa_center"
/// @DnDArgument : "expr_5" "fa_middle"
/// @DnDArgument : "var" "text"
/// @DnDArgument : "var_1" "font_1	"
/// @DnDArgument : "var_2" "font_2"
/// @DnDArgument : "var_3" "colour"
/// @DnDArgument : "var_4" "halign"
/// @DnDArgument : "var_5" "valign"
text = "HIGH SCORES";
font_1	 = fnt_luckiest_guy_96_outline;
font_2 = fnt_luckiest_guy_36_outline;
colour = c_white;
halign = fa_center;
valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 061CBE3A
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2D7D1C69
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 2, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_36_outline, true, { outlineEnable: true, outlineDistance: 2, outlineColour: c_black });

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 20A0E0A9
/// @DnDComment : // Stops all previous running audio
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0CC0C61A
/// @DnDComment : // Plays menu audio
/// @DnDArgument : "target" "music"
/// @DnDArgument : "soundid" "snd_music_menu_main"
/// @DnDArgument : "loop" "1"
/// @DnDArgument : "offset" "0"
/// @DnDSaveInfo : "soundid" "snd_music_menu_main"
music = audio_play_sound(snd_music_menu_main, 0, 1, 1.0, 0, 1.0);