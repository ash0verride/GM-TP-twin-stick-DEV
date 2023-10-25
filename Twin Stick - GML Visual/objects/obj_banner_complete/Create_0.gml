/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77E53E55
/// @DnDArgument : "expr" "obj_player.player_score"
/// @DnDArgument : "var" "player_score"
player_score = obj_player.player_score;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BEE72AA
/// @DnDArgument : "expr" ""WELL DONE YOU HAVE SURVIVED\nSCORE: " + string(player_score)"
/// @DnDArgument : "var" "text_2"
text_2 = "WELL DONE YOU HAVE SURVIVED\nSCORE: " + string(player_score);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4F6B646D
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_96_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 4, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_96_outline, true, { outlineEnable: true, outlineDistance: 4, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 08E71A3A
/// @DnDInput : 3
/// @DnDArgument : "function" "font_enable_effects"
/// @DnDArgument : "arg" "fnt_luckiest_guy_36_outline"
/// @DnDArgument : "arg_1" "true"
/// @DnDArgument : "arg_2" "{ outlineEnable: true, outlineDistance: 2, outlineColour: c_black }"
font_enable_effects(fnt_luckiest_guy_36_outline, true, { outlineEnable: true, outlineDistance: 2, outlineColour: c_black });

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26B87119
/// @DnDArgument : "expr" "[]"
/// @DnDArgument : "var" "highscores"
highscores = [];

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3F609283
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < 10; _i++) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A580FBF
	/// @DnDParent : 3F609283
	/// @DnDArgument : "var" "highscores[_i]"
	highscores[_i] = 0;
}

/// @DnDAction : YoYo Games.Files.Buffer_Load
/// @DnDVersion : 1
/// @DnDHash : 47BC5B68
/// @DnDArgument : "target" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
high_score_buffer = buffer_load("TWIN_STICK_HS.sav");

/// @DnDAction : YoYo Games.Buffers.If_Buffer_Exists
/// @DnDVersion : 1
/// @DnDHash : 5EDDECA2
/// @DnDArgument : "buffer" "high_score_buffer"
var l5EDDECA2_0 = buffer_exists(high_score_buffer);
if(l5EDDECA2_0)
{
	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 07B784BD
	/// @DnDParent : 5EDDECA2
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 21D8DC00
	/// @DnDParent : 5EDDECA2
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FA07D69
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
	/// @DnDParent : 62D2DAFD
	/// @DnDArgument : "expr" "buffer_create(16384, buffer_fixed, 2) "
	/// @DnDArgument : "var" "high_score_buffer"
	high_score_buffer = buffer_create(16384, buffer_fixed, 2) ;

	/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
	/// @DnDVersion : 1.1
	/// @DnDHash : 315853A4
	/// @DnDParent : 62D2DAFD
	/// @DnDArgument : "buffer" "high_score_buffer"
	/// @DnDArgument : "seek" "0"
	buffer_seek(high_score_buffer, buffer_seek_start, 0);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 310AC4F1
	/// @DnDParent : 62D2DAFD
	/// @DnDArgument : "init" "_i = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_i < 10"
	/// @DnDArgument : "expr" "_i++"
	for(var _i = 0; _i < 10; _i++) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 49F5B939
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
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i += 1"
for(var _i = 0; _i < 10; _i += 1) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AC7280E
	/// @DnDParent : 1DABFB27
	/// @DnDArgument : "var" "highscores[_i]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "player_score"
	if(highscores[_i] < player_score)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 053747A6
		/// @DnDParent : 0AC7280E
		/// @DnDArgument : "var" "_is_swapping"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "true"
		if(!(_is_swapping == true))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E51F674
			/// @DnDInput : 2
			/// @DnDParent : 053747A6
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "player_score"
			/// @DnDArgument : "var" "_is_swapping"
			/// @DnDArgument : "var_1" "_stored_score"
			_is_swapping = true;
			_stored_score = player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 498313A8
	/// @DnDParent : 1DABFB27
	/// @DnDArgument : "var" "_is_swapping"
	/// @DnDArgument : "value" "true"
	if(_is_swapping == true)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 379C083D
		/// @DnDParent : 498313A8
		/// @DnDArgument : "var" "_next_swap"
		/// @DnDArgument : "value" "highscores[_i]"
		var _next_swap = highscores[_i];
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F263704
		/// @DnDParent : 498313A8
		/// @DnDArgument : "expr" "_stored_score"
		/// @DnDArgument : "var" "highscores[_i]"
		highscores[_i] = _stored_score;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EF84652
		/// @DnDParent : 498313A8
		/// @DnDArgument : "expr" "_next_swap"
		/// @DnDArgument : "var" "_stored_score"
		_stored_score = _next_swap;
	}
}

/// @DnDAction : YoYo Games.Buffers.Buffer_Seek
/// @DnDVersion : 1.1
/// @DnDHash : 5E477F2E
/// @DnDArgument : "buffer" "high_score_buffer"
/// @DnDArgument : "seek" "0"
buffer_seek(high_score_buffer, buffer_seek_start, 0);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 060E6778
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < 10"
/// @DnDArgument : "expr" "_i++"
for(var _i = 0; _i < 10; _i++) {
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1CE7BD0A
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
/// @DnDArgument : "buffer" "high_score_buffer"
/// @DnDArgument : "filename" ""TWIN_STICK_HS.sav""
buffer_save(high_score_buffer, "TWIN_STICK_HS.sav");