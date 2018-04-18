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