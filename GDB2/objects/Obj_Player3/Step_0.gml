//DEFAULT CONTROLS
if (global.default_controls)
{
	p2_right = keyboard_check(vk_right);
	p2_left = -keyboard_check(vk_left);
	p2_up = -keyboard_check(vk_up);
	p2_down = keyboard_check(vk_down);
	p2_place = keyboard_check(vk_enter);
}
else
{
	p2_right = keyboard_check(ord("D"));
	p2_left = -keyboard_check(ord("A"))
	p2_up = -keyboard_check(ord("W"));
	p2_down = keyboard_check(ord("S"));
	p2_place = keyboard_check(vk_space);
}

p2_move_h = p2_right + p2_left;
p2_move_v = p2_up + p2_down;

if((tileX1 + p2_move_h > -1) && 
(tileY1 + p2_move_v > -1) && 
(tileX2 + p2_move_h < room_width + 1) && 
(tileY2 + p2_move_v < room_height + 1))
{
	tileX1 += p2_move_h * tileLength;
	tileY1 += p2_move_v * tileHeight;
	tileX2 += p2_move_h * tileLength;
	tileY2 += p2_move_v * tileHeight;
}

if(p2_place = 1)
{
	if(spawnedobject_instance != noone)
	{
		with(spawnedobject_instance)
		{
			instance_destroy();
		}
	}
	
	spawnedobject_instance = 
	instance_create_layer(((tileX1 + tileX2)/2), ((tileY1 + tileY2)/2),
	"Instances", obj_Wall);
}

