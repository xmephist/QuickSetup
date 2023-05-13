function Sound(sfx,pitch = 1,vol = 1,loop = false)
	{
		var sound = audio_play_sound_on(global.sfxEmit, sfx, loop, 0);
		audio_sound_gain(sound,vol,0);
		audio_sound_pitch(sound, pitch);
		return sound;
	}

function Music(music, loop = true, fade = 1) {
	global.musicHandler[1] = music; // Set target music
	global.musicHandler[2] = fade;	// Set music fade type
	global.musicHandler[3] = loop	// If this song will loop or not
}