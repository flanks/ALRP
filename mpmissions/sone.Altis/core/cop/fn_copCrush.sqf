#include "..\script_macros.hpp"
/*
	File: fn_copCrush.sqf
	Author: Kevin Webb
	
	Description:
	Crushes the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_veh"];
_vehicle = cursorTarget;
_veh = typeOf _vehicle;
if(!(_veh in["I_G_Offroad_01_armed_F","O_MRAP_02_F"] || _vehicle getVariable["stolen",false])) then {
if(FETCH_CONST(life_coplevel) < 4) exitWith {hint "You are too low of a rank to use this option!"; }; };
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if(!alive _vehicle) exitWith {};

if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
[0,format["%1 your %2 is being crushed by the police!",(_vehicleData select 0) select 1,_vehicleName]] remoteExec ["life_fnc_broadcast",0];
	life_action_inUse = true;
	
	_upp = "Crushing";
	//Setup our progress bar.
	disableSerialization;
	13 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		sleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	13 cutText ["","PLAIN"];
	
	if(player distance _vehicle > 10) exitWith {hint "Crushing Canceled"; life_action_inUse = false;};
	if(!alive player) exitWith {life_action_inUse = false;};
	if((count crew _vehicle) == 0) then
	{
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {life_action_inUse = false;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Car"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Ship"): {_price = (call life_impound_boat);};
			case (_vehicle isKindOf "Air"): {_price = (call life_impound_air);};
		};
		
		life_impound_inuse = true;
[_vehicle,true,player] remoteExec ["TON_fnc_vehicleIsDead",2];
		[_vehicle] spawn
		{
			sleep 1;
			if(!isNull _this && !isNil "_this") then {
				deleteVehicle _this;
			};
		};
		hint format["You have received %2 for crushing this %1",_type,_price];
[0,format["%2 your %3 has been crushed by %1",profileName,(_vehicleData select 0) select 1,_vehicleName]] remoteExec ["life_fnc_broadcast",0];
		["atm","add",_price] call BANK; //replace with life_atmcash = life_atmcash + _price;
	}
		else
	{
		hint "Crushing Canceled";
	};
};
life_action_inUse = false;
