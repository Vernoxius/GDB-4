/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
drx = 50;
dry = 50;

text = "X1:" + string(tileX1) + "_X2:" + string(tileX2) + "_Y1:" + string(tileY1) + "_Y2:" + string(tileY2) + "_JUMPS:" + string(obj_Player.jumps);

draw_text(drx, dry,text);
