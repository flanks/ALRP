#include "..\..\script_macros.hpp"
/*
    File: fn_adminjail.sqf
    Author: Bryan "Tonic" Boardwine
    Modified by: SimZor 2016.07.06
*/
private ["_time"];
params [
    ["_unit",objNull,[objNull]],
    ["_bad",false,[false]]
];
_time = [_this,2,15,[0]] call BIS_fnc_param;

player setVariable ["restrained",false,true];
player setVariable ["Escorting",false,true];
player setVariable ["transporting",false,true];

titleText[localize "STR_Jail_AdminWarn","PLAIN"];
player setPos (getMarkerPos "admin_jail_marker");

if (_bad) then {
    waitUntil {alive player};
    sleep 1;
};

//Check to make sure they goto check
if (player distance (getMarkerPos "admin_jail_marker") > 1) then {
    player setPos (getMarkerPos "admin_jail_marker");
};

life_is_arrested = true;

[player,_bad,_time] remoteExecCall ["life_fnc_jailSys",RSERV];

[5] call SOCK_fnc_updatePartial;
