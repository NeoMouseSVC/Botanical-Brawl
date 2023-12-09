// Assuming this is inside the left mouse click event of the sell button object
if (mouse_check_button_pressed(mb_left)) {
    var moneyPerParsnip = 10; 
    var moneyPerTomato = 15;
    var moneyPerCorn = 20;
    var moneyPerPumpkin = 25;
    var moneyPerEggplant = 30;

   
    var totalMoney = 0;
    totalMoney += global.inventory[? "harvestedParsnip"] * moneyPerParsnip;
    totalMoney += global.inventory[? "harvestedTom"] * moneyPerTomato;
    totalMoney += global.inventory[? "harvestedCorn"] * moneyPerCorn;
    totalMoney += global.inventory[? "harvestedPK"] * moneyPerPumpkin;
    totalMoney += global.inventory[? "harvestedEP"] * moneyPerEggplant;

   
    global.playerMoney += totalMoney;


    global.inventory[? "harvestedParsnip"] = 0;
    global.inventory[? "harvestedTom"] = 0;
    global.inventory[? "harvestedCorn"] = 0;
    global.inventory[? "harvestedPK"] = 0;
    global.inventory[? "harvestedEP"] = 0;
}




