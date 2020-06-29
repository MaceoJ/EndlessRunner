/// @description Alarm that controls the spawning of the obstacles
// You can write your code in this editor

randomize();
var y_pos = choose(1, 2);
if(y_pos == 1){
	var obstacle = instance_create_layer(room_width + 100, room_height - 100, "Instances", obj_obstacle);
} else{
	var obstacle = instance_create_layer(room_width + 100, 95, "Instances", obj_obstacle);
	obstacle.image_angle = 180;
}
switch(global.color_mode){
	case "blue":
		obstacle.sprite_index = choose(spr_blue_obs_small, spr_blue_obs_medium, spr_blue_obs_large);
		break;
	case "green":
		obstacle.sprite_index = choose(spr_green_obs_small, spr_green_obs_medium ,spr_green_obs_large);
		break;
	case "red":
		obstacle.sprite_index = choose(spr_red_obs_small, spr_red_obs_medium ,spr_red_obs_large);
		break;
}
/*
if(global.speedModifier < 1.2){
	var y_pos = choose(1, 2);
	if(y_pos == 1){
		var obstacle = instance_create_layer(room_width + 100, room_height - 100, "Instances", obj_obstacle);
		obstacle.sprite_index = choose(spr_blue_obs_small, spr_blue_obs_medium ,spr_blue_obs_large);
	} else{
		var obstacle = instance_create_layer(room_width + 100, 95, "Instances", obj_obstacle);
		obstacle.image_angle = 180;
		obstacle.sprite_index = choose(spr_blue_obs_small, spr_blue_obs_medium, spr_blue_obs_large);
	}

	alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
} else{
	var y_pos = choose(1, 2);
	if(y_pos == 1){
		var obstacle = instance_create_layer(room_width + 100, room_height - 100, "Instances", obj_obstacle);
		obstacle.sprite_index = choose(spr_green_obs_small, spr_green_obs_medium ,spr_green_obs_large);
	} else{
		var obstacle = instance_create_layer(room_width + 100, 95, "Instances", obj_obstacle);
		obstacle.image_angle = 180;
		obstacle.sprite_index = choose(spr_green_obs_small, spr_green_obs_medium, spr_green_obs_large);
	}*/

	alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
//