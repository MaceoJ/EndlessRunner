
//checks to see if player exists in room
if(instance_exists(obj_player)){
	xTo = obj_player.x;
	yTo = obj_player.y;
}

//Update camera (object) position
x += (xTo - x);
y += (yTo - y);

//prevents camera from going out of the room
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//update camera view position
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);