private["_shell","_bootTime","_bootString","_callUser"];
_callUser = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (life_isRebooting) exitWith{
[1,"The server is already running a shutdown sequence, which means that you can't order another one."] remoteExec ["life_fnc_broadcast",_callUser];
};
life_isRebooting = true;
_bootString = "<t align='center' size='2' color='#ff0000'>Server Restart</t><br />The server will shut down for a patch in <t underline='true'>20 minute(s)</t>. Press Y and click SYNC DATA now to be safe. The server will only be down for a couple of seconds. You can read the changelog and see what we've changed on the forums.";
_bootStringSysChat = "The server will shut down for a patch in <t underline='true'>%1 minute(s)</t>. Press Y and click SYNC DATA now to be safe. The server will only be down for a couple of seconds. You can read the changelog and see what we've changed on the forums.";

[1, format[_bootString, 15]] remoteExec ["life_fnc_broadcast",nil];
sleep 300;
[1, format[_bootString, 10]] remoteExec ["life_fnc_broadcast",nil];
sleep 300;
[1, format[_bootString, 5]] remoteExec ["life_fnc_broadcast",nil];
sleep 240;
[1, format[_bootString, 1]] remoteExec ["life_fnc_broadcast",nil];
sleep 60;
