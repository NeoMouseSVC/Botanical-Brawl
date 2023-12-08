var moveSpeed = 4;
var leftBound = 0;
var rightBound = room_width - sprite_width;
var topBound = 0;
var bottomBound = room_height - sprite_height;

sprite_index = spr_farmer;
image_xscale = 1;


if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
    x = max(leftBound, x - moveSpeed);
    sprite_index = spr_farmerWlk;
    image_xscale = -1; 
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
    x = min(rightBound, x + moveSpeed);
    sprite_index = spr_farmerWlk;
    image_xscale = 1; 
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
    y = max(topBound, y - moveSpeed);
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
    y = min(bottomBound, y + moveSpeed);
}


// Reset to idle sprite if no movement keys are pressed
if (!keyboard_check(ord("A")) && !keyboard_check(vk_left) &&
    !keyboard_check(ord("D")) && !keyboard_check(vk_right) &&
    !keyboard_check(ord("W")) && !keyboard_check(vk_up) &&
    !keyboard_check(ord("S")) && !keyboard_check(vk_down)) {
    sprite_index = spr_farmer;
    image_xscale = 1; // Reset scaling when idle
	
	if(keyboard_check_pressed(ord("Z"))) {
		instance_create_layer(x,y,"Instances",obj_shovel)
	}
}
