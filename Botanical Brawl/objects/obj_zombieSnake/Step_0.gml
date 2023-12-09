if (instance_exists(obj_greenHouse)) {
    var target_x = obj_greenHouse.x;
    var target_y = obj_greenHouse.y;

    
    var dir = point_direction(x, y, target_x, target_y);

    
    var moveSpeed = 2; 

    x += lengthdir_x(moveSpeed, dir);
    y += lengthdir_y(moveSpeed, dir);

}

















