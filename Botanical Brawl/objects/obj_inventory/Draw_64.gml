// positions for the seed icons
var pos_parsnipSeed = [1646.054, 144];
var pos_tomSeed = [1646.054, 300];
var pos_cornSeed = [1646.054, 470];
var pos_pkSeed = [1646.054, 620]; 
var pos_epSeed = [1646.054, 780]; 

//position for plant icons
var pos_harvestedParsnip = [1800, 144];
var pos_harvestedTom = [1800, 320];
var pos_harvestedCorn = [1800, 470];
var pos_harvestedPK = [1800, 630]; 
var pos_harvestedEP = [1800, 790];

var seedSprite = spr_seed; 

var seedScale = 5; // seed size
var plantScaleX = 1.64; // plant size
var plantScaleY = 1.592593; 

var textOffsetX = 30; // right
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

// Draw pumpkin seed 
shader_set(shd_orange); 
draw_sprite_ext(seedSprite, 0, pos_pkSeed[0], pos_pkSeed[1], seedScale, seedScale, 0, c_white, 1);
shader_reset();
draw_text(pos_pkSeed[0] + textOffsetX, pos_pkSeed[1] + textOffsetY, string(global.inventory[? "pkSd"]));

//Draw eggplant seed
shader_set(shd_purple); 
draw_sprite_ext(seedSprite, 0, pos_epSeed[0], pos_epSeed[1], seedScale, seedScale, 0, c_white, 1);
shader_reset();
draw_text(pos_epSeed[0] + textOffsetX, pos_epSeed[1] + textOffsetY, string(global.inventory[? "epSd"]));

// Draw harvested parsnip
draw_sprite_ext(spr_parsnip, 0, pos_harvestedParsnip[0], pos_harvestedParsnip[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedParsnip[0] + textOffsetX, pos_harvestedParsnip[1] + textOffsetY, string(global.inventory[? "harvestedParsnip"]));

// Draw harvested tomato 
draw_sprite_ext(spr_tom, 0, pos_harvestedTom[0], pos_harvestedTom[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedTom[0] + textOffsetX, pos_harvestedTom[1] + textOffsetY, string(global.inventory[? "harvestedTom"]));

// Draw harvested corn 
draw_sprite_ext(spr_corn, 0, pos_harvestedCorn[0], pos_harvestedCorn[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedCorn[0] + textOffsetX, pos_harvestedCorn[1] + textOffsetY, string(global.inventory[? "harvestedCorn"]));

// Draw harvested pumpkin
draw_sprite_ext(spr_pumpkin, 0, pos_harvestedPK[0], pos_harvestedPK[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedPK[0] + textOffsetX, pos_harvestedPK[1] + textOffsetY, string(global.inventory[? "harvestedPK"]));

// Draw harvested Eggplant 
draw_sprite_ext(spr_eggplant, 0, pos_harvestedEP[0], pos_harvestedEP[1], plantScaleX, plantScaleY, 0, c_white, 1);
draw_text(pos_harvestedEP[0] + textOffsetX, pos_harvestedEP[1] + textOffsetY, string(global.inventory[? "harvestedEP"]));

if (mouse_check_button_pressed(mb_left)) { //left pressed event wasnt working
    var mx = mouse_x;
    var my = mouse_y;

   
    var clickAreaWidth = 64; 
    var clickAreaHeight = 64;

    if (global.inventory[? "parsnipSd"] > 0 && point_in_rectangle(mx, my, pos_parsnipSeed[0], pos_parsnipSeed[1], pos_parsnipSeed[0] + clickAreaWidth, pos_parsnipSeed[1] + clickAreaHeight)) {
        global.selectedSeed = obj_parsnipSd;
		audio_play_sound(snd_clickseeds,2,false)
    }
    else if (global.inventory[? "tomSd"] > 0 && point_in_rectangle(mx, my, pos_tomSeed[0], pos_tomSeed[1], pos_tomSeed[0] + clickAreaWidth, pos_tomSeed[1] + clickAreaHeight)) {
        global.selectedSeed = obj_tomSd;
		audio_play_sound(snd_clickseeds,2,false)
    }
    else if (global.inventory[? "cornSd"] > 0 && point_in_rectangle(mx, my, pos_cornSeed[0], pos_cornSeed[1], pos_cornSeed[0] + clickAreaWidth, pos_cornSeed[1] + clickAreaHeight)) {
        global.selectedSeed = obj_cornSd;
		audio_play_sound(snd_clickseeds,2,false)
    } 
	else if (global.inventory[? "pkSd"] > 0 && point_in_rectangle(mx, my, pos_pkSeed[0], pos_pkSeed[1], pos_pkSeed[0] + clickAreaWidth, pos_pkSeed[1] + clickAreaHeight)) {
		global.selectedSeed = obj_pkSd;
		audio_play_sound(snd_clickseeds,2,false)
	} 
	else if (global.inventory[? "epSd"] > 0 && point_in_rectangle(mx, my, pos_epSeed[0], pos_epSeed[1], pos_epSeed[0] + clickAreaWidth, pos_epSeed[1] + clickAreaHeight)) {
		global.selectedSeed = obj_epSd;
		audio_play_sound(snd_clickseeds,2,false)
	}
}

draw_sprite(spr_shovel, 0, mouse_x, mouse_y);

