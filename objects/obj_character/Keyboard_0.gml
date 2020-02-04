if (state != states.knocked && 
	state != states.jumping &&
	state != states.attacking && vsp == 0){
		state = states.idle;
} else
{
	state = states.jumping;
	image_index = 1;
}