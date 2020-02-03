if(place_free(x - 5, y) && !hitting)
	{
		if (!keyboard_check(ord("D")) && vsp == 0)
		{
			setSprite = spr_latch_run;
			image_speed = 1;
			image_xscale = -1;
	}
}