// UPDATE INPUT

input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_run = keyboard_check(vk_shift);
input_walk = keyboard_check(vk_control);

// ALTER SPEED
if (input_walk or input_run) {
	spd = abs((input_walk * w_spd) - (input_run * r_spd));
} else {
	spd = n_spd;
}

// RESET MOVEMENT VARIABLES
moveX = 0;
moveY = 0;

// GET INTENDED MOVEMENT
moveX = (input_right - input_left) * spd;
if (moveX == 0) {
	moveY = (input_down - input_up) * spd;
}

// COLLISIONS
// HORRIZONTAL
if (moveX != 0) {
	var collisionH = place_meeting(x + moveX, y, obj_collision);
	if (collisionH) {
		repeat(abs(moveX)) {
			if (!place_meeting(x+sign(moveX), y, obj_collision)) {
				x += sign(moveX);
			} else {
				break;
			}
		}
		moveX = 0;
	}
}

// VERTICAL
else if (moveY != 0) {
	var collisionV = place_meeting(x, y+moveY, obj_collision);
	if (collisionV) {
		repeat(abs(moveY)) {
			if (!place_meeting(x, y+sign(moveY), obj_collision)) {
				y += sign(moveY);
			} else {
				break;
			}
		}
		moveY = 0;
	}
}

// APPLY MOVEMENT
x += moveX;
y += moveY;