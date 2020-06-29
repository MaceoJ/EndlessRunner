/// @description Insert description here
// You can write your code in this editor

if(global.color_mode == "green" && hue > 110){
	hue--;
	col = make_color_hsv(hue, 255, 255);
} else if(global.color_mode == "red" && hue != 0){
	hue -= 2;
	col = make_color_hsv(hue, 255, 255);
} else if(global.color_mode == "blue" && hue < 2){
	hue = 360;
	col = make_color_hsv(hue, 255, 255);
} else if(global.color_mode == "blue" && hue > 160){
	hue--;
	col = make_color_hsv(hue, 255, 255);
} 
alarm[0] = 10;