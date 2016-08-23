//Release at release marker
private["_releaseMarker"];_releaseMarker = getMarkerPos "jail_marker";

if(player distance (_releaseMarker) < 5) then{	player addUniform life_prison_uniform;	

//Adds the saved clothes
player addBackpack life_prison_backpack;	
player addHeadgear life_prison_headgear;	
player addVest life_prison_vest;

license_civ_rookieBountyHunter = false; // Removes Bounty Hunters License after serving time in prison.
license_civ_competentBountyHunter = false; // Removes Bounty Hunters License after serving time in prison.
license_civ_masterBountyHunter = false; // Removes Bounty Hunters License after serving time in prison.

hint "You have been released. Make sure you behave!"};
