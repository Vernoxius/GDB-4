while((xx < room_width) || (yy < room_height))
{
	draw_set_color(col);
	draw_line_width(xx, 0, xx, room_height, w);
	draw_line_width (0, yy, room_width, yy, w);
	draw_set_color(dcol);
	xx+=gw;
	yy+=gh;
}

xx = 0;
yy = 0;
