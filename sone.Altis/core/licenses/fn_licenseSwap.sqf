/* 
	File: fn_licenseSwap.sqf
	Added: SimZor 2016.07.08
    Description: Will swap different licenses intervening with each other.
*/
_primOrSec = _this select 0;
if(playerSide != civilian) exitWith {};

_action = false;
_res = false;
_res = switch(_primOrSec) do
{
	case false: {
		if(!license_civ_rookieBountyHunter && !license_civ_rebel) exitWith {true};
		_action = [
			localize "STR_License_ReplaceLong",
			localize "STR_License_Replace",
			localize "STR_Global_Yes",
			localize "STR_Global_No"
		] call BIS_fnc_guiMessage;
		false;
	};

	case true: {
		if(!license_civ_taxi && !license_civ_arac) exitWith {true};
		_action = [
			localize "STR_License_ReplaceLong",
			localize "STR_License_Replace",
			localize "STR_Global_Yes",
			localize "STR_Global_No"
		] call BIS_fnc_guiMessage;
		false;
	};
};

if(_res) exitWith {true};

if(!_action) exitWith {hint "Cancelled."; false};

if(_primOrSec) then {
	if(license_civ_taxi) then {license_civ_taxi = false;} else {license_civ_towing = false;};	
} else {
	if(license_civ_rookieBountyHunter) then {license_civ_rookieBountyHunter = false;} else {license_civ_rebel = false;};
};
true