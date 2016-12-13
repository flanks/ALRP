/*
Author: =IFD= Cryptonat@
Added by: SimZor
Edited by: SimZor
Date added: 11.06.2016
Description: Saves the player's gear every 5 minutes.
*/

while {true} do {
	               sleep 300; // Do this each 5 minutes
                   [] call SOCK_fnc_updateRequest; // Calls the statsave
                   hint "Your player statistics has now been uploaded to the S-ONE Server Hive. Feel free to keep playing as usual!" // Shows a message to the player
                };