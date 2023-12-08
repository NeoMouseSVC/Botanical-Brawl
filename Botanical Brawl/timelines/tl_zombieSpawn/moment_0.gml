if (global.spawnedEnemies < 20) {
    // Spawn the enemy
    instance_create_depth(x, y, 1, obj_zombieBug);
    global.spawnedEnemies += 1;
} else {
    // Stop the timeline if the maximum number has been reached
    timeline_running = false;
}
