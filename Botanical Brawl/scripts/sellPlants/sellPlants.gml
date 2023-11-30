var ROSE_PRICE = 10;
var VINE_PRICE = 5;

function sellPlants(){
    var totalEarnings = 0;

    var plantTypes = ds_map_keys(global.inventory);
    for (var i = 0; i < array_length_1d(plantTypes); i++) {
        var plantType = plantTypes[i];
        var plantCount = global.inventory[? plantType];
        
        // Calculate earnings 
        var earnings = 0;
        switch (plantType) {
            case "Rose":
                earnings = plantCount * ROSE_PRICE;
                break;
            case "Vine":
                earnings = plantCount * VINE_PRICE;
                break;
            // Add cases for other plants
            default:
                break;
        }

        totalEarnings += earnings;

        global.inventory[? plantType] = 0;
    }

    // Add the total earnings to the global currency
    global.currency += totalEarnings;
}

