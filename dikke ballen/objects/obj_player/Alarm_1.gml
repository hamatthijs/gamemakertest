/// @description Flash character when hit
if (again = false) && (_just_got_hit = true)
{
    image_alpha = 0.5;
    alarm[1] = 0.125*frames;
    again = true
    show_debug_message("alpha = 0.5")
}
else if (_just_got_hit = true)
{
    image_alpha = 1;
    show_debug_message("alpha = 1")
    alarm[1] = 0.125*frames;
    again = false;
}
