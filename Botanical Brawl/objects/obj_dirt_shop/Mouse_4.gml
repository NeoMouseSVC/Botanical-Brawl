// Check if global.selectedSeed is initialized and a seed is selected
if (variable_global_exists("selectedSeed") && global.selectedSeed != noone) {
    var newSeed = instance_create_layer(x, y, "SeedLayer", global.selectedSeed);

    // Center the seed on the dirt
    newSeed.x = x;
    newSeed.y = y;

    // Set different growth times for different seeds
    switch (newSeed.object_index) {
        case obj_parsnipSd_shop:
            newSeed.alarm[0] = 5 * room_speed; 
            break;
        case obj_tomSd_shop:
            newSeed.alarm[0] = 10 * room_speed; 
            break;
        case obj_cornSd_shop:
            newSeed.alarm[0] = 2 * room_speed; 
            break;
        // Add the rest of the plants' timers
    }

    global.selectedSeed = noone;

    // Decrement the selected seed count in the inventory
    switch (newSeed.object_index) {
        case obj_parsnipSd_shop:
            global.inventory2[? "parsnipSd"] -= 1;
            break;
        case obj_tomSd_shop:
            global.inventory2[? "tomSd"] -= 1;
            break;
        case obj_cornSd_shop:
            global.inventory2[? "cornSd"] -= 1;
            break;
        // Add the rest of the inventory updates for other seeds
    }
}