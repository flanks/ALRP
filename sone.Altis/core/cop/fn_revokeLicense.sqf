#include "..\..\script_macros.hpp"
/*
     Filename: fn_revokeLicence.sqf
     Date Created: 07.06.2016 17:00
     SecretOne.net
*/
	
	// Bilkörkort

	case 10: {
	         	missionNamespace setVariable [LICENSE_VARNAME("driver","civ"),false]; //Bilkörkort ta bort
	         	hint localize "STR_Civ_RevokeLicense_Driver"; // Visar en popup på skärmen att licensen har tagits bort.
	         };
	
	// Lastbilslicens	
	
	case 11: {
	        	missionNamespace setVariable [LICENSE_VARNAME("trucking","civ"),false];
	        	hint localize "STR_Civ_RevokeLicense_Truck";	
	         };

	// Pilotlicens

	case 12:	{		missionNamespace setVariable [LICENSE_VARNAME("pilot","civ"),false];		hint localize "STR_Civ_RevokeLicense_Pilot";	};

	// Båtlicencs

	case 13:	{		missionNamespace setVariable [LICENSE_VARNAME("boat","civ"),false];		hint localize "STR_Civ_RevokeLicense_Boating";	};

	// Dykningslicens

	case 14: {
	     		missionNamespace setVariable [LICENSE_VARNAME("dive","civ"),false]; //Dukningslicences
                hint localize "STR_Civ_RevokeLicense_Diving"; //Visar en popup att licencen har tagits bort
	     	 };	

	// Alla motorfordon

	case 16: {
	            missionNamespace setVariable [LICENSE_VARNAME("driver","civ"),false]; //Bilkörkort
	            missionNamespace setVariable [LICENSE_VARNAME("trucking","civ"),false]; //Lastbilskörkort
                missionNamespace setVariable [LICENSE_VARNAME("pilot","civ"),false]; //Pilotkörkort
                missionNamespace setVariable [LICENSE_VARNAME("boat","civ"),false]; //Båtkörkort
                missionNamespace setVariable [LICENSE_VARNAME("taxi","civ"),false]; //Taxikörkort

                hint localize "STR_Civ_RevokeLicense_AllMotor";	//Visar en popup att licencen har tagits bort.
             };	

    // Weapon Licence

    case 17: {
         		//Civilian Gun Licence
         		missionNamespace setVariable [LICENSE_VARNAME("gun","civ"),false];

                //Visar en pop-up på skärmen som visar att licencen har tagits bort.
         		hint localize "STR_Civ_RevokeLicense_Firearm";	
         	 };