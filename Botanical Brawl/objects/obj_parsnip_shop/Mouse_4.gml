if (instance_exists(id)) {

    global.inventory2[? "harvestedParsnip"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory2[? "parsnipSd"] += extraSeeds;

    instance_destroy();
}