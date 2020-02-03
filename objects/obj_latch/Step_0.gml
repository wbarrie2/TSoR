	if (sprite_index != setSprite)
	{
		sprite_index = setSprite
		image_index = 0;
	}

if (!hitting)
	{

	key_jump = keyboard_check_pressed(vk_space);
	key_jump_held = keyboard_check(vk_space);
	key_left = -keyboard_check(ord("A"))
	key_right = keyboard_check(ord("D"))

	move = key_left + key_right;
	hsp = move * movespeed;

	if (vsp < 30)
	{
		vsp += grv;
	}

	if (key_jump && vsp == 0)
	{
		vsp = -jumpspeed;
	}

	if (vsp < 0 && !key_jump_held)
	{
		vsp = max(vsp, 0);
	}


	if (place_meeting(x, y+1, obj_blockH))
	{
		vsp = key_jump * -jumpspeed;
	}

	if (place_meeting(x + hsp, y, obj_blockV)) {
		while (!place_meeting(x + sign(hsp), y, obj_blockV)) {
			x += sign(hsp);
		}
		hsp = 0;
	}

	x += hsp;

	if (place_meeting(x, y + vsp, obj_blockH)) {
		while (!place_meeting(x, y + sign(vsp), obj_blockH)) {
			y += sign(vsp);
		}
		vsp = 0;
	}



	y += vsp;


	if (vsp < 0 && place_free(x, y + 1)){
		setSprite = spr_latch_jump
	} else if (vsp > 0 && place_free(x, y + 1)){
		setSprite = spr_latch_jump
		image_index = 1;
	} else if (hsp == 0 && vsp == 0){
		setSprite = spr_latch_idle
	}

} else if (image_index > image_number - 1) {
	hitting = false
}

