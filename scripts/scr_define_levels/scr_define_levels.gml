// Declare the levels globally
global.levels = undefined;
global.current_level = undefined;

// Define the scr_define_levels function
function scr_define_levels() {
    // Ensure these rooms exist in your project and are defined in the Room Editor
    // Do not redefine the room variables; instead, just reference them directly

    // Define level structures
	var level0 = {
        room: rm_title, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 0, hp: 10},
            {type: obj_enemy2, count: 0, hp: 15}
        ],
        powerups: [],
		dialogue: undefined
    };
	
    var level1 = {
        room: rm_level1, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 2, hp: 10},
            {type: obj_enemy2, count: 0, hp: 15}
        ],
        powerups: [global.WEAPON_TYPE.SHOTGUN],
		dialogue: "Intro"
    };

    var level2 = {
        room: rm_level2, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 5, hp: 20},
            {type: obj_enemy2, count: 1, hp: 25}
        ],
        powerups: [global.WEAPON_TYPE.LASER],
		dialogue: undefined
    };
	
    var level3 = {
        room: rm_level3, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 8, hp: 30},
            {type: obj_enemy2, count: 1, hp: 35}
        ],
        powerups: [global.WEAPON_TYPE.LASER, global.WEAPON_TYPE.SHOTGUN],
		dialogue: undefined
    };
	
	var level4 = {
        room: rm_level4, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 10, hp: 30},
            {type: obj_enemy2, count: 2, hp: 35}
        ],
        powerups: [global.WEAPON_TYPE.LASER, global.WEAPON_TYPE.SHOTGUN],
		dialogue: undefined
    };

	var level5 = {
        room: rm_level5, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 12, hp: 30},
            {type: obj_enemy2, count: 2, hp: 35}
        ],
        powerups: [global.WEAPON_TYPE.LASER, global.WEAPON_TYPE.SHOTGUN],
		dialogue: undefined
    };

	var level6 = {
        room: rm_level6, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 15, hp: 30},
            {type: obj_enemy2, count: 3, hp: 35}
        ],
        powerups: [global.WEAPON_TYPE.LASER, global.WEAPON_TYPE.SHOTGUN],
		dialogue: undefined
    };


	//Victory Level (should be last)
	var levelvictory = {
        room: rm_victory, // Reference the room directly
        enemies: [
            {type: obj_enemy1, count: 0, hp: 30},
            {type: obj_enemy2, count: 0, hp: 35}
        ],
        powerups: [],
		dialogue: "Victory"
    };		
    // Add more levels as needed
    global.levels = [level0, level1, level2, level3, level4, level5, level6, levelvictory];

    global.current_level = 0;
    global.score = 0; // Initialize score
}
