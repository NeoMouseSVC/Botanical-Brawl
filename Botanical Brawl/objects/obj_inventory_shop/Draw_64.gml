
// positions for the seed icons
var pos_parsnipSeed = [1646.054, 144];
var pos_tomSeed = [1646.054, 300];
var pos_cornSeed = [1646.054, 470];


//position for plant icons
var pos_harvestedParsnip = [1800, 144];
var pos_harvestedTom = [1800, 320];
var pos_harvestedCorn = [1800, 470]; 

var seedSprite = spr_seed; 

var seedScale = 5; // seed size
var plantScaleX = 1.64; // plant size
var plantScaleY = 1.592593; 

var textOffsetX = 31; // right
var textOffsetY = 40; // down

// Draw parsnip seed 
shader_set(shd_green); 
draw_sprite_ext(seedSprite, 0, pos_parsnipSeed[0], pos_parsnipSeed[1], seedScale, seedScale, 0, c_white, 1);
shader_reset(); // Deactivate shader
draw_text(pos_parsnipSeed[0] + textOffsetX, pos_parsnipSeed[1] + textOffsetY, string(global.inventory2[? "parsnipSd"]));

// Draw tomato seed 
shader_set(shd_red); 
draw_sprite_ext(seedSprite, 0, pos_tomSeed[0], pos_tomSeed[1], seedScale, seedScale, 0, c_white, 1);
shader_reset(); 
draw_text(pos_tomSeed[0] + textOffsetX, pos_tomSeed[1] + textOffsetY, string(global.inventory2[? "tomSd"]));

// Draw the corn seed
draw_sprite_ext(seedSprite, 0, pos_cornSeed[0], pos_cornSeed[1], seedScale, seedScale, 0, c_white, 1);
draw_text(pos_cornSeed[0] + textOffsetX, pos_cornSeed[1] + textOffsetY, string(global.inventory2[? "cornSd"]));

// Draw parsnip seed
draw_sprite_ext(spr_parsnip, 0, pos_harvestedParsnip[0], pos_harvestedParsnip[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedParsnip[0] + textOffsetX, pos_harvestedParsnip[1] + textOffsetY, string(global.inventory2[? "harvestedParsnip"]));

// Draw harvested tomato 
draw_sprite_ext(spr_tom, 0, pos_harvestedTom[0], pos_harvestedTom[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedTom[0] + textOffsetX, pos_harvestedTom[1] + textOffsetY, string(global.inventory2[? "harvestedTom"]));

// Draw harvested corn 
draw_sprite_ext(spr_corn, 0, pos_harvestedCorn[0], pos_harvestedCorn[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedCorn[0] + textOffsetX, pos_harvestedCorn[1] + textOffsetY, string(global.inventory2[? "harvestedCorn"]));



if (mouse_check_button_pressed(mb_left)) { //left pressed event wasnt working
    var mx = mouse_x;
    var my = mouse_y;

   
    var clickAreaWidth = 64; 
    var clickAreaHeight = 64;

    if (global.inventory2[? "parsnipSd"] > 0 && point_in_rectangle(mx, my, pos_parsnipSeed[0], pos_parsnipSeed[1], pos_parsnipSeed[0] + clickAreaWidth, pos_parsnipSeed[1] + clickAreaHeight)) {
        global.selectedSeed = obj_parsnipSd_shop;
    }
    else if (global.inventory2[? "tomSd"] > 0 && point_in_rectangle(mx, my, pos_tomSeed[0], pos_tomSeed[1], pos_tomSeed[0] + clickAreaWidth, pos_tomSeed[1] + clickAreaHeight)) {
        global.selectedSeed = obj_tomSd_shop;
    }
    else if (global.inventory2[? "cornSd"] > 0 && point_in_rectangle(mx, my, pos_cornSeed[0], pos_cornSeed[1], pos_cornSeed[0] + clickAreaWidth, pos_cornSeed[1] + clickAreaHeight)) {
        global.selectedSeed = obj_cornSd_shop;
    }
}