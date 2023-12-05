if (instance_exists(id)) {

    global.inventory[? "harvestedCorn"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory[? "cornSd"] += extraSeeds;

    instance_destroy();
}



















