#include "..\..\script_macros.hpp"
/*
    File: fn_adminarrestDialog_Arrest.sqf
    Added: SimZor 2016.07.06
*/
if (FETCH_CONST(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_unit","_time"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if (isNil "_unit") exitWith {};
if (isNull _unit) exitWith {};
if (_unit == player) exitWith {hint localize "STR_ANOTF_Error";};

_time = ctrlText 1400; //Get minutes

if(! ([_time] call TON_fnc_isnumber)) exitWith
{
	hintSilent "You have to enter a number.";
};

_time = parseNumber _time; //requested number
_time = round _time;

[cursorTarget, _time] call life_fnc_adminarrestAction;


[player, _time] remoteExec ["life_fnc_adminarrestAction",_unit];
closeDialog 0; 
