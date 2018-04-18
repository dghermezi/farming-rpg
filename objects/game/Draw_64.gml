/// @description Insert description here

if(doTransition) {
	//handle black fade/room transition
	if (room != spawnRoom) {
		blackAlpha += 0.1;
		if (blackAlpha >= 1) {
			room_goto(spawnRoom);
		}
	} else {
		blackAlpha -= 0.1;
		if (blackAlpha <= 0) {
			doTransition = false;
		}
	}
	
	
	// drawing black fade
	draw_set_alpha(blackAlpha);
	draw_rectangle_color(0,0,guiWidth,guiHeight, c_black,c_black,c_black,c_black, false);
	draw_set_alpha(1);
}