key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

vsp += grv

if (place_meeting(x,y+1,obj_block)) && (key_jump)
{
	vsp = -2
}

//horizontal collision
if (place_meeting(x+hsp,y,obj_block))
{
	while (!place_meeting(x+sign(hsp),y,obj_block))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//vertical collision
if (place_meeting(x,y+vsp,obj_block))
{
	while (!place_meeting(x,y+sign(vsp),obj_block))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y += vsp;