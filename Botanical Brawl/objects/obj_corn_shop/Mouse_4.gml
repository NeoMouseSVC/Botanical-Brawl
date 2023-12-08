if (instance_exists(id)) {

    global.inventory2[? "harvestedCorn"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory2[? "cornSd"] += extraSeeds;

    instance_destroy();
}