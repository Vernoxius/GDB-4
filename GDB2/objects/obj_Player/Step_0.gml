/// Player_Input
//Get player input
if(global.default_controls)
{
	p1_right = keyboard_check(ord("D"));
	p1_left = -keyboard_check(ord("A"))
	p1_up = -keyboard_check(ord("W"));
	p1_down = keyboard_check(ord("S"));
	p1_jump = keyboard_check_pressed(vk_space);
}
else
{
	p1_right = keyboard_check(vk_right);
	p1_left = -keyboard_check(vk_left);
	p1_up = -keyboard_check(vk_up);
	p1_down = keyboard_check(vk_down);
	p1_jump = keyboard_check_pressed(vk_enter);
}

//react to input
move = p1_left + p1_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x, y+1, obj_Surface))
{
	jumps = global.max_jumps;
}

if ((p1_jump) && (jumps > 0))
{
	jumps = jumps - 1;
	vsp = -jumpspeed;
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
	
	if(global.default_controls)
	{
		global.default_controls = false;
	}
	else
	{
		global.default_controls = true;
	}
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