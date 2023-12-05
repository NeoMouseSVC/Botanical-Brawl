
// positions for the seed icons
var pos_parsnipSeed = [1646.054, 143.2645];
var pos_tomSeed = [1646.054, 303.2381];
var pos_cornSeed = [1646.054, 463.2117];
var pos_harvestedParsnip = [1792, 160];
var pos_harvestedTom = [1792, 320];
var pos_harvestedCorn = [1792, 480]; 

var seedSprite = spr_seed; 

var seedScale = 5; // seed size
var plantScaleX = 1.64; // plant size
var plantScaleY = 1.592593; 

var textOffsetX = 55; // right
var textOffsetY = 40; // down

// Draw parsnip seed 
shader_set(shd_green); 
draw_sprite_ext(seedSprite, 0, pos_parsnipSeed[0], pos_parsnipSeed[1], seedScale, seedScale, 0, c_white, 1);
shader_reset(); // Deactivate shader
draw_text(pos_parsnipSeed[0] + textOffsetX, pos_parsnipSeed[1] + textOffsetY, string(global.inventory[? "parsnipSd"]));

// Draw tomato seed 
shader_set(shd_red); 
draw_sprite_ext(seedSprite, 0, pos_tomSeed[0], pos_tomSeed[1], seedScale, seedScale, 0, c_white, 1);
shader_reset(); 
draw_text(pos_tomSeed[0] + textOffsetX, pos_tomSeed[1] + textOffsetY, string(global.inventory[? "tomSd"]));

// Draw the corn seed
draw_sprite_ext(seedSprite, 0, pos_cornSeed[0], pos_cornSeed[1], seedScale, seedScale, 0, c_white, 1);
draw_text(pos_cornSeed[0] + textOffsetX, pos_cornSeed[1] + textOffsetY, string(global.inventory[? "cornSd"]));

// Draw parsnip seed
draw_sprite_ext(spr_parsnip, 0, pos_harvestedParsnip[0], pos_harvestedParsnip[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedParsnip[0] + textOffsetX, pos_harvestedParsnip[1] + textOffsetY, string(global.inventory[? "harvestedParsnip"]));

// Draw harvested tomato 
draw_sprite_ext(spr_tom, 0, pos_harvestedTom[0], pos_harvestedTom[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedTom[0] + textOffsetX, pos_harvestedTom[1] + textOffsetY, string(global.inventory[? "harvestedTom"]));

// Draw harvested corn 
draw_sprite_ext(spr_corn, 0, pos_harvestedCorn[0], pos_harvestedCorn[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedCorn[0] + textOffsetX, pos_harvestedCorn[1] + textOffsetY, string(global.inventory[? "harvestedCorn"]));



if (mouse_check_button_pressed(mb_left)) {
    var mx = mouse_x;
    var my = mouse_y;

    // Check if the click is within the bounds of a seed icon and if there are seeds available
    if (global.inventory[? "parsnipSd"] > 0 && point_in_rectangle(mx, my, pos_parsnipSeed[0], pos_parsnipSeed[1], pos_parsnipSeed[0] + 32, pos_parsnipSeed[1] + 32)) {
        global.selectedSeed = obj_parsnipSd;
    }
    else if (global.inventory[? "tomSd"] > 0 && point_in_rectangle(mx, my, pos_tomSeed[0], pos_tomSeed[1], pos_tomSeed[0] + 32, pos_tomSeed[1] + 32)) {
        global.selectedSeed = obj_tomSd;
    }
    else if (global.inventory[? "cornSd"] > 0 && point_in_rectangle(mx, my, pos_cornSeed[0], pos_cornSeed[1], pos_cornSeed[0] + 32, pos_cornSeed[1] + 32)) {
        global.selectedSeed = obj_cornSd;
    }
}