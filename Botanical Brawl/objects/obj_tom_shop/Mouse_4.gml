if (instance_exists(id)) {

    global.inventory2[? "harvestedTom"] += 1;
    var extraSeeds = irandom_range(1, 5);	
    global.inventory2[? "tomSd"] += extraSeeds;
	
    instance_destroy();
}

