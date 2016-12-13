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
    case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[4270000,3]};
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[5480000,4]};
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[500000,0]};
	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F"]): {[3570000,2]};
	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {[2400500,2]};
	case (_house in ["Land_i_House_Small_03_V1_F"]): {[4250000,3]};
	case (_house in ["Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F"]): {[1550000,1]};
    default {[]};
};

