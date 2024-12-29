/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0, gp_face1) || gamepad_button_check_pressed(0, gp_start)){
	if(time_source_exists(timer)){
		time_source_stop(timer);
		time_source_destroy(timer);
	}
	room = next_room;
}