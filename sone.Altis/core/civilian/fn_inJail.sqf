//Save Clothes for when getting out of prison

life_prison_backpack = backpack player;
life_prison_uniform = uniform player;
life_prison_headgear = headgear player;
life_prison_vest = vest player;

sleep 1;

//Strips down the player
removeUniform player;
removeBackpack player;
removeHeadgear player;
removeVest player;

//Add prison uniform
player addUniform "U_C_Scientist";

//Add food and drinks
[true,"donuts",1] call life_fnc_handleInv;
 
[true,"coffee",1] call life_fnc_handleInv;
 

//Call playerSkins
[] call life_fnc_playerSkins;
