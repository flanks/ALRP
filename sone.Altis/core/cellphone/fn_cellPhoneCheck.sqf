/*
	Author: GetSomePanda / Panda
	SteamID: 76561198145366418
	File Name: fn_cellPhoneCheck.sqf
	Information: Checks players cellphone for messages on player init.
*/
if(life_session_completed) exitWith {};

[player] remoteExecCall ["DB_fnc_cellPhoneRequest",2];


