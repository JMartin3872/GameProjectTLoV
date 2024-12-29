/// @description Setup variables

#region //Code to change for each cutscene.

/*Here goes the text for the cutscene, OBS!! Important:
	Make a new row for each camera-control- object that you have in your cutscene.
	If you don't want any text, just leave "" for that row.
*/
cutscene_text[0][0] = "Here we test the text function of our cutscenes";
cutscene_text[0][1] = "Does it seem to work well?";

cutscene_text[1][0] = "testing testing";
cutscene_text[1][1] = "HOORAY!!";
cutscene_text[1][2] = "The third line for testing purposes";

cutscene_text[2][0] = "This is the end";


//Room to go to after cutscene, change depending on where you are supposed to go.
target_room = Room0_1

/*List of the camera-targets you are using. OBS OBS OBS!
	Make sure you always end the list with oCameraCutsceneTargetEnd
	after the last target element you use, eg if you have 2 targets the list
	should have targets for element 0 and 1 while the 2nd and last element should
	be oCameraCutsceneTargetEnd.*/
	
	
//ALSO VERY IMPORTANT! YOU CAN'T PUT CAMERA_TARGETS TO CLOSE TO THE EDGES OF ROOMS BECAUSE 
//THEN IT WON'T REACH IT TARGET AND THEN NEXT TEXT WON'T BE PROMPTED.
	
	
next_camera_targets[0] = oCameraCutsceneTarget2;
next_camera_targets[1] = oCameraCutsceneTarget3;
next_camera_targets[2] = oCameraCutsceneTargetEnd;

#endregion

//Counter variable for the camera-targets
camera_target_counter = 0;

//Speed of text output
spd = 0.5;

//How many letters we are currently showing
letters = 0;

//Which line of text we are on.
currentline = 0;
currenttext = 0;

//Length of the current textline.
length = string_length(cutscene_text[currenttext][currentline]);

//Text to be printed to the screen, will change as we print out our text.
text = "";
