var edge = irandom_range(1, 4);
var spawn_x, spawn_y;

switch (edge) {
    case 1: // Top Edge
        spawn_x = irandom_range(0, 1920);
        spawn_y = 0;
        break;
    case 2: // Bottom Edge
        spawn_x = irandom_range(0, 1920);
        spawn_y = 1080;
        break;
    case 3: // Left Edge
        spawn_x = 0;
        spawn_y = irandom_range(0, 1080);
        break;
    case 4: // Right Edge
        spawn_x = 1920;
        spawn_y = irandom_range(0, 1080);
        break;
}

instance_create_layer(spawn_x, spawn_y, "Instances", obj_zombie);
