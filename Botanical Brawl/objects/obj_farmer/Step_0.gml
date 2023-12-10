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
	facingDirection = "left";
	if !audio_is_playing(snd_footsteps)
{
audio_play_sound(snd_footsteps,2,false)
}
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
    x = min(rightBound, x + moveSpeed);
    sprite_index = spr_farmerWlk;
    image_xscale = 1;
	facingDirection = "right";
	if !audio_is_playing(snd_footsteps)
{
audio_play_sound(snd_footsteps,2,false)
}
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
    y = max(topBound, y - moveSpeed);
	if !audio_is_playing(snd_footsteps)
{
audio_play_sound(snd_footsteps,2,false)
}
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
    y = min(bottomBound, y + moveSpeed);
	if !audio_is_playing(snd_footsteps)
{
audio_play_sound(snd_footsteps,2,false)
}
}

if (keyboard_check_pressed(ord("K"))) {
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet);

    if (facingDirection == "left") {
        bullet.direction = 180; 
    } else {
        bullet.direction = 0; 
    }

    bullet.speed = 5; // set the speed of the bullet
}

// Reset to idle sprite if no movement keys are pressed
if (!keyboard_check(ord("A")) && !keyboard_check(vk_left) &&
    !keyboard_check(ord("D")) && !keyboard_check(vk_right) &&
    !keyboard_check(ord("W")) && !keyboard_check(vk_up) &&
    !keyboard_check(ord("S")) && !keyboard_check(vk_down)) {
    sprite_index = spr_farmer;
    image_xscale = 1; 
}


