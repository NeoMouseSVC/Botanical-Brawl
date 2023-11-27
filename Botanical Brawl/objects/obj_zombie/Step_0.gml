/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_seed)) {
    var target_x = obj_seed.x;
    var target_y = obj_seed.y;

    
    var dir = point_direction(x, y, target_x, target_y);

    
    var moveSpeed = 2; 

    x += lengthdir_x(moveSpeed, dir);
    y += lengthdir_y(moveSpeed, dir);

}














