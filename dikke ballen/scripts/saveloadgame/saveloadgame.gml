function savegame(){
	var _file = "saves/save.save";
	var _savedata = array_create(0);
	with (obj_player)
	{
		var _saveEntity =
		{
			x : x,
			y : y,
			_lives : global._lives,
			_coins : global._coins
		}
	array_push(_savedata, _saveEntity);
	}
	var _string = json_stringify(_savedata);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _file)
	buffer_delete(_buffer)
	show_debug_message("game saved: "+_string)
}

function load_game(){
	var _file = "saves/save.save";
	if( file_exists(_file))
	{
		var _buffer = buffer_load(_file);
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer)
		
		var _loadData = json_parse(_string)
		
		with (obj_player)
		{
			var _loadEntity = array_pop(_loadData);
			with _loadEntity
			{
				obj_player.x = _loadEntity.x
				obj_player.y = _loadEntity.y
				global._lives = _loadEntity._lives
				global._coins = _loadEntity._coins
			}
		}
		show_debug_message("game loaded: " + _string)
	}
}