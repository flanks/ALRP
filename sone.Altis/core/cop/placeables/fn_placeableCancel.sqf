/* 
    Filename: fn_placeableCancel.sqf
	Author: Maximum
	Description: Placeables for the cop\medic sides
	Date added: 13.06.2016
	Added by: SimZo
*/
if (!life_barrier_active) exitWith {}; //bad check?
deleteVehicle life_barrier_activeObj;
life_barrier_active = false;
life_barrier_activeObj = ObjNull;