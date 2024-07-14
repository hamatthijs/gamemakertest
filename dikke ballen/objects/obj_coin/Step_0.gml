if (place_meeting(x,y,obj_player))
{
    var _num = 0;
    with (obj_coin)
    {
    struct[_num] = {id:id,x:x, y:x};
    show_debug_message("struct["+string(_num)+"] = {id:"+string(id)+",{x:"+string(x)+", y:"+string(y)+"}}");
    _num += 1;
    }
    instance_destroy();
    global._coins += 1;
    
}