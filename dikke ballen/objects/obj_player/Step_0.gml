var key_left = keyboard_check(vk_left)+keyboard_check(ord("A"));
var key_right = keyboard_check(vk_right)+keyboard_check(ord("D"));
var key_jump = keyboard_check(vk_space);

var move = sign(key_right) - sign(key_left);

hsp = move * walksp;

vsp += grv

if (place_meeting(x,y+1,obj_block)) && (key_jump)
{
	vsp = -2
}

//horizontal collision with blocks
if (place_meeting(x+hsp,y,obj_block))
{
	while (!place_meeting(x+sign(hsp),y,obj_block))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//vertical collision with blocks
if (place_meeting(x,y+vsp,obj_block))
{
	while (!place_meeting(x,y+sign(vsp),obj_block))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y += vsp;

// enemy collision
if (place_meeting(x,y,obj_enemy_1)) && (_just_got_hit = false)
{
	if (global._lives = 1)
	{
	global._lives -= 1
	//player_death()
	}
	if (global._lives > 1)
	{
		_just_got_hit = true;
		alarm[0] = 3*frames; // cooldown until player can be hit again
		alarm[1] = 0.125*frames; // make it noticable that player was hit
		global._lives -= 1
	}
}