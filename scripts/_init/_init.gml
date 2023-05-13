gml_pragma("forceinline");
// Macros

// The in-game resolution
#macro IG_RESX 320
#macro IG_RESY 240

#macro DEBUG 1 // You can use this for debug specific things
#macro STARTRM r_testroom // Starting room

#macro GAMETITLE "GameMakerStudio2: QuickSetup Project" // Window Caption

// Globals

global.IG_SCALE = 2 // Screen Scale

global.musEmit = audio_emitter_create(); // Music
global.sfxEmit = audio_emitter_create(); // Sound Effects

global.musicHandler = [
	sx_nothing, // Current Music Playing
	sx_nothing, // Music to Transition To
	0, // Fade Music Flag (0 = no fade, 1 = fade out & in, 2 = crossfade)
	1] // Loop

global.musVol = 100
global.sndVol = 100

// Structs



// Misc