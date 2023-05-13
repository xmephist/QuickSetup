/// @desc Draw dbg overlay & room selector
draw_set_color(c_white)
if dbgToggle
	{
		draw_set_alpha(0.7)
		draw_rectangle_color(0,0,IG_RESX,IG_RESY,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		SetAlign(fa_left,fa_top)
		for(var i = 0; i < array_length(debug_array); i++)
			{
				draw_text(0,(i+1)*16-16,debug_array[i])
			}
		
		draw_text(334,228,"DEBUG")
		
	}
	
// Room selector drawing
if roomToggle
	{
		draw_set_alpha(0.5)
		draw_rectangle_color(0,0,IG_RESX,IG_RESY,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		
		for(var i = 0; i < array_length(rooms); i++)
			{
				var plus = ""
				if roomSel = i then plus = " <<<" else plus = ""
				
				draw_text(0,(i+1)*16-16+16*-roomSel,string_delete(rooms[i],1,2)+plus)
			}
			
		if keyboard_check_pressed(ord("Z"))
					{
						room_goto(asset_get_index(rooms[roomSel]))
						audio_stop_sound(global.musicHandler[0])
						Music(sx_nothing)
						audio_stop_all()
						roomToggle = false
					}
	}
	
if DEVELOPMENTOVERLAY // Fps and 'development' text
	{
		var txt = ""
		if fps < 50 then {txt = " - GAME IS UNDERPERFORMING"; draw_set_alpha(1);} else { draw_set_alpha(0.5) }

		draw_set_font(f_arial_I)
		SetAlign(fa_right,fa_bottom)
		draw_set_color(make_color_rgb(current_time/50,-current_time/50,2*(current_time/50)/60 mod (current_time/50) +5))
		draw_text(321,240,"development")
		SetAlign(fa_left,fa_top)

		if !dbgToggle then draw_text(0,0,string(fps)+txt)
		draw_set_alpha(1)

		draw_set_color(c_white)
	}