/// @description shake on hit

startShaking = true;

if(!audio_is_playing(snHitChardalyn))
{
	audio_play_sound(snHitChardalyn, 10, false);
}