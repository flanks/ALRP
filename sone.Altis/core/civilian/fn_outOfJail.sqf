//Release at release marker
private["_releaseMarker"];
_releaseMarker = getMarkerPos "jail_marker";


//Strips down the player
removeUniform player;
//Adds the saved clothes
player addHeadgear life_prison_uniform;
player addBackpack life_prison_backpack;	
player addHeadgear life_prison_headgear;	
player addVest life_prison_vest;


hint "You have been released. Make sure you behave!";
