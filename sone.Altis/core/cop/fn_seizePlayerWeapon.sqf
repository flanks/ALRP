/*
    File: fn_seizePlayerWeapon.sqf
    Author: Skalicon
	Edited by: Dexter
	
	Modified by: SimZor
	Edited Date: 23.06.2016 21:12
*/
private["_unit"];

_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};


[player] remoteExec ["life_fnc_seizePlayerWeaponAction",_unit];

hint "Weapons have been seized.";
