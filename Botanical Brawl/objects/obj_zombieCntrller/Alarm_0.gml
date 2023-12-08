var edge = irandom_range(1, 5); 
var spawn_x, spawn_y;

switch (edge) {
    case 1: 
        spawn_x = 0;
        spawn_y = 1080;
        break;
    case 2: 
        spawn_x = 960; 
        spawn_y = 1080;
        break;
    case 3: 
        spawn_x = 1920;
        spawn_y = 1080;
        break;
    case 4:		
        spawn_x = 0;
        spawn_y = 540; 
        break;
    case 5: 
        spawn_x = 1920;
        spawn_y = 540; 
        break;
}

instance_create_layer(spawn_x, spawn_y, "Instances", obj_zombie);

alarm[0] = 60; 
