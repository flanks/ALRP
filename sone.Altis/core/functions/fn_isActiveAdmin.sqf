#include "..\..\script_macros.hpp"
/* 

	File: fn_isActiveAdmin.sqf
	Description: Checks if the player is a admin with higher rank than 0 and if the admin wears the VR suit
	Date created: 25.06.2016
	Author: SimZor

	Copyright (C) SecretOne.net 2016

*/

if ( FETCH_CONST ( life_adminlevel ) > 0 && ( uniform _x isEqualTo ["U_B_Protagonist_VR"] ) ) then {true} else {false};