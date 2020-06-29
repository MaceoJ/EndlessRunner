/// @description Insert description here
// You can write your code in this editor
/*
if(surface_exists(surf)){
	surface_set_target(surf);
	draw_clear_alpha(c_black, 1);
	gpu_set_blendmode(bm_add);
	
	if(instance_exists(obj_lighting)){
		with(obj_lighting){
			draw_circle_color(x, y, 32, col, c_black, 0);
		}
	}
	surface_reset_target();
	gpu_set_blendmode_ext(bm_zero, bm_subtract);
	draw_surface(surf, x, y);
	gpu_set_blendenable(bm_normal);
	
} else{
	surf = surface_create(room_width, room_height);
}*/