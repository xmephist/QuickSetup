gml_pragma("forceinline");
// Macros

#macro IG_RESX 320
#macro IG_RESY 240

#macro DEBUG 1
#macro STARTRM r_testroom

#macro GAMETITLE "QuickSetup Project"

// Globals

global.IG_SCALE = 3

global.musicEmitter = audio_emitter_create();
global.soundEmitter = audio_emitter_create();

global.music = noone;
global.musicTarget = sx_nothing;
global.musicPlaying = sx_nothing;
global.musicLoops = true;

// Structs



// Misc