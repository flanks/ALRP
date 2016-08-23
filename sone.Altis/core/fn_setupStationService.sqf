/*
    File: fn_setupStationService.sqf
    Author: NiiRoZz
    Description:
    Add action fuel action in Station Service.
    put function in init file then execute it with:
    ["obj id"] call getObjcsInMap;
    example: ["Land_fs_feed_F"] call getObjcInMap;
    Function :
    getObjcInMap =
    {
        private ["_pos", "_Station", "_br", "_tab", "_TexteSortie"];
        _pos = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
        _Station = nearestObjects [_pos, _this, 25000];
        _br = toString [13, 10];
        _tab = toString [9];
        _TexteSortie = "_position = [" + _br;
        {
            _TexteSortie = _TexteSortie + _tab + (str (getpos _x));
            _TexteSortie = if (_forEachIndex < ((count _Station) - 1)) then {_TexteSortie + ", " + _br} else {_TexteSortie + _br};
        } forEach _Station;
        _TexteSortie = _TexteSortie + "];";
        hint "Completed";
        copyToClipboard _TexteSortie;
    };
*/
private ["_positionAltis"];
_positionAltis = [
    [[9205.75,12112.2,-0.0487232], "Land_fs_feed_F"],
    [[11831.6,14155.9,-0.0342016], "Land_fs_feed_F"],
    [[12024.7,15830,-0.0298138], "Land_fs_feed_F"],
    [[12026.6,15830.1,-0.0342979], "Land_fs_feed_F"],
    [[12028.4,15830,-0.0388737], "Land_fs_feed_F"],
    [[9025.78,15729.4,-0.0206528], "Land_fs_feed_F"],
    [[9023.75,15729,-0.0271606], "Land_fs_feed_F"],
    [[9021.82,15728.7,-0.0293427], "Land_fs_feed_F"],
    [[16750.9,12513.1,-0.0525198], "Land_fs_feed_F"],
    [[6798.15,15561.6,-0.0441437], "Land_fs_feed_F"],
    [[6198.83,15081.4,-0.0912418], "Land_fs_feed_F"],
    [[14173.2,16541.8,-0.0946102], "Land_fs_feed_F"],
    [[5023.26,14429.6,-0.0978947], "Land_fs_feed_F"],
    [[5019.68,14436.7,-0.0114822], "Land_fs_feed_F"],
    [[4001.12,12592.1,-0.0966625], "Land_fs_feed_F"],
    [[17417.2,13936.7,-0.10652], "Land_fs_feed_F"],
    [[3757.14,13477.9,-0.0540276], "Land_fs_feed_F"],
    [[3757.54,13485.9,-0.010498], "Land_fs_feed_F"],
    [[16875.2,15469.4,0.037343], "Land_fs_feed_F"],
    [[16871.7,15476.6,0.010293], "Land_fs_feed_F"],
    [[8481.69,18260.7,-0.0266876], "Land_fs_feed_F"],
    [[15297.1,17565.9,-0.283808], "Land_fs_feed_F"],
    [[14221.4,18302.5,-0.0697155], "Land_fs_feed_F"],
    [[15781,17453.2,-0.285281], "Land_fs_feed_F"],
    [[19961.3,11454.6,-0.0349236], "Land_fs_feed_F"],
    [[19965.1,11447.6,-0.0483704], "Land_fs_feed_F"],
    [[5769,20085.7,-0.0156555], "Land_fs_feed_F"],
    [[21230.4,7116.56,-0.0604229], "Land_fs_feed_F"],
    [[20784.8,16665.9,-0.0521202], "Land_fs_feed_F"],
    [[20789.6,16672.3,-0.0213318], "Land_fs_feed_F"],
    [[23379.4,19799,-0.0544052], "Land_fs_feed_F"],
    [[25701.2,21372.6,-0.0774155], "Land_fs_feed_F"]
];

{
    _pump = nearestObject _x;
    _pump setFuelCargo 0;
    _pump addAction [localize "STR_Action_Pump", life_fnc_fuelStatOpen, 1, 3, true, true, "", 'cursorObject isEqualTo _target', 5];
} forEach _positionAltis;