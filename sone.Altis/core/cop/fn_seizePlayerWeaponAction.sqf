/*
    File: fn_seizePlayerWeaponAction.sqf
    Author: Skalicon
    Description: Removes the players weapons client side
	Updated by: Dexter
	
	Modified by: SimZor
	Modified Date: 23.06.2016
*/

removeAllWeapons player;
[] call life_fnc_saveGear;
[] call life_fnc_syncData; //Should make weapon remove persistent
[] call life_fnc_LoadGear;
titleText["Your weapons were seized by the police.","PLAIN"];