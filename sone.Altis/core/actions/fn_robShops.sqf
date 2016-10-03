#include "..\..\script_macros.hpp"
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;

if(side _robber != civilian) exitWith { hint "You cannot rob this station." };
if(_robber distance _shop > 5) exitWith { hint "You need to be within 5m of the cashier to rob him." };

_kassa = 1000;
if (life_action_inUse) exitWith { hint "You're robbing the gas station already." };
if (vehicle player != _robber) exitWith { hint "Get out of your vehicle." };

if !(alive _robber) exitWith {};
if (currentWeapon _robber isEqualTo "") exitWith { hint "You do not threaten me! Get out of here you hobo!" };
if (_kassa isEqualTo 0) exitWith { hint "There is no cash in the register" };

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{hint "Not enough police officers online !";};

life_action_inUse = true;
_kassa = 10000 + round(random 60000);
_shop removeAction _action;
_chance = random(100);
if(_chance >= 50) then {
	hint "The cashier has triggered the silent Alarm, the Cops are on the way !";
	[1,"ATTENTION! - Gas station is being robbed!"] remoteExecCall ["life_fnc_broadcast",west];
	[_veh,"robstationSound"] remoteExec ["life_fnc_say3D",RANY];
	_Pos = position player;
	_marker = createMarker ["Marker200", _Pos];
	"Marker200" setMarkerColor "ColorRed";
	"Marker200" setMarkerText "!ATTENTION! Robbery in progres !ATTENTION!";
	"Marker200" setMarkerType "mil_warning";
};


disableSerialization;
13 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (1%1)...","%"];
_progress progressSetPosition 0.006;
_cP = 0.006;
 
if(life_action_inUse) then
{
	while{true} do
	{
		sleep 3;
		_cP = _cP + 0.006;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (%1%2)...",round(_cP * 100),"%"];			
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 10.5) exitWith { };
		if!(alive _robber) exitWith {};
	};
	if!(alive _robber) exitWith { life_action_inUse = false;if(_chance >= 10) then {deleteMarker "Marker200";};};
	if(_robber distance _shop > 10.5) exitWith {life_action_inUse = false;if(_chance >= 10) then {deleteMarker "Marker200";}; hint "You need to stay within 10m to Rob registry! - Now the registry is locked!"; 5 cutText ["","PLAIN"];};
	13 cutText ["","PLAIN"];

	titleText[format["You have stolen $%1, now get away before the cops arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
	if(_chance >= 10) then {deleteMarker "Marker200";};
	life_cash = life_cash + _kassa;

	life_action_inUse = false;
	life_use_atm = false;
	sleep (30 + random(180));
	life_use_atm = true;
	if!(alive _robber) exitWith {};
		if (life_HC_isActive) then {
			[getPlayerUID _robber,name _robber,"27"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
		} else {
			[getPlayerUID _robber,name _robber,"27"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
		};
};
sleep 300;
_action = _shop addAction["Rob the Gas Station",life_fnc_robShops];