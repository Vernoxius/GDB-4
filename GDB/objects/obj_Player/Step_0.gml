/// Player_Input
//Get player input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);

//react to input
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x, y+1, obj_Wall))
{
	vsp = key_jump * -jumpspeed;
}

//Horizontal collision
if (place_meeting(x+hsp, y, obj_Wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_Wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

//vertical collision
if (place_meeting(x, y+vsp, obj_Wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_Wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;