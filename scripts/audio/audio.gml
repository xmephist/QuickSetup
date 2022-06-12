function Sound(sound, pitch = 1, volume = 1, loops = false)
	{
		var theSound = audio_play_sound_on(global.soundEmitter, sound, loops, 0);
		audio_sound_gain(theSound,volume,0);
		audio_sound_pitch(theSound, pitch);
		return theSound;
	}

function Music(song, loop = true) {
	global.musicTarget = song;
	global.musicLoops = loop;
}