/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59A8E0C3
/// @DnDComment : // Variables for the lose banner text
/// @DnDInput : 8
/// @DnDArgument : "expr" ""YOU LOSE""
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
text_1 = "YOU LOSE";
text_2 = "";
player_score = 0;
font_1 = fnt_luckiest_guy_96_outline;
font_2 = fnt_luckiest_guy_36_outline;
colour = c_white;
halign = fa_center;
valign = fa_middle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B457063
/// @DnDComment : // Sets the lose banner text to the players score
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.player_score"
/// @DnDArgument : "expr_1" ""SCORE: " + string(player_score)"
/// @DnDArgument : "var" "player_score"
/// @DnDArgument : "var_1" "text_2"
player_score = obj_player.player_score;
text_2 = "SCORE: " + string(player_score);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 05650C29
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 658C95CF
/// @DnDComment : // Sets font to have outline effect
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 2, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_36_outline, true, { outlineEnable: true, outlineDistance: 2, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B9A0870
/// @DnDComment : // Creates empty array for the highscores
/// @DnDArgument : "expr" "[]"
/// @DnDArgument : "var" "highscores"
highscores = [];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 15FFFA9B
/// @DnDComment : // Loops 10 times
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < 10; _i++) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 630BA8AC
	/// @DnDComment : // Stores the highscores to 0
	/// @DnDParent : 15FFFA9B
	/// @DnDArgument : "var" "highscores[_i]"
	highscores[_i] = 0;
}

/// @DnDAction : YoYo Games.Files.Buffer_Load
/// @DnDVersion : 1
/// @DnDHash : 1A005E36
/// @DnDComment : // Loads the high scores buffer
/// @DnDArgument : "target" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
high_score_buffer = buffer_load("TWIN_STICK_HS.sav");

/// @DnDAction : YoYo Games.Buffers.If_Buffer_Exists
/// @DnDVersion : 1
/// @DnDHash : 22FDF0CB
/// @DnDComment : // Checks if the buffer exists
/// @DnDArgument : "buffer" "high_score_buffer"
var l22FDF0CB_0 = buffer_exists(high_score_buffer);
if(l22FDF0CB_0)
{
	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 7F3B0171
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 22FDF0CB
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 5FA925A3
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 22FDF0CB
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F8C6654
		/// @DnDComment : // Reads the highscores from the buffer and stores them in the array
		/// @DnDParent : 5FA925A3
		/// @DnDArgument : "expr" "buffer_read(high_score_buffer, buffer_u64)"
		/// @DnDArgument : "var" "highscores[_i]"
		highscores[_i] = buffer_read(high_score_buffer, buffer_u64);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 60B37F4B
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5557EBA5
	/// @DnDComment : // Creates the highscore buffer
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "expr" "buffer_create(16384, buffer_fixed, 2) "
	/// @DnDArgument : "var" "high_score_buffer"
	high_score_buffer = buffer_create(16384, buffer_fixed, 2) ;

	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 150C1442
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 190C266F
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 17592F17
		/// @DnDComment : // Writes to the highscore buffer the empty scores
		/// @DnDInput : 3
		/// @DnDParent : 190C266F
		/// @DnDArgument : "function" "buffer_write"
		/// @DnDArgument : "arg" "high_score_buffer"
		/// @DnDArgument : "arg_1" "buffer_u64"
		/// @DnDArgument : "arg_2" "highscores[_i]"
		buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07FB759B
	/// @DnDComment : // Creates varaibles used for sorting the highscore table
	/// @DnDInput : 2
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "var" "_is_swapping"
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var_1" "_stored_score"
	/// @DnDArgument : "value_1" "-1"
	var _is_swapping = false;
	var _stored_score = -1;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 70AA94C7
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i ++"
	for(var _i = 0; _i < 10; _i ++) {
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7101D0CD
		/// @DnDComment : // Checks if the players score is more than the highscore and it hasnt started swapping
		/// @DnDParent : 70AA94C7
		/// @DnDArgument : "expr" "highscores[_i] < player_score && !_is_swapping"
		if(highscores[_i] < player_score && !_is_swapping)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32CDA286
			/// @DnDComment : // Changes the swapping state$(13_10)// Stores the players score
			/// @DnDInput : 2
			/// @DnDParent : 7101D0CD
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "player_score"
			/// @DnDArgument : "var" "_is_swapping"
			/// @DnDArgument : "var_1" "_stored_score"
			_is_swapping = true;
			_stored_score = player_score;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EBA96B2
		/// @DnDComment : // Checks if the table has started swapping
		/// @DnDParent : 70AA94C7
		/// @DnDArgument : "var" "_is_swapping"
		/// @DnDArgument : "value" "true"
		if(_is_swapping == true)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24CF5757
			/// @DnDComment : // Stores the current highscore
			/// @DnDParent : 2EBA96B2
			/// @DnDArgument : "var" "_next_swap"
			/// @DnDArgument : "value" "highscores[_i]"
			var _next_swap = highscores[_i];
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 29873F62
			/// @DnDComment : // Swaps the stored score into the highscore$(13_10)// Stores the last highscore
			/// @DnDInput : 2
			/// @DnDParent : 2EBA96B2
			/// @DnDArgument : "expr" "_stored_score"
			/// @DnDArgument : "expr_1" "_next_swap"
			/// @DnDArgument : "var" "highscores[_i]	"
			/// @DnDArgument : "var_1" "_stored_score"
			highscores[_i]	 = _stored_score;
			_stored_score = _next_swap;
		}
	}

	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 7C0B4DFA
	/// @DnDComment : // Goes to the start of the buffer
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7585F463
	/// @DnDComment : // Loops 10 times
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 314BC08D
		/// @DnDComment : // Writes the highscores to the buffer
		/// @DnDInput : 3
		/// @DnDParent : 7585F463
		/// @DnDArgument : "function" "buffer_write"
		/// @DnDArgument : "arg" "high_score_buffer"
		/// @DnDArgument : "arg_1" "buffer_u64"
		/// @DnDArgument : "arg_2" "highscores[_i]"
		buffer_write(high_score_buffer, buffer_u64, highscores[_i]);
	}

	/// @DnDAction : YoYo Games.Files.Buffer_Save
	/// @DnDVersion : 1
	/// @DnDHash : 002E4360
	/// @DnDComment : // Saves the highscore buffer
	/// @DnDParent : 60B37F4B
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
	buffer_save(high_score_buffer, "TWIN_STICK_HS.sav");
}