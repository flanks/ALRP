#include "..\..\script_macros.hpp"
/*
    File: fn_sirenLights.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Lets play a game! Can you guess what it does? I have faith in you, if you can't
    then you have failed me and therefor I lose all faith in humanity.. No pressure.
*/
private ["_vehicle","_trueorfalse"];
_vehicle = param [0,objNull,[objNull]];
if (isNull _vehicle) exitWith {}; //Bad entry!
if (!(typeOf _vehicle in ["B_MRAP_01_hmg_F","C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F","I_Quadbike_01_F","B_Quadbike_01_F","O_MRAP_02_F","I_Truck_02_covered_F","I_Heli_Transport_02_F","O_Heli_Transport_04_F","B_Heli_Light_01_F"])) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

_trueorfalse = _vehicle getVariable ["lights",false];

if (_trueorfalse) then {
    _vehicle setVariable ["lights",false,true];
} else {
    _vehicle setVariable ["lights",true,true];
    [_vehicle,0.22] remoteExec ["life_fnc_medicLights",RCLIENT];
};