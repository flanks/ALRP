/*
    Filename: fn_handcuffSound.sqf
    Author: Simon "SimZor" Arledal
    Date Created: 07.06.2016

*/
private["_source"];
_source = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _source) exitWith {};
_source say3D "handcuffSound";