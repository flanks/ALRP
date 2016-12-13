/*
	fn_seatBelt.sqf
*/
playSound "seatbelt";
if(!life_seatbelt) then {
	hint "Your seatbelt is ON";
	life_seatbelt = true;
} else {
	hint "Your seatbelt is OFF";
	life_seatbelt = false;
};