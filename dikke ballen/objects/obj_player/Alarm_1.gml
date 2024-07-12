/// @description Flash character when hit
if (_again = false) && (_just_got_hit = true)
{
    obj_player.image_alpha = 0.5;
    alarm[1] = 0.125*global.frames;
    _again = true
    show_debug_message("alpha = 0.5")
}
else if (_just_got_hit = true)
{
    obj_player.image_alpha = 1;
    show_debug_message("alpha = 1")
    alarm[1] = 0.125*global.frames;
    _again = false;
}
