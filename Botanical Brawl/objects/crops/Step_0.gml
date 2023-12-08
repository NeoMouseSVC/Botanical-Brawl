/// @description Insert description here
// You can write your code in this editor
// lets you plant crops
if (keyboard_check_pressed(ord("P"))){
	planting = !planting
}
if planting{
	mx = mouse_x
	my = mouse_y
	
	if mouse_wheel_up() {select_crop += 1}
	if mouse_wheel_down() {select_crop -= 1}
	
	if select_crop > sprite_get_number(spr_crops_picked)-1{ select_crop = 0 }
	else if select_crop < 0{ select_crop = sprite_get_number(spr_crops_picked)-1 }
	
	if(mouse_check_button_pressed(mb_left)){
	instance_create_crop(mouse_x, mouse_y, select_crop)
}
}
//growth of crops 
if (instance_exists(obj_crops)){
	with (obj_crops){
		if (growthStage < maxGrowthStage){
			growthTimer += 1
			growthStage = growthTimer div growthStageDuration
		} else {
			growthStage = maxGrowthStage
		
		}
	}
	
	
}





