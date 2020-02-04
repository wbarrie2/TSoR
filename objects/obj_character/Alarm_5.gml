/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5C5B9E9E
/// @DnDArgument : "steps" "5"
/// @DnDArgument : "alarm" "5"
alarm_set(5, 5);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2312573D
/// @DnDArgument : "code" "if (hsp != 0 || vsp != 0)$(13_10){$(13_10)	instance_create_layer(x, y, "Instances", obj_aura);$(13_10)}"
if (hsp != 0 || vsp != 0)
{
	instance_create_layer(x, y, "Instances", obj_aura);
}