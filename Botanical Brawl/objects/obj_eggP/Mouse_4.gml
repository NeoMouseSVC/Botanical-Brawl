if (instance_exists(id)) {

    global.inventory[? "harvestedEP"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory[? "epSd"] += extraSeeds;

    instance_destroy();
}