debug_array = [
	"Room: " + string_copy(room_get_name(room),3,9999), // Room Name
	"GameFPS: "+string(fps), // Game FPS
	"RealFPS: "+string(realFps), // Real FPS
	"v"+string_format(GameVer,1,1), // Game Version
	bDate+" at "+bTime // Game Build Date & Time
]

if roomToggle // Room Selection
	{
		var ver = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
		roomSel += ver
	}

if dbgToggle // Debug overlay toggle
	{
		if keyboard_check(vk_shift) && keyboard_check(ord("P"))
			{
				room_restart()
			}
		if keyboard_check(vk_shift) && keyboard_check(vk_add)
			{
				game_restart()
			}
	}
	
// Toggles
if keyboard_check_pressed(vk_control)
	{
		roomToggle = !roomToggle
	}
if keyboard_check_pressed(vk_tab)
	{
		dbgToggle = !dbgToggle
	}