DEVELOPMENTOVERLAY = true // This shows the fps and "development" in the corners

debug_array = [] // An array for storing all the stuff we want to display

bDate = date_date_string(GM_build_date) // Build date
bTime = date_time_string(GM_build_date) // Build time

depth = -15000

roomToggle = false // Toggle room selector
dbgToggle = false // Toggle debug menu
rooms = [] // Array of all rooms
roomSel = 0 // Current room selection
roomCount = 0 // Used at creation

realFps = 0 // 

// Make an array filled with every room in the game for easy access (Not dynamic)
var roomEx = true
while(roomEx)
	{
		if room_exists(roomCount)
			{
				roomCount++
			} else {
				roomEx = false
			}
	}

// Fill the array with the current roomCount's name
for(var i = 0; i < roomCount; i++)
	{
		rooms[i] = room_get_name(i)
	} 

if !DEBUG then instance_destroy(id) // Die if not giving food

alarm_set(0,10) // Update FPS