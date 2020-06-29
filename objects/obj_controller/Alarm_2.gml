/// @description Alarm that changes the game color
// You can write your code in this editor

if(global.color_mode == "blue"){
	global.color_mode = "green";
} else if(global.color_mode = "green"){
	global.color_mode = "red";
} else if(global.color_mode = "red"){
	global.color_mode = "blue";
}

alarm[2] = room_speed * 60;