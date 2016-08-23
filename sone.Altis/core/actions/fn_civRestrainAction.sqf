private["_unit","_pos","_marker"];
if(playerSide == independent) exitWith { hint "Can't ziptie medics!"; };
if (vehicle player != player) exitWith { hint "Get out of your vehicle!" };
if(!alive player) exitWith { hint "You are dead. WTF?"; };

if(!([false,"zipties",1] call life_fnc_handleInv)) exitWith { hint "How are you going to restrain someone without zipties? Come on, don't be silly."; };
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if( (player distance _unit > 3) ) exitWith {};
if( (_unit getVariable "restrained") ) exitWith {};
if( player == _unit ) exitWith {};
if( !isPlayer _unit ) exitWith {};

//Broadcast!
[false,"zipties",1] call life_fnc_handleInv;
_unit setVariable["restrained",true,true];
hint "The person is now ziptied.";
[player] remoteExec ["life_fnc_restrain", _unit];
[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]] remoteExec ["life_fnc_broadcast",0];

// SimZor Added - If the person restraining is a bounty hunter then ignore, else make them wanted.
if (!(license_civ_rookieBountyHunter)) then {
     	if (life_HC_isActive) then {
			[getPlayerUID _robber,name _robber,"207"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
		} else {
			[getPlayerUID _robber,name _robber,"207"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
		};
} else {
      hint "Since you are a Bounty Hunter you did not get wanted while restraining this fella.";
};
