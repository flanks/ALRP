_serverName = "SecretOne Life 2.0";
_plrName = profileName;


//Pause the script until the player has spawned.
waitUntil {alive player};

_text = format["<br/><t color='#C5B6B5' size='1.8' align='center'>Welcome %1 to %2, we hope you have a good time. Enjoy your stay!</t><br/><br/>",_plrName,_serverName];
hint parseText (_text);

_onScreenTime = 3;

//playsound _sound;
sleep 2; //Wait in seconds before the credits start after player is in-game
_role1 = "Welcome to";
_role1names = ["SecretOne Life 3.2"];
_role2 = "Server Owners:";
_role2names = ["Flanks","TrackTerror"];
_role3 = "Senior Administrators:";
_role3names = ["Adolf","Daniel","CrisSs"];
_role4 = "Server Administrators:";
_role4names = ["Soldier"];
_role5 = "Game Developers";
_role5names = ["TrackTerror","Flanks"];
_role6 = "Website / Forum:";
_role6names = ["secretone.net"];
_role7 = "TeamSpeak 3:";
_role7names = ["ts.secretone.net"];
_role8 = "Rules";
_role8names = ["Read our rules on the website before killing and similar doings."];
_role9 = "Basic";
_role9names = ["No VDM / RDM / KOS"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#ff000' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names],
	[_role7, _role7names],
	[_role8, _role8names],
	[_role9, _role9names]
];
