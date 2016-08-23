/*
    File: fn_robstationSound.sqf
    Author:
    Added: SimZor 2016.07.06
    Description:

*/
private["_source"];
_source = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _source) exitWith {};
_source say3D "robstationSound";