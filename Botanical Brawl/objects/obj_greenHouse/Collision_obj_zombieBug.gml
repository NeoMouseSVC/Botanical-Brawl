health -= 10; 


if (health > max_health * 0.5) {
    health_bar_color = c_lime;
} else if (health > max_health * 0.25) {
    health_bar_color = c_orange;
} else {
    health_bar_color = c_red;
}


if (health <= 0) {
    room_goto(Lose); 
}



















