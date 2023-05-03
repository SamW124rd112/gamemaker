// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Input(){
	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	roll = keyboard_check(vk_space);
	attack = mouse_check_button_pressed(mb_left);
}