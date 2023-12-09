<<<<<<<< HEAD:Botanical Brawl/objects/obj_zombie/Step_0.gml
/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_corn)) {
    var target_x = obj_corn.x;
    var target_y = obj_corn.y;
========
if (instance_exists(obj_greenHouse)) {
    var target_x = obj_greenHouse.x;
    var target_y = obj_greenHouse.y;
>>>>>>>> adam:Botanical Brawl/objects/obj_zombieSnake/Step_0.gml

    
    var dir = point_direction(x, y, target_x, target_y);

    
    var moveSpeed = 2; 

    x += lengthdir_x(moveSpeed, dir);
    y += lengthdir_y(moveSpeed, dir);

}

















