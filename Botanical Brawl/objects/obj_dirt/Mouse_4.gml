// Check if global.selectedSeed is initialized and a seed is selected
if (variable_global_exists("selectedSeed") && global.selectedSeed != noone) {
    var newSeed = instance_create_layer(x, y, "SeedLayer", global.selectedSeed);

    // Center the seed on the dirt
    newSeed.x = x;
    newSeed.y = y;

    // Set different growth times for different seeds
    switch (newSeed.object_index) {
        case obj_parsnipSd:
            newSeed.alarm[0] = 5 * room_speed; 
            break;
        case obj_tomSd:
            newSeed.alarm[0] = 10 * room_speed; 
            break;
        case obj_cornSd:
            newSeed.alarm[0] = 2 * room_speed; 
            break;
		case obj_epSd:
            newSeed.alarm[0] = 5 * room_speed; 
            break;
		case obj_pkSd:
            newSeed.alarm[0] = 15 * room_speed; 
            break;
    }

    global.selectedSeed = noone;

    // Decrement the selected seed count in the inventory
    switch (newSeed.object_index) {
        case obj_parsnipSd:
            global.inventory[? "parsnipSd"] -= 1;
            break;
        case obj_tomSd:
            global.inventory[? "tomSd"] -= 1;
            break;
        case obj_cornSd:
            global.inventory[? "cornSd"] -= 1;
            break;
		case obj_epSd:
            global.inventory[? "epSd"] -= 1;
            break;
		case obj_pkSd:
            global.inventory[? "pkSd"] -= 1;
            break;
    }
}