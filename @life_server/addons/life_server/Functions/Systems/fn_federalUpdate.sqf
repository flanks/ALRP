/*
    File: fn_federalUpdate.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Uhhh, adds to it?
*/
private "_funds";
for "_i" from 0 to 1 step 0 do {
    uiSleep (30 * 60);
    _funds = fed_bank getVariable ["safe",0];
	_bfunds = fed_bank_1 getVariable ["safe",0];
    fed_bank setVariable ["safe",round(_funds+((count playableUnits)/2)),true];
	fed_bank_1 setVariable ["safe",round(_bfunds+((count playableUnits)/5)),true];
};
