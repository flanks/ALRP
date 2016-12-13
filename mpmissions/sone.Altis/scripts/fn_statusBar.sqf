waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["[S-One Tanoa Life] Loading game server info...", _rscLayer];
[] spawn {
sleep 5;
_counter = 360;
_timeSinceLastUpdate = 0;
while {true} do 
	{


		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["S-ONE Tanoa Life v.1.9.7 : FPS: %1 || Police: %2 Civilians: %3 Ambulance: %4 || Cash: %5 Bank: %6 || GridRef: %8", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText,mapGridPosition player, _counter];



	};
};