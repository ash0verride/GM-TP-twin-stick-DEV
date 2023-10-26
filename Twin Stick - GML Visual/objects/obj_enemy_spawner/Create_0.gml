/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 64C2D88A
/// @DnDComment : // Function called when a new enemy is due to be spawned
/// @DnDArgument : "funcName" "spawn_enemy"
function spawn_enemy() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5DE6D609
	/// @DnDComment : // Creates new enemy object instance
	/// @DnDParent : 64C2D88A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_new_enemy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_enemy"
	/// @DnDArgument : "layer" ""Enemies""
	/// @DnDSaveInfo : "objectid" "obj_enemy"
	var _new_enemy = instance_create_layer(x + 0, y + 0, "Enemies", obj_enemy);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E60FB08
	/// @DnDComment : // Sets new enemy's owner to the spawner it is created from
	/// @DnDParent : 64C2D88A
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "_new_enemy.owner"
	_new_enemy.owner = self;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 228D3BE9
	/// @DnDComment : // Case statment for the face directions of the spawner
	/// @DnDParent : 64C2D88A
	/// @DnDArgument : "expr" "curr_face_direction"
	var l228D3BE9_0 = curr_face_direction;
	switch(l228D3BE9_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7EB73085
		/// @DnDComment : // Case for the spawner being at the top of level
		/// @DnDParent : 228D3BE9
		/// @DnDArgument : "const" "FACE_DIRECTION.TOP"
		case FACE_DIRECTION.TOP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 031D98FD
			/// @DnDComment : // Sets the new enemy face direction$(13_10)// Sets the new enemy speed
			/// @DnDInput : 2
			/// @DnDApplyTo : _new_enemy
			/// @DnDParent : 7EB73085
			/// @DnDArgument : "value" "90"
			/// @DnDArgument : "value_1" "3"
			/// @DnDArgument : "instvar" "12"
			/// @DnDArgument : "instvar_1" "5"
			with(_new_enemy) {
			image_angle = 90;
			vspeed = 3;
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6772F5D2
		/// @DnDComment : // Case for the spawner being at the right of level
		/// @DnDParent : 228D3BE9
		/// @DnDArgument : "const" "FACE_DIRECTION.RIGHT"
		case FACE_DIRECTION.RIGHT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3A0BBFF4
			/// @DnDComment : // Sets the new enemy face direction$(13_10)// Sets the new enemy speed
			/// @DnDInput : 2
			/// @DnDApplyTo : _new_enemy
			/// @DnDParent : 6772F5D2
			/// @DnDArgument : "value_1" "-3"
			/// @DnDArgument : "instvar" "12"
			/// @DnDArgument : "instvar_1" "4"
			with(_new_enemy) {
			image_angle = 0;
			hspeed = -3;
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 77B57CC8
		/// @DnDComment : // Case for the spawner being at the bottom of level
		/// @DnDParent : 228D3BE9
		/// @DnDArgument : "const" "FACE_DIRECTION.BOTTOM"
		case FACE_DIRECTION.BOTTOM:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 2877A8A9
			/// @DnDComment : // Sets the new enemy face direction$(13_10)// Sets the new enemy speed
			/// @DnDInput : 2
			/// @DnDApplyTo : _new_enemy
			/// @DnDParent : 77B57CC8
			/// @DnDArgument : "value" "270"
			/// @DnDArgument : "value_1" "-3"
			/// @DnDArgument : "instvar" "12"
			/// @DnDArgument : "instvar_1" "5"
			with(_new_enemy) {
			image_angle = 270;
			vspeed = -3;
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7F8D9734
		/// @DnDComment : // Case for the spawner being at the left of level
		/// @DnDParent : 228D3BE9
		/// @DnDArgument : "const" "FACE_DIRECTION.LEFT"
		case FACE_DIRECTION.LEFT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 78353A1C
			/// @DnDComment : // Sets the new enemy face direction$(13_10)// Sets the new enemy speed
			/// @DnDInput : 2
			/// @DnDApplyTo : _new_enemy
			/// @DnDParent : 7F8D9734
			/// @DnDArgument : "value" "180"
			/// @DnDArgument : "value_1" "3"
			/// @DnDArgument : "instvar" "12"
			/// @DnDArgument : "instvar_1" "4"
			with(_new_enemy) {
			image_angle = 180;
			hspeed = 3;
			}
			break;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F4C52EA
	/// @DnDComment : // Decreases the spawn queue$(13_10)// Resets the cooldown for spawner
	/// @DnDInput : 2
	/// @DnDParent : 64C2D88A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "cooldown_rate"
	/// @DnDArgument : "var" "spawn_queue"
	/// @DnDArgument : "var_1" "cooldown"
	spawn_queue += -1;
	cooldown = cooldown_rate;
}