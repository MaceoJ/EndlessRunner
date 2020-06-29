/// @description Alarm that adjusts the speed of the obstacles and the background
// You can write your code in this editor

global.speedModifier += 0.1;

alarm[1] = room_speed * 30;

layer_hspeed("Background", layer_get_hspeed("Background") - 0.1);
