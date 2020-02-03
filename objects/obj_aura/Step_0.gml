/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23819761
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "2"
if(image_alpha > 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 6A1A3293
	/// @DnDParent : 23819761
	/// @DnDArgument : "alpha" "-.05"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -.05;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 46A871D5
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 006DA805
	/// @DnDParent : 46A871D5
	instance_destroy();
}