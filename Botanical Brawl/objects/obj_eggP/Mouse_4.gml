if (instance_exists(id)) {

    global.inventory[? "harvestedEP"] += 1;
    var extraSeeds = irandom_range(1, 5);
    global.inventory[? "epSd"] += extraSeeds;
	audio_play_sound(snd_pickplant,2,false)

    instance_destroy();
}