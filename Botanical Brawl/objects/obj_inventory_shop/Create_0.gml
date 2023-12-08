if (!variable_global_exists("inventory2_initialized")) {
    global.inventory2 = ds_map_create();
    global.inventory2[? "parsnipSd"] = 4;
    global.inventory2[? "tomSd"] = 1;
    global.inventory2[? "cornSd"] = 7;
    global.inventory2[? "harvestedParsnip"] = 0;
    global.inventory2[? "harvestedTom"] = 0; 
    global.inventory2[? "harvestedCorn"] = 0;

    global.inventory2_initialized = true;  
}
















