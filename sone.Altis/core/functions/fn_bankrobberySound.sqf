/*
    File: fn_tazeSound.sqf
    Author: Unknown
    Edited: SimZor 06.07.2016
    Description:

*/
private["_source"];
_source = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _source) exitWith {};
_source say3D "bankrobberySound";