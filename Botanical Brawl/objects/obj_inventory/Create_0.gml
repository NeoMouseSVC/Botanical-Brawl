if (!variable_global_exists("inventory_initialized")) {
    global.inventory = ds_map_create();
    global.inventory[? "parsnipSd"] = 3;
    global.inventory[? "tomSd"] = 2;
    global.inventory[? "cornSd"] = 1;
    global.inventory[? "harvestedParsnip"] = 0;
    global.inventory[? "harvestedTom"] = 0; 
    global.inventory[? "harvestedCorn"] = 0;

    global.inventory_initialized = true;  
}
















