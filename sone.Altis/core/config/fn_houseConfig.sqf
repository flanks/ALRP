/*
    File: fn_houseConfig.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if (_house isEqualTo "") exitWith {[]};

/*
    Return Format:
    [price,# of containers allowed]
*/
switch (true) do {
    case (_house in ["Land_House_Big_01_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[1550000,3]};
    case (_house in ["Land_House_Big_03_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[2200000,4]};
    case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[500000,0]};
    case (_house in ["Land_House_Small_01_F","Land_Slum_04_F","Land_Slum_03_F","Land_House_Small_05_F"]): {[1050000,2]};
    case (_house in ["Land_GarageShelter_01_F"]): {[1000500,2]};
    case (_house in ["Land_i_House_Small_03_V1_F","Land_House_Small_02_F","Land_Slum_01_F"]): {[1250000,3]};
	case (_house in ["Land_Shed_05_F"]): {[800000,3]};
    case (_house in ["Land_House_Small_04_F","Land_House_Small_05_f","Land_Slum_05_F","Land_Slum_02_F"]): {[750000,1]};
    default {[]};
};