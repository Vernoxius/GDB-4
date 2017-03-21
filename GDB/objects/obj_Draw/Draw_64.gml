/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
drx = 50;
dry = 50;

show_debug_message(string(global.room_index));

switch(global.room_index)
{
	case(1):
		draw_text(drx, dry, "I used to be like you... using the A and D key to move to my goals.");
		break;
	case(2):
		draw_text(drx, dry, "I thought I could leap over any obstacle using the spacebar....");
		break;
	case(3):
		draw_text(drx, dry, "Even when my world became bigger I climbed upwards into the unknown...");
	case(4):
		draw_text(drx, dry, "But it seems there are things you cannot do alone.");
	
}