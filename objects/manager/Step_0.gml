if room = room_first then room_goto(STARTRM)

if DEBUG
	{
		if keyboard_check(vk_escape) then game_end()
		
		if keyboard_check_pressed(vk_shift) && keyboard_check_pressed(ord("R")) then room_restart()
	}
	
// --- Persistent Code :)
	
#region Music Player | Stolen From PIXELPARTY

var fadeTime = 100

if(global.musicTarget != global.musicPlaying) { //if music has changed
	if(global.musicPlaying == sx_nothing) { //if there was no music being played, no need to wait for fading
		audio_sound_gain(global.music,0,0);
	} else {
		audio_sound_gain(global.music,0,fadeTime);
	}
	if(audio_sound_get_gain(global.music) == 0) { //when the old song finishes fading out
		audio_stop_sound(global.music); //stop the old song
		global.musicPlaying = global.musicTarget; //set the song to play
		global.music = audio_play_sound_on(global.musicEmitter, global.musicPlaying, global.musicLoops, 0); //play the song
		audio_sound_gain(global.music,1,0); //set its volume
	}
}

#endregion

