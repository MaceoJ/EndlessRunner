
w_key = keyboard_check(ord("W"));
s_key = keyboard_check(ord("S"));

if(w_key && (!s_key)){	//check to go up
	if(-max_angle <= image_angle && image_angle < max_angle){
		image_angle += 1.5 * global.speedModifier;
		direction = image_angle;
	}
	if(image_angle > max_angle){
		image_angle = max_angle;
	}
	
}

if(s_key && (!w_key)){	//check to go down
	if(-max_angle < image_angle && image_angle <= max_angle){
		image_angle -= 1.5 * global.speedModifier;
		direction = image_angle;	
	}
	if(image_angle < -max_angle){
		image_angle = -max_angle;
	}
}

if(-max_angle <= image_angle && image_angle <= max_angle){
	y -= v_speed * sin(degtorad(image_angle)) * global.speedModifier;
} else if(-max_angle <=image_angle && image_angle <= max_angle){
	y += v_speed * sin(degtorad(image_angle)) * global.speedModifier;
}