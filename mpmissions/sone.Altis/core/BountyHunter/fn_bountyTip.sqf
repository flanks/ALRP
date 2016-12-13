/*
	File: fn_bountySelect.sqf
	Author: Ciaran Langton
	
	Description:
	Selects the player, then tells the bounty hunter where they are.
*/
private["_display","_list","_uid"];
disableSerialization;

_display = findDisplay 2400;
_list = _display displayCtrl 2402;
_data = lbData[2401,(lbCurSel 2401)];
_data = call compile format["%1", _data];
if(2500 > life_atmbank) exitWith {hint "You do not have enough money for a tipoff.";};
if(isNil "_data") exitWith {};
if(typeName _data != "ARRAY") exitWith {};
if(count _data == 0) exitWith {};

_uid = _data select 1;
_player = objNull;
{
	if(getPlayerUID _x == _uid) then {_player = _x;};
} forEach playableUnits;

if(isNull _player) exitWith {};

_closesttown = (nearestLocations [_player,["NameCityCapital","NameCity","NameVillage"],10000]) select 0;
_town_name = text _closesttown;
_town_pos = position _closesttown;

hint format["You got a tip saying that someone saw %1 near %2. %2 is %3M away from you. You payed the civilain $2500 for the tipoff.",_player getVariable["realname",name _player], _town_name, round(player distance _town_pos)];

life_atmbank = life_atmbank - 2500;