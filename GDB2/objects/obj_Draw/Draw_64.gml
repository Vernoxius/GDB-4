/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
drx = 50;
dry = 50;

//show_debug_message(string(global.room_index));

switch(global.room_index)
{
	case(1):
		draw_text(drx, dry, "I used to be like you... using the A and D key to move to my goals.");
		draw_text(drx, dry + 20, "I thought I could leap over any obstacle using the spacebar....");
		break;
	case(2):
		draw_text(drx, dry, "Even when my world became bigger I climbed upwards into the unknown...");
		break;
	case(3):
		if (global.second_text == false)
		{
			draw_text(drx, dry, "But it seems there are things you cannot do alone, Try asking someone to use the grid.");
		}
		else if (global.second_text == true)
		{
			draw_text(drx, dry + 20, "Maybe they can use the arrow keys to move around, and use the return key to create");
			draw_text(drx, dry + 40, "I can however only maintain one");
		}
		break;
	case(4):
		draw_text(drx, dry, "Together people are stronger, but I should let the other try when I die.");
		break;
	case(5):
		draw_text(drx, dry, "Don't worry, I will swap the controlls for you no need to switch places");
		break;
	
}