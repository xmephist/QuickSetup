// Quick text drawing function
function QuickText(text , pos = [0,0]/* x & y */, color = c_black, alignH = fa_left, alignV = fa_top)
	{
		draw_set_color(color)
		draw_set_halign(alignH)
		draw_set_valign(alignV)
		draw_text(pos[0],pos[1],text)
	}

// QuickText() but only for setting text alignment
function SetAlign(alignH,alignV)
	{
		draw_set_halign(alignH)
		draw_set_valign(alignV)
	}