function dbg(_input,important = 0) // lazify the show_debug_message function
	{
		var obj = "N/A OBJ: "
		with(self)
			{
				obj = object_get_name(object_index)+": "
			}
		
		if !DEBUG then return;
		
		var wholeInp = obj+string(_input)
		
		if !important then show_debug_message(wholeInp) else show_message(wholeInp)
	}