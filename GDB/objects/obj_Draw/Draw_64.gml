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
		break;
	case(4):
	if (global.second_text == false)
	{
		draw_text(drx, dry, "But it seems there are things you cannot do alone.");
	}
	else
	{
		draw_text(drx, dry, "Sometimes asking for help doesn't make us weaker, Try asking someone to use the left mouse button.")
	}
		break;
	case(5):
	draw_text_ext(drx, dry, "Togheter people are stronger, your friend helped you. Will you grab something that helps him?", 3, 250);
	
}