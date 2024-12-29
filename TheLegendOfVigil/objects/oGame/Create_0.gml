/// @description Initialize and Global variables

//Randomize the seed
randomize();

//Volume
global.volume = 0.7;
audio_master_gain(global.volume);

//Keybindings for keyboard
global.keyboard_map = ds_map_create();
ds_map_add(global.keyboard_map, "Up", ord("W"))
ds_map_add(global.keyboard_map, "Down", ord("S"))
ds_map_add(global.keyboard_map, "Left", ord("A"))
ds_map_add(global.keyboard_map, "Right", ord("D"))
ds_map_add(global.keyboard_map, "Jump", vk_space)
ds_map_add(global.keyboard_map, "Climb", vk_lcontrol)
ds_map_add(global.keyboard_map, "Attack", ord("J"))
ds_map_add(global.keyboard_map, "Ranged attack", ord("H"))
ds_map_add(global.keyboard_map, "Horn attack", ord("O"))
ds_map_add(global.keyboard_map, "Bounce attack", ord("K"))
ds_map_add(global.keyboard_map, "Dash", ord("L"))
ds_map_add(global.keyboard_map, "Heal", ord("I"))


//Pause game
global.gamePaused = false;
global.key_pause = false;
gamePausedImageSpeed = 0;

//Spawn variable
global.spawn = -1;

//Hitstun
global.hitstun = false;

//Player HP
global.playerHealthMax = 3; 
global.playerHealth = global.playerHealthMax;
global.healingSpeed = 60;

//Player Energy
global.playerEnergyMax = 100;
global.playerEnergy = global.playerEnergyMax;

//Collected coins
global.coins = 0;
global.coinsThisRoom = 0;

//Arrays over coins on each level, 0 = coin not collected, 1 = coin collected.
global.coins_level0 = [0,0,0];
global.coins_level1 = [0,0,0,0,0,0];
global.coins_level2 = [0,0,0,0,0,0];
global.coins_level3 = [0,0,0,0,0,0];


//List of items in Skillshop, 0 means bought/not available, 1 means available
global.skill_menu = array_create(MENU_SLOTS, 0);

//Player attackstrength
global.attackStrength = 1;

//Backup for player direction
global.playerDirection = 0;

//UI
global.UI = instance_create_layer(0,0,layer,oUI);

//Power up variables
global.hasPowerAttack = false;
global.hasPowerBounce = false;
global.hasPowerClimb = false;
global.hasPowerDash = false;
global.hasPowerAttackRanged = false;
global.hasPowerAttackHorn = false;

//Level status
global.cleared_stage_0 = false;
global.cleared_stage_1 = false;
global.cleared_stage_2 = false;
global.cleared_stage_3 = false;
global.cleared_stage_4 = false;

//Current level
global.currentLevel = 0;

//Music variables
global.currentMusic = mMenu;

//variables for creating cinematic bars.
global.barsRemoved = false;
global.percent = 0;
global.barsDone = false;
//global.bar_height = 75;

//Variable for pausing during dialogue
global.dialoguePauseToggle = false;

//Variables for watched dialogues, 1 = seen, 0 = not seen
global.dialogues_level0 = [0,0,0];
global.dialogues_level1 = [0,0,0,0,0,0];
global.dialogues_level2 = [0,0,0,0,0,0,0];
global.dialogues_level3 = [0,0,0,0,0,0];

//Levers
global.levers = [0,0];

//Load saved configurations
LoadConfig();

