/// @description Insert description here
mouse_press = mouse_check_button_pressed(mb_left);
mouse_press_right = mouse_check_button_pressed(mb_right);

if(mouse_press == 1 || mouse_press_right == 1)
{
	if(helpobject_instance != noone)
	{
		with(helpobject_instance)
		{
			instance_destroy();
		}
	}
	
	if(mouse_press == 1)
	{
		helpobject_instance = instance_create_layer(mouse_x, mouse_y, "Instances", obj_Wall);
	}
	else if (mouse_press_right == 1 && global.has_trampoline > 3)
	{
		helpobject_instance = instance_create_layer(mouse_x, mouse_y, "Instances", obj_Trampoline);
	}
	
}