if (instance_exists(obj_character))
{
sprite_index = obj_character.sprite_index;
image_index = obj_character.image_index;
image_xscale = obj_character.image_xscale;
image_yscale = obj_character.image_yscale;
image_alpha = .75
image_speed = 0;
} else {
	instance_destroy();
}