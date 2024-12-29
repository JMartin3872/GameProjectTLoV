/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_start)){
	SlideTransition(TRANS_MODE.GOTO, rMenu);
}