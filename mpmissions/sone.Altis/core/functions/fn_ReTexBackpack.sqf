/*
	File: fn_ReTexBackpack.sqf
	Author: Ciaran 16/08/2014
	
	Description: Locally overrides a remote unit's texture (call via MP framework)  

*/
_this spawn {
	private ["_unit", "_tex"];
	_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
	_tex = [_this, 1, "", [""]] call BIS_fnc_param;
	_expect = [_this, 2, "", [""]] call BIS_fnc_param;

	if (isNull _unit || _expect == "") exitWith {};
	waitUntil {backpack _unit == _expect}; //CL - WAIT FOR THE NEW CLOTHING TO UPDATE ON ALL CLIENTS.
	(unitBackpack _unit) setObjectTexture [0,_tex];
};