_unit = cursorTarget;
if (!isPlayer _unit || !alive _unit || !(_unit getVariable ["restrained",false])) exitWith { hint "The target is not restrained, nor a player."; };

if(!([false,"blindfold",1] call life_fnc_handleInv)) exitWith {};

systemChat format["You have blindfolded %1.", name _unit];

[player] remoteExec ["life_fnc_blindfolded",_unit];
