/// @desc Draw debug names

if dbgToggle
{
	with(all) // show all object names at all object positions
			{
				var doDraw = true
				draw_set_font(f_arial_I)
				SetAlign(fa_center,fa_middle)
				var arr = asset_get_tags(object_get_name(object_index));
				
				for(var i = 0; i < array_length(arr); i++)
					{
						if arr[i] = "nodebug"
							{
								doDraw = false
								break;
							}
					}
				draw_set_color(c_blue)
				if doDraw then draw_text(x,y,object_get_name(object_index))
			}
}