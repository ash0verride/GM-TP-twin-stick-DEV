/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B7D6E83
/// @DnDArgument : "expr" "FACE_TYPE.SIZE"
/// @DnDArgument : "var" "curr_face_type"
curr_face_type = FACE_TYPE.SIZE;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 06FFE582
/// @DnDArgument : "funcName" "set_sprite"
function set_sprite() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 56F04FA7
	/// @DnDParent : 06FFE582
	/// @DnDArgument : "expr" "curr_face_type"
	var l56F04FA7_0 = curr_face_type;
	switch(l56F04FA7_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 296CB30D
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.TOP_LEFT"
		case FACE_TYPE.TOP_LEFT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 20572E86
			/// @DnDParent : 296CB30D
			/// @DnDArgument : "value" "spr_grass_top_left"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_top_left;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4D5EFF03
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.TOP"
		case FACE_TYPE.TOP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 472BE96B
			/// @DnDParent : 4D5EFF03
			/// @DnDArgument : "value" "spr_grass_top"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_top;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 495FDA64
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.TOP_RIGHT"
		case FACE_TYPE.TOP_RIGHT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6D6F2E99
			/// @DnDParent : 495FDA64
			/// @DnDArgument : "value" "spr_grass_top_right"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_top_right;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 02F904F1
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.RIGHT"
		case FACE_TYPE.RIGHT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 08453338
			/// @DnDParent : 02F904F1
			/// @DnDArgument : "value" "spr_grass_right"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_right;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0891A2F7
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.BOTTOM_RIGHT"
		case FACE_TYPE.BOTTOM_RIGHT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0E91E796
			/// @DnDParent : 0891A2F7
			/// @DnDArgument : "value" "spr_grass_bottom_right"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_bottom_right;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0F869107
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.BOTTOM"
		case FACE_TYPE.BOTTOM:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4010456C
			/// @DnDParent : 0F869107
			/// @DnDArgument : "value" "spr_grass_bottom"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_bottom;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 194D5219
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.BOTTOM_LEFT"
		case FACE_TYPE.BOTTOM_LEFT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 75F1C1DA
			/// @DnDParent : 194D5219
			/// @DnDArgument : "value" "spr_grass_bottom_left"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_bottom_left;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 342145BA
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.LEFT"
		case FACE_TYPE.LEFT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 10EAA90D
			/// @DnDParent : 342145BA
			/// @DnDArgument : "value" "spr_grass_left"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_left;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7D7F6460
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.TOP_GAP"
		case FACE_TYPE.TOP_GAP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4991A3A7
			/// @DnDParent : 7D7F6460
			/// @DnDArgument : "value" "spr_grass_top_gap"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_top_gap;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4E989852
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.RIGHT_GAP"
		case FACE_TYPE.RIGHT_GAP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3E2A7838
			/// @DnDParent : 4E989852
			/// @DnDArgument : "value" "spr_grass_right_gap"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_right_gap;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 52BDA2C3
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.BOTTOM_GAP"
		case FACE_TYPE.BOTTOM_GAP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 5B212A06
			/// @DnDParent : 52BDA2C3
			/// @DnDArgument : "value" "spr_grass_bottom_gap"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_bottom_gap;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 42E1F36D
		/// @DnDParent : 56F04FA7
		/// @DnDArgument : "const" "FACE_TYPE.LEFT_GAP"
		case FACE_TYPE.LEFT_GAP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7AA4172A
			/// @DnDParent : 42E1F36D
			/// @DnDArgument : "value" "spr_grass_left_gap"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_grass_left_gap;
			break;
	}
}