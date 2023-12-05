if (instance_exists(id)) {

    global.inventory[? "harvestedTom"] += 1;
    var extraSeeds = irandom_range(1, 5);	
    global.inventory[? "tomSd"] += extraSeeds;
	
    instance_destroy();
}

