/// @description Collision with oEnemy1 or oEnemy2

if (!invincible && !rematerializing) {
    // Decrement global lives
    global.lives -= 1;
	
	audio_play_sound(snd_explosion, 1, false)

    // Create explosion effect
    instance_create_layer(x, y, "Effects", obj_explosion);

    // Respawn at the starting position
    x = start_x;
    y = start_y;
    speed_x = 0;
    speed_y = 0;

    // Set rematerialization state
    rematerializing = true;
    rematerialize_timer = 60; // 1 second of rematerialization (assuming 60 fps)

    // Check if lives are depleted
    if (global.lives <= 0) {
        // Handle game over logic here (e.g., restart the game, show game over screen, etc.)
        audio_stop_sound(snd_intro_music)
		audio_play_sound(snd_gameover_lose, 1, false);
		show_message("Game Over!");
        instance_destroy();
		game_restart()
    }

    // Destroy the enemy
    instance_destroy(other);

	// Check if all enemies are defeated
    var all_enemies_defeated = true;
    for (var i = 0; i < array_length(global.levels[global.current_level].enemies); i++) {
        var enemy_type = global.levels[global.current_level].enemies[i].type;
        if (instance_number(enemy_type) > 0) {
            all_enemies_defeated = false;
            break;
        }
    }

    if (all_enemies_defeated) {
        // Transition to the next level
        scr_next_level();
    }
	
}
