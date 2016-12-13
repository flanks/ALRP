/*
	File: jip.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	JIP functionality for JIP required things like vehicles.
*/

//Handle our uniforms
{
	if (_x != player) then {
		[_x, false] call life_fnc_HandleUniforms;
	};
} forEach playableUnits;