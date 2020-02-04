enum states{
	idle,
	running,
	jumping,
	attacking,
	knocked
}

state = states.idle;

hsp = 0;
vsp = 0;
grv = 1;

setSprite = spr_latch_idle;

alarm[5] = 5