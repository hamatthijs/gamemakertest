/// @description Insert description here
// You can write your code in this editor
// enemy collision
if (place_meeting(x,y,obj_player)) && (obj_player._just_got_hit = false)
{
	if (global._lives = 1)
	{
	global._lives -= 1
	//player_death()
	}
	if (global._lives > 1)
	{
		obj_player._just_got_hit = true;
		obj_player.alarm[0] = 3*global.frames; // cooldown until player can be hit again
		obj_player.alarm[1] = 0.125*global.frames; // make it noticable that player was hit
		global._lives -= 1
	}
}