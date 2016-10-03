#include "..\..\script_macros.hpp"
/*
File: fn_copChirp.sqf
Author: [GSN] Pager
Description:
"Chirp" Siren Controller
*/
private["_veh"];
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_tone = [_this,1,"yelp",[""]] call BIS_fnc_param;
if(isNull _veh) exitWith {};
if(count (crew (_veh)) == 0) exitWith {};
if(!alive _veh) exitWith {};
_veh say3D _tone;