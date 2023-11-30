growthTimer += 1;


if (growthTimer >= growthDuration) {
    growthStage += 1;
    if (growthStage > 2) {
        growthStage = 2;  
    }
    growthTimer = 0;  
}


switch (growthStage) {
    case 0:
        sprite_index = spr_seedling;
        break;
    case 1:
        sprite_index = spr_middleGrowth;
        break;
    case 2:
        sprite_index = spr_fullyGrown;
        break;
}
















