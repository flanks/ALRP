/*  File: fn_radar.sqf
    Author: Herman "Mordin" Othelius
    Description: Version 1.1
    Last update: Made it a little nicer to look at! Radar with owner info, work in progress
*/

if(!(vehicle player != player)) exitWith {}; // Exits if the player is not in a vehicle
[player, "RadarSound",10] remoteExec ["life_fnc_RadarSound",0];

_speed = 0;
_info = "";
_vehicle = [];
_owner =[];
_cars = [];

_owners = _vehicle getVariable "vehicle_info_owners";
_owners = _owners select 0;
_owners = [[_owners]] call life_fnc_vehicleOwners;

{ if (alive _x) then { 
                         _cars set [(count _cars),_x];
                     };
} forEach 
      nearestObjects [vehicle player,["Car"],100];
      if(count _cars < 2) exitWith{hint parseText format ["<t color='#5A80EB'><t align='center'><t size='1.5'>ERROR!</t></t><br/><t color='#FF0000'><t size='1'>No vehicles in range!</t></t>"];};

      _vehicle = (_cars select 1);_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");

      if(count (crew (_vehicle)) == 0) exitWith {hint parseText format ["<t color='#5A80EB'><t align='center'><t size='1.5'>ERROR!</t></t><br/><t color='#FF0000'><t size='1'>No moving vehicles in range!</t></t>"];

};

_speed = round speed (_vehicle);
_owner = [_vehicle getVariable "vehicle_info_owners"] call life_fnc_vehicleOwners;

// Format speed & owner below here

if(_speed > 110) then {

    _info = format ["<t color='#5A80EB'><t size='1.5'><t align='center'>Radar<br/><t color='#FF0000'><t align='center'><t size='1'>Speed %1 km/h", _speed];

} else {
          _info = format ["<t color='#5A80EB'><t size='1.5'><t align='center'>Radar<br/><t color='#33CC33'><t align='center'><t size='1'>Speed %1 km/h", _speed];

       };

if(isNil {_owner}) then {

                             _info = _info + format ["<br/><t color='#FFD700'><t size='1.5'><t align='center'>Owner:<br/><t color='#33CC33'><t align='center'><t size='1.8'> NOT FOUND!"];

                         } else {

                                    _info = _info + format ["<br/><t color='#5A80EB'><t size='1.5'><t align='center'>Owner:<br/><t color='#33CC33'><t align='center'><t size='1'> %1", _owner];

                                };

_info = _info + format ["<br/><t color='#5A80EB'><t size='1.5'><t align='center'>Vehicle:<br/><t color='#33CC33'><t align='center'><t size='1'> %1", _type];

hint parseText _info;

_wanted = false;
{if(_owners == (_x select 0)) then {_wanted = true}; if(_wanted) exitWith {};} forEach life_wanted_list;
if(_wanted) then {systemChat "It appears the vehicle's owner was recorded as being wanted recently."}

