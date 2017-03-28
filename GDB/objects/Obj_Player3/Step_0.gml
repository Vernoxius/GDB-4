p2_right = keyboard_check(vk_right);
p2_left = -keyboard_check(vk_left);
p2_up = -keyboard_check(vk_up);
p2_down = keyboard_check(vk_down);
p2_place = keyboard_check(vk_enter);

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

