//File:fn_teleTaxi.sqf Author:[midgetgrimm] 
private ["_action","_teleMan"];
if(!alive player) exitWith {hint"You dead homie.. dafuq";};
//if(life_inv_transporter < 1) exitWith {hint "You need a bus ticket to ride the bus";};
if (!([false,"busticket",1] call life_fnc_handleInv)) exitWith
{hint "You got no ticket buy one you hobo!!";};
//if(playerSide != east) exitWith {hint"Not for municipal workers";};
if (vehicle player != player) exitWith {hint "Please store your vehicle, there will be a garage on the other side";};

_teleMan = _this select 3;


_action = [
			"Are you sure you wish to take the bus?",
			"Bus Ride",
			"Yes",
			"No"
		] call BIS_fnc_guiMessage;
		
if(_action) then {
			
		[false,"busticket",1] call life_fnc_handleInv;
		switch (_teleMan) do
		{
			case "north": 
			{
					titleText ["You fell asleep on the bus","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "Respawn_west");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "tele_north_1");
					disableUserInput false;
					titleText ["You have woken up at your destination","BLACK IN"];
			};
			case "south":
			{
					titleText ["You fell asleep on the bus","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "respawn_civilian");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "tele_south_1");
					disableUserInput false;
					titleText ["You have woken up at your destination","BLACK IN"];
			};
			case "east":
			{
					titleText ["You fell asleep on the bus","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "Respawn_west");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "tele_east_1");
					disableUserInput false;
					titleText ["You have woken up at your destination","BLACK IN"];
			};
			case "west":
			{
					titleText ["You fell asleep on the bus","BLACK",2];
					sleep 2;
					player setPos (getMarkerPos "respawn_civilian");
					_handle = [] spawn life_fnc_teleTimer;
					waitUntil {scriptDone _handle};
					player setPos (getMarkerPos "tele_west_1");
					disableUserInput false;
					titleText ["You have woken up at your destination","BLACK IN"];
			};
		};
} else {
			hint"Thanks for nothing, move along";
};