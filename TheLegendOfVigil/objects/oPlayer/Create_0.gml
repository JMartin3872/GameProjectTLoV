//Player state
state = PlayerStateFree;
lastState = PlayerStateFree;

//Variables for movement
hSpeed = 0;
vSpeed = 0;
externalHSpeed = 0;
externalVSpeed = 0;
lowestMoveSpeed = 0.4;
lowestClimbSpeed = 0.4;

//Checking if we are standing near a sign
nearSign = false;

//Variables for knockback
sourceDirection = 0;
sourceLength = 0;
startPositionKnockback = 0;
backupDirection = direction;


//if grav is changed then it must be changed under hitStunScript as well!
grav = 0.3;
walkSpeed = 4;
jumpHeight = -8.5;

//Variable for checking if controller is being used
controller = 0;

//Should player have control over player character
hascontrol = true;

//Variables for when player is damaged
invulnerable = 0;
flash = 0;
flashShader = shWhite;

//Variables for climbing
isClimbing = false;
canClimb = 0;
reach_climb = 10;
climbSpeed = 1.5;
wallJumpHeight = - 4;
wallJumpCountdown = 6;

climbIdleCounter = 150;
climbUpCounter = 4;

//Variables for crouching
canCrouch = 0;

//Variables for healing
healingCost = 33;
canAffordHeal = false;
healingEnergyDrain = 0;

//Variables for ranged attack
has_fired_projectile = false;
ranged_attack_cost = 20;
horn_attack_cost = 50;

//Variables for bounce attack
canBounceAttack = 0;
bounceAttackCooldown = 5;

//Variables for dashing
dashLength = 200;
dashSpeed = 6;
dashDone = true;
canDash = -1;
last_dash_x = 0;
last_dash_y = 0;
touched_wall = false;

//Variables defined for jumping and variable to see if player landed.
key_jump = 0;
canJump = 0;
playerLanded = false;

//Varibles regarding crouching among other things
onThinPlatform = false;
glideResistance = 0.95;

//Initialization of input variables
key_left = 0;
key_right = 0;
key_jump = 0;
key_jump_held = 0;
key_up = 0;
key_down = 0;
key_climb = 0;
key_climb_release = 0;
key_attack = 0;
key_attack_ranged = 0;
key_attack_horn = 0;
key_attack_bounce = 0;
key_dash = 0;
key_heal = 0;
key_heal_release = 0;
