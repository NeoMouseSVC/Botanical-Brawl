if (instance_exists(id)) {

    global.inventory[? "harvestedParsnip"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory[? "parsnipSd"] += extraSeeds;

    instance_destroy();
}