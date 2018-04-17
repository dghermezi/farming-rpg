/// @description Insert description here
moveCam = keyboard_check(ord("C"));

if(moveCam) {
		x+= (keyboard_check(ord("D")) - keyboard_check(ord("A")))*6;
		y+= (keyboard_check(ord("S")) - keyboard_check(ord("W")))*6;	
		
} else {
	x = clamp(x, following.x-h_boarder, following.x+h_boarder);
	y = clamp(y, following.y-v_boarder, following.y+v_boarder);
}