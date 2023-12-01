sellingUp = false;

// Left Pressed Event for Up Arrow Button
if (mouse_x >= x && mouse_x <= x + sprite_width &&
    mouse_y >= y && mouse_y <= y + sprite_height) {
    sellingUp = true;
}

// Left Released Event for Up Arrow Button
if (sellingUp) {
    // Implement selling logic here (e.g., decrease inventory count and increase currency)
    sellingUp = false; // Reset the flag
}














