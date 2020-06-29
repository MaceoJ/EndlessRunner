/// @description Insert description here
// You can write your code in this editor

if(!surface_exists(surf)){
	var cw = camera_get_view_width(view_camera[0]);
    var ch = camera_get_view_height(view_camera[0]);
	surf = surface_create(cw, ch);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, cw, cw, false);
    surface_reset_target();
	
} else{

	surface_set_target(surf);
	draw_clear(c_black);
	
	with (obj_lighting)
	    {
			gpu_set_blendmode(bm_subtract);
			draw_sprite_ext(spr_light, 0, x, y, 1, 1, 0, c_black, 1);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(spr_light, 0, x, y, 1, 1, 0, col, 0.4);
			gpu_set_blendmode(bm_normal);
	    }
	
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface_ext(surf, 0, 0, 1, 1, 0, c_white, 0.95);
}
