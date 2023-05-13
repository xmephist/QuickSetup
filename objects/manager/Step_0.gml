if room = room_first then room_goto(STARTRM)

if DEBUG // Basic Quick Game End and Restart (DEBUG only of course)
	{
		if keyboard_check(vk_escape) then game_end()
		
		if keyboard_check_pressed(vk_shift) && keyboard_check_pressed(ord("R")) then room_restart()
	}
	
#region === Music Player 2.0 ===
var fadeTime = 100

switch global.musicHandler[2] // Main Music Handler
	{
		case 0: // No Fade
			{
				if(global.musicHandler[0] != global.musicHandler[1])
					{
						audio_stop_sound(global.musicHandler[0]);
						audio_play_sound_on(global.musEmit,global.musicHandler[1],global.musicHandler[3],0)
						global.musicHandler[0] = global.musicHandler[1]
						break;
					}
				break;
			}
		case 1: // Fade In & Out
			{
				if(global.musicHandler[0] != global.musicHandler[1])
					{
						audio_sound_gain(global.musicHandler[0],0,fadeTime)
						if(audio_sound_get_gain(global.musicHandler[0]) == 0)
							{
								audio_sound_gain(global.musicHandler[1],1,fadeTime)
								audio_play_sound_on(global.musEmit,global.musicHandler[1],global.musicHandler[3],0)
								global.musicHandler[0] = global.musicHandler[1]
							}
					}
				break;
			}
		case 2: // Crossfade
			{
				if(global.musicHandler[0] != global.musicHandler[1])
					{
						audio_sound_gain(global.musicHandler[0],0,fadeTime)
						audio_sound_gain(global.musicHandler[1],1,fadeTime)
						audio_play_sound_on(global.musEmit,global.musicHandler[1],global.musicHandler[3],0)
						global.musicHandler[0] = global.musicHandler[1]
					}
				break;
			}
	}

// You can control the volume where you'd like
#endregion

