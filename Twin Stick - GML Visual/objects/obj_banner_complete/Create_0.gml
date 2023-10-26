/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71D02CFB
/// @DnDComment : // Variables for the complete banner text
/// @DnDInput : 8
/// @DnDArgument : "expr" ""TEMPLATE COMPLETE""
/// @DnDArgument : "expr_1" """"
/// @DnDArgument : "expr_3" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "expr_4" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "expr_5" "c_white"
/// @DnDArgument : "expr_6" "fa_center"
/// @DnDArgument : "expr_7" "fa_middle"
/// @DnDArgument : "var" "text_1"
/// @DnDArgument : "var_1" "text_2"
/// @DnDArgument : "var_2" "player_score"
/// @DnDArgument : "var_3" "font_1"
/// @DnDArgument : "var_4" "font_2"
/// @DnDArgument : "var_5" "colour"
/// @DnDArgument : "var_6" "halign"
/// @DnDArgument : "var_7" "valign"
text_1 = "TEMPLATE COMPLETE";
text_2 = "";
player_score = 0;
font_1 = fnt_luckiest_guy_96_outline;
font_2 = fnt_luckiest_guy_36_outline;
colour = c_white;
halign = fa_center;
valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BEE72AA
/// @DnDComment : // Sets the complete banner text to the players score
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.player_score"
/// @DnDArgument : "expr_1" ""WELL DONE YOU HAVE SURVIVED\nSCORE: " + string(player_score)"
/// @DnDArgument : "var" "player_score"
/// @DnDArgument : "var_1" "text_2"
player_score = obj_player.player_score;
text_2 = "WELL DONE YOU HAVE SURVIVED\nSCORE: " + string(player_score);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4F6B646D
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 08E71A3A
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 2, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_36_outline, true, { outlineEnable: true, outlineDistance: 2, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26B87119
/// @DnDComment : // Creates empty array for the highscores
/// @DnDArgument : "expr" "[]"
/// @DnDArgument : "var" "highscores"
highscores = [];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3F609283
/// @DnDComment : // Loops 10 times
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < 10; _i++) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A580FBF
	/// @DnDComment : // Stores the highscores to 0
	/// @DnDParent : 3F609283
	/// @DnDArgument : "var" "highscores[_i]"
	highscores[_i] = 0;
}

/// @DnDAction : YoYo Games.Files.Buffer_Load
/// @DnDVersion : 1
/// @DnDHash : 47BC5B68
/// @DnDComment : // Loads the high scores buffer
/// @DnDArgument : "target" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
high_score_buffer = buffer_load("TWIN_STICK_HS.sav");

/// @DnDAction : YoYo Games.Buffers.If_Buffer_Exists
/// @DnDVersion : 1
/// @DnDHash : 5EDDECA2
/// @DnDComment : // Checks if the buffer exists
/// @DnDArgument : "buffer" "high_score_buffer"
var l5EDDECA2_0 = buffer_exists(high_score_buffer);
if(l5EDDECA2_0)
{
	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 07B784BD
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 5EDDECA2
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 21D8DC00
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 5EDDECA2
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FA07D69
		/// @DnDComment : // Reads the highscores from the buffer and stores them in the array
		/// @DnDParent : 21D8DC00
		/// @DnDArgument : "expr" "buffer_read(high_score_buffer, buffer_u64)"
		/// @DnDArgument : "var" "highscores[_i]"
		highscores[_i] = buffer_read(high_score_buffer, buffer_u64);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 62D2DAFD
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CD2B6A4
	/// @DnDComment : // Creates the highscore buffer
	/// @DnDParent : 62D2DAFD
	/// @DnDArgument : "expr" "buffer_create(16384, buffer_fixed, 2) "
	/// @DnDArgument : "var" "high_score_buffer"
	high_score_buffer = buffer_create(16384, buffer_fixed, 2) ;

	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 315853A4
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 62D2DAFD
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 310AC4F1
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 62D2DAFD
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 49F5B939
		/// @DnDComment : // Writes to the highscore buffer the empty scores
		/// @DnDInput : 3
		/// @DnDParent : 310AC4F1
		/// @DnDArgument : "function" "buffer_write"
		/// @DnDArgument : "arg" "high_score_buffer"
		/// @DnDArgument : "arg_1" "buffer_u64"
		/// @DnDArgument : "arg_2" "highscores[_i]"
		buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CF55C2A
/// @DnDComment : // Creates varaibles used for sorting the highscore table
/// @DnDInput : 2
/// @DnDArgument : "var" "_is_swapping"
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var_1" "_stored_score"
/// @DnDArgument : "value_1" "-1"
var _is_swapping = false;
var _stored_score = -1;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 1DABFB27
/// @DnDComment : // Loops 10 times
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i += 1"
for(var _i = 0; _i < 10; _i += 1) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 33C5F4AB
	/// @DnDComment : // Checks if the players score is more than the highscore and it hasnt started swapping
	/// @DnDParent : 1DABFB27
	/// @DnDArgument : "expr" "highscores[_i] < player_score && !_is_swapping"
	if(highscores[_i] < player_score && !_is_swapping)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E51F674
		/// @DnDComment : // Changes the swapping state$(13_10)// Stores the players score
		/// @DnDInput : 2
		/// @DnDParent : 33C5F4AB
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "player_score"
		/// @DnDArgument : "var" "_is_swapping"
		/// @DnDArgument : "var_1" "_stored_score"
		_is_swapping = true;
		_stored_score = player_score;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 498313A8
	/// @DnDComment : // Checks if the table has started swapping
	/// @DnDParent : 1DABFB27
	/// @DnDArgument : "var" "_is_swapping"
	/// @DnDArgument : "value" "true"
	if(_is_swapping == true)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 379C083D
		/// @DnDComment : // Stores the current highscore
		/// @DnDParent : 498313A8
		/// @DnDArgument : "var" "_next_swap"
		/// @DnDArgument : "value" "highscores[_i]"
		var _next_swap = highscores[_i];
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F263704
		/// @DnDComment : // Swaps the stored score into the highscore
		/// @DnDParent : 498313A8
		/// @DnDArgument : "expr" "_stored_score"
		/// @DnDArgument : "var" "highscores[_i]"
		highscores[_i] = _stored_score;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EF84652
		/// @DnDComment : // Stores the last highscore
		/// @DnDParent : 498313A8
		/// @DnDArgument : "expr" "_next_swap"
		/// @DnDArgument : "var" "_stored_score"
		_stored_score = _next_swap;
	}
}

/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
/// @DnDVersion : 1.1
/// @DnDHash : 5E477F2E
/// @DnDComment : // Goes to the start of the buffer
/// @DnDArgument : "buffer" "high_score_buffer"
/// @DnDArgument : "seek" "0"
buffer_seek(high_score_buffer, buffer_seek_start, 0);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 060E6778
/// @DnDComment : // Loops 10 times
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < 10; _i++) {
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1CE7BD0A
	/// @DnDComment : // Writes the highscores to the buffer
	/// @DnDInput : 3
	/// @DnDParent : 060E6778
	/// @DnDArgument : "function" "buffer_write"
	/// @DnDArgument : "arg" "high_score_buffer"
	/// @DnDArgument : "arg_1" "buffer_u64"
	/// @DnDArgument : "arg_2" "highscores[_i]"
	buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
}

/// @DnDAction : YoYo Games.Files.Buffer_Save
/// @DnDVersion : 1
/// @DnDHash : 0A183D60
/// @DnDComment : // Saves the highscore buffer
/// @DnDArgument : "buffer" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
buffer_save(high_score_buffer, "TWIN_STICK_HS.sav");