#include "..\..\script_macros.hpp"
/* 

	File: fn_isAdmin.sqf
	Description: Checks if the player is a admin with higher rank than 0
	Date created: 25.06.2016
	Author: SimZor

	Copyright (C) SecretOne.net 2016

*/

if(FETCH_CONST (life_adminlevel) > 0) then {true} else {false};