switch (state)
{
	case states.idle:
	{
		setSprite = spr_latch_idle; 
		hsp = 0;
	}
	break;
	case states.running:	setSprite = spr_latch_run; break;
	case states.jumping: 
	{
		setSprite = spr_latch_jump; 
		if (vsp == 0)
		{
			image_index = 1;
		}
	}
	break;
	
}

if (sprite_index != setSprite) 
{
	sprite_index = setSprite
	image_index = 0;
}
//This prevents sprite animations from endlessly reseting

if (vsp < 30)
{
	vsp += grv;
}
//This applies gravity until the player's velocity reaches 30



if (place_meeting(x + hsp, y, obj_blockV)) 
{
	while (!place_meeting(x + sign(hsp), y, obj_blockV)) 
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;
//Horizontal collisions


if (place_meeting(x, y + vsp, obj_blockH)) 
{
	while (!place_meeting(x, y + sign(vsp), obj_blockH)) 
	{
		y += sign(vsp);
	}
	vsp = 0;
	state = states.idle;
}
y += vsp;
//Vertical collisions
