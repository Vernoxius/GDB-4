/// Player_Input
//Get player input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);

//react to input
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x, y+1, obj_Surface))
{
	vsp = key_jump * -jumpspeed;
}

if (place_meeting(x, y+1, obj_Trampoline) && global.has_trampoline == true)
{
	vsp = -jumpspeed * 1.5;
}

if (place_meeting(x, y+1, obj_Trampoline) && global.has_trampoline == false)
{
	global.has_trampoline = true;
	instance_destroy(obj_Trampoline);
	
}

if (place_meeting(x, y+1, obj_Spike))
{
	obj_Player.x = start_pos_x;
	obj_Player.y = start_pos_y;
	global.second_text = true;
}

if (place_meeting(x+1, y, obj_Next))
{
	global.room_index++;
	room_goto_next();;
}

//Horizontal collision
if (place_meeting(x+hsp, y, obj_Surface))
{
	while(!place_meeting(x+sign(hsp), y, obj_Surface))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;


//vertical collision
if (place_meeting(x, y+vsp, obj_Surface))
{
		while(!place_meeting(x, y+sign(vsp), obj_Surface))
		{
			y += sign(vsp);
		}
		vsp = 0;
}

y += vsp;