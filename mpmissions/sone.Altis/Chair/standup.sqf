detach player;
[player,"","switch",0] remoteExec ["life_fnc_animSync",0];
if (!isNull life_sitting) then { deleteVehicle life_sitting; };
life_sitting = objNull;

_pos = getPosASL player;
_dir = getDir player;
player setPosASL [(_pos select 0) + (0.5 * sin(_dir)), (_pos select 1) + (0.5 * cos(_dir)), _pos select 2];
