/// @description Insert description here
mouse_press = mouse_check_button_pressed(mb_left);

if(mouse_press == 1)
{
	if(wall_instance != noone)
	{
		with(wall_instance)
		{
			instance_destroy();
		}
	}
	
	wall_instance = instance_create_layer(mouse_x, mouse_y, "Instances", obj_Wall);
}