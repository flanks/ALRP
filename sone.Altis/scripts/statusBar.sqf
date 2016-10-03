waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
    File: fn_statusBar.sqf
    Author: Some French Guy named Osef I presume, given the variable on the status bar
    Edited by: [midgetgrimm]
    Description: Puts a small bar in the bottom right of screen to display in-game information
 
*/
_rscLayer = "osefStatusBarAdmin" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBarAdmin","PLAIN"];
 
[] spawn
{
    sleep 5;
	_damage = round ((1 - (damage player)) * 100);
    _fpscolour = '#008000';
    _counter = 180;
    _timeSinceLastUpdate = 0;
    Server_Session = 21600;
	_statusText = "ts.SecretOne.net"; 
   
    while {true} do
    {
        TimeTillRestart = Server_Session - ServerTime;
		if (TimeTillRestart >= 1800) then
		{
            _timecolour = "color= '#FFFFFF'";
        }
         else
        {
            if (TimeTillRestart >= 600) then
            {
                _timecolour = "color= '#FFFF00'";
            }
            else
            {
                _timecolour = "color= '#FF0000'";
            }
        };
       
        sleep 1;
        if(isNull ((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)) then
        {
            diag_log "statusbar is null create";
            disableSerialization;
            _rscLayer = "osefStatusBarAdmin" call BIS_fnc_rscLayer;
            _rscLayer cutRsc["osefStatusBarAdmin","PLAIN"];
        };
 
        _counter = _counter - 1;
           ((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)ctrlSetStructuredText parseText format["<t color='#ffffff' size='1' font='PuristaSemibold'>SPD: %2</t> | <t color='#ffffff' size='1' font='PuristaSemibold'>CIV: %3</t> | <t color='#ffffff' size='1' font='PuristaSemibold'>EMS: %4</t> | <t color='#ffffff'> <img size='1.0' image='icons\money.paa'/> %5</t> | <t color='#ffffff'><img size='1.0' image='icons\bank.paa'/> %6</t> | <t color='#ffffff' size='1' font='PuristaSemibold'>TS: %11</t> | <t color='#ffffff' size='1' font='PuristaSemibold'>Restart: %7</t>", "0", west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, [life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText, [TimeTillRestart, "HH:MM:SS"] call BIS_fnc_secondsToString, [life_hunger] call life_fnc_numberText, [life_thirst] call life_fnc_numberText, round ((1 - (damage player)) * 100), _statusText, _fpscolour]; 

    };
};