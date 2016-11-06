#include "..\script_macros.hpp"
/*
    File: configuration.sqf
    Author:

    Description:
    Master Life Configuration File
    This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_lastKnownPos = [0,0,0]; // Prevents spawning near where you died last.
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = objNull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = objNull;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
tawvd_addon_disable = true;
life_god = false;
life_frozen = false;
life_save_gear = [];
life_container_activeObj = objNull;
life_disable_getIn = false;
life_disable_getOut = false;
life_admin_debug = false;
life_preview_3D_vehicle_cam = objNull;
life_preview_3D_vehicle_object = objNull;
life_preview_light = objNull;
life_pos_exist = false;
life_pos_attach = [];
life_civ_position = [];
life_markers = false;
life_canpay_bail = true;
life_seatbelt = false;
life_seatwarn = false;
life_isRebooting = false;
life_drink = 0;
life_siren2_active = false;
life_settings_enableNewsBroadcast = profileNamespace getVariable ["life_enableNewsBroadcast",true];

//Settings
life_settings_enableSidechannel = profileNamespace getVariable ["life_enableSidechannel",true];
life_settings_tagson = profileNamespace getVariable ["life_settings_tagson",true];
life_settings_revealObjects = profileNamespace getVariable ["life_settings_revealObjects",true];
life_settings_viewDistanceFoot = profileNamespace getVariable ["life_viewDistanceFoot",1250];
life_settings_viewDistanceCar = profileNamespace getVariable ["life_viewDistanceCar",1250];
life_settings_viewDistanceAir = profileNamespace getVariable ["life_viewDistanceAir",1250];


//Quick msg
switch (playerSide) do
{
	case west: 
	{
		radio_shoutMessage_1 = "Put your hands up where I can see them!";				
		radio_shoutMessage_2 = "Pull over and stay in your vehicle!";
		radio_shoutMessage_3 = "Drop your weapon and put your hands on your head!";
		radio_shoutMessage_4 = "HELI: Clear the area or you will be fired upon";
		radio_shoutMessage_5 = "If you are not involved, leave the area, or you will be arrested";
	};
	case civilian: 
	{
		radio_shoutMessage_1 = "Put your gun down and your hands up!";
		radio_shoutMessage_2 = "Get away from the vehicle!";		
		radio_shoutMessage_3 = "Leave me alone";						
		radio_shoutMessage_4 = "Dont shoot I give up!";
		radio_shoutMessage_5 = "I'm just trying to leave, don't shoot!";
	};
	
	case independent: {
		radio_shoutMessage_1 = "Hold Fire - Medic in the area";
		radio_shoutMessage_2 = "Back away from the victim";		
		radio_shoutMessage_3 = "Harming a medic is against the law";				
		radio_shoutMessage_4 = "Dont shoot I'm a medic for god's sake";
		radio_shoutMessage_4 = "Who needs a medic?";
	};
};
radio_textImg_1 = "direct";
radio_textImg_2 = "direct";
radio_textImg_3 = "direct";
radio_textImg_4 = "direct";
radio_textImg_5 = "direct";

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = LIFE_SETTINGS(getNumber,"total_maxWeight");
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_use_atm = true;
life_is_arrested = false;
life_is_alive = false;
life_delivery_in_progress = false;
life_thirst = 100;
life_hunger = 100;
CASH = 0;

life_isrubbered = false;
life_istazed = false;
life_isknocked = false;
life_vehicles = [];

/*
    Master Array of items?
*/
//Setup variable inv vars.
{
    missionNamespace setVariable [ITEM_VARNAME(configName _x),0];
} forEach ("true" configClasses (missionConfigFile >> "VirtualItems"));

/* Setup the BLAH! */
{
    _varName = getText(_x >> "variable");
    _sideFlag = getText(_x >> "side");

    missionNamespace setVariable [LICENSE_VARNAME(_varName,_sideFlag),false];
} forEach ("true" configClasses (missionConfigFile >> "Licenses"));
