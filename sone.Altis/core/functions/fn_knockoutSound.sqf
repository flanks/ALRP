/*
    File: fn_knockoutSound.sqf
    Author:
    Edited: SimZor 05.07.2016
    Description:

*/
private["_source"];
_source = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _source) exitWith {};
_source say3D "knockoutSound";