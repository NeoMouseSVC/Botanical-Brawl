if (instance_exists(id)) {

    global.inventory[? "harvestedPK"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory[? "pkSD"] += extraSeeds;

    instance_destroy();
}