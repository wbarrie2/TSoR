if(state != states.attacking && state != states.knocked)
	{
		if (state != states.jumping)
		{	
		state = states.running;	
		}
	
	image_xscale = -1;
	hsp = -10;
}