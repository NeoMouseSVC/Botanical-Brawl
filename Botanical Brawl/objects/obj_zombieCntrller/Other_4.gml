// Define the number of times to spawn the object
var spawnCount = 5;

// Loop to spawn the objects
for (var i = 0; i < spawnCount; i++) {
    var edge = irandom(3); // Randomly select an edge (0: top, 1: right, 2: bottom, 3: left)
    var x_spawn, y_spawn;

    switch (edge) {
        case 0: // Top edge
            x_spawn = irandom(room_width - 1); // Random position along the width
            y_spawn = 0;
            break;
        case 1: // Right edge
            x_spawn = room_width - 1;
            y_spawn = irandom(room_height - 1); // Random position along the height
            break;
        case 2: // Bottom edge
            x_spawn = irandom(room_width - 1);
            y_spawn = room_height - 1;
            break;
        case 3: // Left edge
            x_spawn = 0;
            y_spawn = irandom(room_height - 1);
            break;
    }

    // Create the object at the calculated position
    instance_create_layer(x_spawn, y_spawn, "Instances", obj_zombieSnake);
}




















