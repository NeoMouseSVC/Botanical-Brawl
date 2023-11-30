/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_fence)) {
    var fence = instance_place(x, y, obj_fence);
    if (fence != noone) {
        show_debug_message("Zombie colliding with fence. Pre-damage health: " + string(fence.health));
        fence.health -= fence.durability;
        show_debug_message("Fence damaged. Post-damage health: " + string(fence.health));
    }
    alarm[1] = room_speed; // Reset the alarm
} else {
    show_debug_message("Zombie alarm triggered, but no collision with fence.");
}













