#include "..\..\script_macros.hpp"
/*
    File: fn_adminarrestAction.sqf
    Author:
    Modified by: SimZor 2016.07.06
    Description:
    Arrests the targeted person.
*/
private["_unit","_id","_time"];
_unit = param [0,objNull,[objNull]];
_time = [_this,1,30] call BIS_fnc_param;

detach _unit;
[_unit,false,_time] remoteExecCall ["life_fnc_adminjail",_unit];
[0,"STR_NOTF_Arrested_1_admin",true, [_unit getVariable ["realname",name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",RCLIENT];

if (LIFE_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
    if (LIFE_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format ["arrested %1",_unit getVariable ["realname",name _unit]];
    } else {
        advanced_log = format ["Administrator %1 - %2 arrested %3 and sent him to admin prison for being naughty.",profileName,(getPlayerUID player),_unit getVariable ["realname",name _unit]];
    };
    publicVariableServer "advanced_log";
};