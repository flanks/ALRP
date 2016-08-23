/*Found Online on old Island Life missions after hearing about it - I did not write this original file, but this I did rewrite about 60% of it. Enjoy and share and grow alike - [midgetgrimm]*/
private["_channel","_msg","_pass","_locPlayer","_msgF"];
_msg = _this select 0;
_channel = _this select 1;
if(_msg == "") exitWith {}; 
_msgU = format["%1 shouts - %2", name player,_msg];
_msgF = format["<t color='#FF0000'><t size='1.75'>%2</t></t><br>was shouted by<br>%1 ", name player, _msg];
if (_channel == "direct") then {
		
	_locPlayer = [];
	{ 
		if(player distance _x < 100) then {
		
			_locPlayer pushback _x;
			//_locPlayer set [count _locPlayer,_x];
		};
			
	} foreach playableUnits;
[5,format["%1", _msgF]] remoteExecCall ["life_fnc_broadcast",_locPlayer];
[2,format["%1", _msgU]] remoteExecCall ["life_fnc_broadcast",_locPlayer];
[0,format["%1", _msgU]] remoteExecCall ["life_fnc_broadcast",_locPlayer];
};
