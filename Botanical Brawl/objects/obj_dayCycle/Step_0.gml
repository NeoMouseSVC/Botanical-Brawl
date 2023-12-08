/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("M"))){pause = !pause}
if (pause) exit;


seconds += time_increment
minute = seconds/60
hour = minute/60

darkness = hour/24

if hour >= 24{
	cornSale = global.inventory2[? "harvestedCorn"] * 100
	tomSale =  global.inventory2[? "harvestedTom"] * 200
	parsnipSale = global.inventory2[? "harvestedParsnip"] * 20
	
	money = cornSale + tomSale + parsnipSale
	
	global.inventory2[? "harvestedCorn"] = 0
	global.inventory2[? "harvestedTom"] = 0
	global.inventory2[? "harvestedParsnip"] = 0
	seconds = 0
	day += 1
	if day > 30{
		day = 1
		month += 1
	} if month > 12 {
		month = 1
		year += 1
		}

}







