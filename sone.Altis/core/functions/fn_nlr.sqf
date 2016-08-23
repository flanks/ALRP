/*
     Filename: fn_nlr.sqf
     Author: Kevin Webb
     Edited: SimZor 2016.07.07
     Description: Semi-enforces NLR
*/

private["_NLR","_msg","_dMarker"];
if(life_is_arrested || life_deathPen) exitWith {}; 
systemChat "Be aware: the New Life Rule rules are now in effect!";
_msg = "Alert, this player seems to be violating New Life Rule.";
life_lastKnownPos = param [0,[],[[]]];
waitUntil{alive player};
_dMarker = createMarkerLocal["My Death Location",life_lastKnownPos];
_dMarker setMarkerTypeLocal "hd_warning";
_dMarker setMarkerTextLocal "My Death Location - Stay Away!";
_dMarker setMarkerColorLocal "ColorWhite";
_NLR = time + 1800;
waitUntil{uiSleep 1; ((_NLR - time) <= 0 || player distance life_lastKnownPos < 1250 || !alive player)};
if((_NLR - time) <= 0 || !alive player) exitWith {life_lastKnownPos = [0,0,0]; deleteMarker _dMarker;};
[_msg] call fnc_cell_textadmin;
hint "You seem to be violating the New Life Rule and a message has been dispatched to the admins. If you do not wish to be banned from the server, perhaps it would be a good idea to explain yourself.";
life_lastKnownPos = [0,0,0];
deleteMarker _dMarker;