#include "..\..\script_macros.hpp"
/*
	File: fn_teleportPlayer.sqf
	Author: ColinM9991
 
	Description: Freezes selected player
*/
private["_admin"];
_admin = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_newPos = GetPosATL _admin;

if(vehicle player isEqualTo player) then {
	player setPos _newPos;
} else { 
	(vehicle player) setPos _newPos;
};
//hint format[localize "STR_NOTF_TPD",_admin getVariable["realname",name _admin]];
//[[1,format[localize "STR_ANOTF_TPD",profileName]],"life_fnc_broadcast",_admin,false] spawn life_fnc_MP;