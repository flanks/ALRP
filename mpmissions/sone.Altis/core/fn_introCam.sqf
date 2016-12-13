/*
Cinematic Intro Script
Author: Soolie
*/
	_distance = 75;
	_plr = vehicle player;
	_dir = (getDir _plr) + 25;
	_height = 37.5;
	_camPos = [_plr, _distance, _dir] call BIS_fnc_relPos;
	_camPos set [2, _height];
	showCinemaBorder true;
	_camera = "camera" camCreate _camPos;
	_camera cameraEffect ["INTERNAL","BACK"];
	_camera camPrepareFOV 0.700;
	_camera camPrepareTarget _plr;
	_camera camCommitPrepared 0;
	while {_height > 2} do {
		_distance = _distance -0.36;
		_height = _height - 0.175;
		_camPos = [_plr, _distance, _dir] call BIS_fnc_relPos;
		_camPos set [2, _height];
		_camera camPreparePos _camPos;
		_camera camCommitPrepared 0.025;
		waitUntil {camCommitted _camera};
		_dir = _dir - 1;	
	};
	_camera cameraEffect ["terminate","back"];
	camDestroy _camera;