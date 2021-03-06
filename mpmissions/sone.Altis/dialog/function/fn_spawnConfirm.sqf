/*
    File: fn_spawnConfirm.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Spawns the player where he selected.
*/
private["_spCfg","_sp","_spawnPos"];
if(life_lastKnownPos distance (getMarkerPos (life_spawn_point select 0)) < 1500) exitWith {systemChat "You cannot spawn there, as it is too close to the scene of your death. Choose another spawn."; };
    
closeDialog 0;
cutText ["","BLACK IN"];
player cameraEffect ["terminate","back"];
camDestroy _camera;
if (life_spawn_point isEqualTo []) then {
    private["_sp","_spCfg"];
    _spCfg = [playerSide] call life_fnc_spawnPointCfg;
    _sp = _spCfg select 0;

    if (playerSide == civilian) then {
        if (isNil {(call compile format["%1", _sp select 0])}) then {
            player setPos (getMarkerPos (_sp select 0));
        } else {
            _spawnPos = (call compile format["%1", _sp select 0]) call BIS_fnc_selectRandom;
            _spawnPos = _spawnPos buildingPos 0;
            player setPos _spawnPos;
        };
    } else {
        player setPos (getMarkerPos (_sp select 0));
    };
    titleText[format["%2 %1",_sp select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
} else {
    if (playerSide == civilian) then {
        if (isNil {(call compile format["%1",life_spawn_point select 0])}) then {
            if (["house",life_spawn_point select 0] call BIS_fnc_inString) then {
                private["_bPos","_house","_pos"];
                _house = nearestObjects [getMarkerPos (life_spawn_point select 0),["House_F"],10] select 0;
                _bPos = [_house] call life_fnc_getBuildingPositions;

                if (_bPos isEqualTo []) exitWith {
                    player setPos (getMarkerPos (life_spawn_point select 0));
                };

                {_bPos = _bPos - [(_house buildingPos _x)];} forEach (_house getVariable ["slots",[]]);
                _pos = _bPos call BIS_fnc_selectRandom;
                player setPosATL _pos;
            } else {
                player setPos (getMarkerPos (life_spawn_point select 0));
            };
        } else {
            _spawnPos = (call compile format["%1", life_spawn_point select 0]) call BIS_fnc_selectRandom;
            _spawnPos = _spawnPos buildingPos 0;
            player setPos _spawnPos;
        };
    } else {
        player setPos (getMarkerPos (life_spawn_point select 0));
    };
    titleText[format["%2 %1",life_spawn_point select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
};

/*Introcam*/
//_handle = [] spawn life_fnc_IntroCam;

if (life_firstSpawn) then {
    life_firstSpawn = false;
    [] call life_fnc_welcomeNotification;
};
[player, true] call life_fnc_HandleUniforms;
[] call life_fnc_hudSetup;