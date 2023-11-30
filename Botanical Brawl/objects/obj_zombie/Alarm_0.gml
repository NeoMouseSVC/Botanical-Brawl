/// @description Insert description here
// You can write your code in this editor
var fence = instance_place(x, y, obj_fence);
if (fence != noone) {
    fence.health -= fence.durability;
    alarm[1] = room_speed; // Reset the alarm
}













