/// @description ?

// Inherit the parent event
event_inherited();

//Code specific for this cutscene, mainly things that willl trigger on certain text-prompts:

//At first text appearing, create an instance of the first sequence.
if(currenttext == 0 && currentline == 0 && !layer_sequence_exists("Assets_1", first_sequence)){
	first_sequence = layer_sequence_create("Assets_1", oCameraCutsceneTarget1.x, oCameraCutsceneTarget1.y, sqTest1)
}

//At second text appearing, destroy first sequence
if(currenttext == 1 && currentline == 0 && layer_sequence_exists("Assets_1", first_sequence)){
	layer_sequence_destroy(first_sequence);
}

//At second text, second line, create a new sequence and in this case pause it.
if(currenttext == 1 && currentline == 1 && !layer_sequence_exists("Assets_1", second_sequence)){
	second_sequence = layer_sequence_create("Assets_1", oCameraCutsceneTarget2.x, oCameraCutsceneTarget2.y, sqTest1);	
	layer_sequence_pause(second_sequence);
}
