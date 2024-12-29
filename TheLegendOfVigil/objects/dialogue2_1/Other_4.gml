/// @description Stop music if cutscene hasn't been seen
if(global.dialogues_level2[my_dialogue_list_index] == 0){
	audio_stop_sound(oMusic.myMusic);
}