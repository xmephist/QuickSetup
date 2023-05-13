if roomSel = -1 then roomSel = array_length(rooms)-1
if roomSel = array_length(rooms) then roomSel = 0

roomSel = clamp(roomSel,0,array_length(rooms))