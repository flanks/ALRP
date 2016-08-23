/*
    File: fn_copMarkers.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Marks downed players on the map when it's open.
*/
private["_markers","_units","_cops"];
_markers = [];
_markersMedecin = [];
_units = [];
_cops = [];

sleep 0.25;
if (visibleMap) then {
    {if (side _x isEqualTo west) then {_cops pushBack _x;}} forEach playableUnits; //Fetch list of cops / blufor
    {
        _name = _x getVariable "name";
        _down = _x getVariable ["Revive",false];
        if (!isNil "_name" && !_down) then {
            _units pushBack _x;
        };
    } forEach allDeadMen;

    {
        if (_x != player) then {
            _markerss = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
            _markerss setMarkerColorLocal "ColorBLUFOR";
            _markerss setMarkerTypeLocal "Mil_dot";
            _markerss setMarkerTextLocal format["%1", _x getVariable ["realname",name _x]];

            _markersMedecin pushBack [_markerss,_x];
        };
    } forEach _cops;

    //Loop through and create markers.
    {
        _marker = createMarkerLocal [format["%1_dead_marker",_x],visiblePosition _x];
        _marker setMarkerColorLocal "ColorRed";
        _marker setMarkerTypeLocal "loc_Hospital";
        _marker setMarkerTextLocal format["%1",(_x getVariable ["name","Unknown Player"])];
        _markers pushBack _marker;
    } forEach _units;

    while {visibleMap} do {
        {
            private["_unit"];
            _unit = _x select 1;
            if (!isNil "_unit" && !isNull _unit) then {
                (_x select 0) setMarkerPosLocal (visiblePosition _unit);
            };
        } forEach _markersMedecin;
        if (!visibleMap) exitWith {};
        sleep 0.02;
    };
    {deleteMarkerLocal (_x select 0);} forEach _markersMedecin;
    _markersMedecin = [];
    _cops = [];
    waitUntil {!visibleMap};
    {deleteMarkerLocal _x;} forEach _markers;
};

