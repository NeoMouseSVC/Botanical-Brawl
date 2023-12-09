draw_self();

var offset_x = 160;
var offset_y = 190;

var hb_x = x - sprite_width / 2 + offset_x;
var hb_y = y + sprite_height / 2 + offset_y;
var hb_width = sprite_width;
var hb_height = 10;

// Draw the health bar background
draw_set_color(c_black);
draw_rectangle(hb_x, hb_y, hb_x + hb_width, hb_y + hb_height, true);

// Determine the width of the health portion of the bar
var health_width;
if (global.cheatUnlimitedHealth) {
    // If cheat is active, show the health bar as full
    health_width = hb_width;
} else {
    // Otherwise, calculate it based on current health
    health_width = (health / max_health) * hb_width;
}

// Draw the health portion of the bar
draw_set_color(health_bar_color);
draw_rectangle(hb_x, hb_y, hb_x + health_width, hb_y + hb_height, false);

// Reset the drawing color to white
draw_set_color(c_white);
