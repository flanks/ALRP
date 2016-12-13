#include "..\..\script_macros.hpp"
/*
*    File: fn_keyHandler.sqf
*    Author: Bryan "Tonic" Boardwine
*
*    Description:
*    Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_radarstuff"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorObject;
_handled = false;

//Custom keys
_radarstuff = if (count (actionKeys "User3") isEqualTo 0) then {184} else {(actionKeys "User3") select 0};
_speakKey = if((actionKeys "PushToTalk") isEqualTo []) then {58} else {(actionKeys "PushToTalk") select 0};
_interactionKey = if (count (actionKeys "User10") isEqualTo 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = (actionKeys "ShowMap" select 0);
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if ((_code in (actionKeys "GetOver") || _code in (actionKeys "salute") || _code in (actionKeys "SitDown") || _code in (actionKeys "Throw") || _code in (actionKeys "GetIn") || _code in (actionKeys "GetOut") || _code in (actionKeys "Fire") || _code in (actionKeys "ReloadMagazine") || _code in [16,18]) && ((player getVariable ["restrained",false]) || (player getVariable ["playerSurrender",false]) || life_isknocked || life_istazed)) exitWith {
    true;
};

if (life_action_inUse) exitWith {
    if (!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
    _handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if (!(count (actionKeys "User10") isEqualTo 0) && {(inputAction "User10" > 0)}) exitWith {
    //Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
    if (!life_action_inUse) then {
        [] spawn {
            private "_handle";
            _handle = [] spawn life_fnc_actionKeyHandler;
            waitUntil {scriptDone _handle};
            life_action_inUse = false;
        };
    };
    true;
};

if (life_container_active) then {
    switch (_code) do {
        //space key
        case 57: {
            [] spawn life_fnc_placestorage;
        };
    };
    true;
};

if (life_barrier_active) then {
    switch (_code) do {
        //space key
        case 57: {
            [] spawn life_fnc_placeablesPlaceComplete;
        };
    };
    true;
};

switch (_code) do {

     //Space key for Jumping
     case 57: {
         if (isNil "jumpActionTime") then {jumpActionTime = 0;};
         if (_shift && {!(animationState player isEqualTo "AovrPercMrunSrasWrflDf")} && {isTouchingGround player} && {stance player isEqualTo "STAND"} && {speed player > 2} && {!life_is_arrested} && {((velocity player) select 2) < 2.5} && {time - jumpActionTime > 1.5}) then {
             jumpActionTime = time; //Update the time.
             [player] remoteExec ["life_fnc_jumpFnc",RANY]; //Global execution
             _handled = true;
         };
     };

     //Surrender (Shift + B)
     case 48: {
         if (_shift) then {
             if (player getVariable ["playerSurrender",false]) then {
                player setVariable ["playerSurrender",false,true];
             } else {
                 [] spawn life_fnc_surrender;
             };
             _handled = true;
         };
     };

    /* Beginning of Radar */
    case 181:{ if (!_alt && !_ctrlKey && playerSide == west) then  { [] call life_fnc_radar; }; }; // "Numpad /" Radar for Police (WEST Faction)
    case 55:{ if (!_alt && !_ctrlKey && playerSide == west) then  { [] call life_fnc_copHandheldRadar; }; }; // "Numpad *" Handheld Radar for Police, must have P07 in hand
    /* End Of Radar */

    //Map Key
    case _mapKey: {
        switch (playerSide) do {
            case west: {if (!visibleMap) then {[] spawn life_fnc_copMarkers;}};
            case independent: {if (!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
            case civilian: {if (!visibleMap) then {[] spawn life_fnc_civMarkers;}};
        };
    };

    //Holster / recall weapon. (Shift + H)
    case 35: {
        if (_shift && !_ctrlKey && !(currentWeapon player isEqualTo "")) then {
            life_curWep_h = currentWeapon player;
            player action ["SwitchWeapon", player, player, 100];
            player switchCamera cameraView;
        };

        if (!_shift && _ctrlKey && !isNil "life_curWep_h" && {!(life_curWep_h isEqualTo "")}) then {
            if (life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
                player selectWeapon life_curWep_h;
            };
        };
    };

    //Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
    case _interactionKey: {
        if (!life_action_inUse) then {
            [] spawn  {
                private "_handle";
                _handle = [] spawn life_fnc_actionKeyHandler;
                waitUntil {scriptDone _handle};
                life_action_inUse = false;
            };
        };
    };

	case 41: 
    {       
    if(isPlayer cursorTarget) then 
        {           
        if(cursorTarget isKindOf "Man") then 
            {               
            hint format["%1",name cursorTarget];            
            } 
            else 
            {               
            hint format["%1",name (driver cursorTarget)];           
            };      
        } 
        else 
        {           
        if(cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship") then 
            {           
            hint format["%1",getText(configFile >> "CfgVehicles" >> (typeOf cursorTarget) >> "displayName")];           
            };      
        };  
    };
	
    // R Key
    case 19: {
        if (_shift) then {_handled = true;};
        
        // Shift + 3
        if (_shift && playerSide isEqualTo west && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} && {(side cursorObject in [civilian,independent])} && {alive cursorObject} && {cursorObject distance player < 3.5} && {!(cursorObject getVariable "Escorting")} && {!(cursorObject getVariable "restrained")} && {speed cursorObject < 1}) then {
            [] call life_fnc_restrainAction;
            [player, "handcuffSound",10] remoteExec ["life_fnc_handcuffSound",0];
        };

         // Shift + 3
        if (_shift && playerSide isEqualTo civilian && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} && {alive cursorObject} && {cursorObject distance player < 3.5} && {!(cursorObject getVariable "Escorting")} && {!(cursorObject getVariable "restrained")} && {speed cursorObject < 1}) then {
            [] call life_fnc_civrestrainAction;
            [player, "ziptieSound",10] remoteExec ["life_fnc_ziptieSound",0];
        };
    };

    //Knock out, this is experimental and yeah... (Shift + G)
    case 34: {
        if (_shift) then {_handled = true;};
        if (_shift && playerSide isEqualTo civilian && !isNull cursorObject && cursorObject isKindOf "Man" && isPlayer cursorObject && alive cursorObject && cursorObject distance player < 4 && speed cursorObject < 1) then {
            if ((animationState cursorObject) != "Incapacitated" && (currentWeapon player == primaryWeapon player || currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable ["restrained",false]) && !life_istazed && !life_isknocked) then {
                [player, "knockoutSound",10] remoteExec ["life_fnc_knockoutSound",0];
                [cursorObject] spawn life_fnc_knockoutAction;
            };
        };
    };

    //T Key (Trunk)
    case 20: {
        if (!_alt && !_ctrlKey && !dialog && {!life_action_inUse}) then {
            if (vehicle player != player && alive vehicle player) then {
                if ((vehicle player) in life_vehicles) then {
                    [vehicle player] spawn life_fnc_openInventory;
                };
            } else {
                private "_list";
                _list = ((ASLtoATL (getPosASL player)) nearEntities [["Box_IND_Grenades_F","B_supplyCrate_F"], 2.5]) select 0;
                if (!(isNil "_list")) then {
                    _house = nearestObject [(ASLtoATL (getPosASL _list)), "House"];
                    if (_house getVariable ["locked", false]) then {
                        hint localize "STR_House_ContainerDeny";
                    } else {
                        [_list] spawn life_fnc_openInventory;
                    };
                } else {
                    _list = ["landVehicle","Air","Ship"];
                    if (KINDOF_ARRAY(cursorObject,_list) && {player distance cursorObject < 7} && {isNull objectParent player} && {alive cursorObject} && {!life_action_inUse}) then {
                        if (cursorObject in life_vehicles) then {
                            [cursorObject] spawn life_fnc_openInventory;
                        };
                    };
                };
            };
        };
    };
	
	case 36:
	{
		
		if(playerSide in [west,independent,civilian]) then {_handled = true;};
		if (((!_shift && !_alt && !_ctrlKey) OR (playerSide in [west,independent,civilian])) && (vehicle player != player)) then
		{
			
		 if([false,"gateopener", 1] call life_fnc_handleInv) then
			{
				[] call life_fnc_gateopener;
				hint "You opened the gate like a boss.";
				[true,"gateopener", 1] call life_fnc_handleInv //readd item as it should be persistent. even better rewrite the code.
			}
			else {
				hint "the gate will not open remotley without a gateopener";
			};
		};
	};

 	//L Key?
	case 38: {
        _veh = vehicle player;
        /*if (_shift && !_alt && !_ctrlKey) then*/
        
            if(playerSide in [west,independent] && _veh != player && ((driver _veh) == player)) then
            {
                if(!isNil {_veh getVariable "lights"}) then
                {
                    if(playerSide == west) then
                    {
                        [_veh] call life_fnc_sirenLights;
                    } else {
                        [_veh] call life_fnc_medicSirenLights;
                    };
                };
            };
            _handled = true;
    };

	case _radarstuff: {
	if (playerSide == west) then
		{
			[] call life_fnc_radar;
		};
	};

    //Y Player Menu
    case 21: {
        if (!_alt && !_ctrlKey && !dialog && !(player getVariable ["restrained",false]) && {!life_action_inUse}) then {
            if (!_shift) then {
                [] call life_fnc_p_openMenu;
            }; /* else {
                [] call life_fnc_altisPhone;
            }; */
        };
    };

	case 2:  {
        if (playerSide in [west/* ,independent */] && {vehicle player != player} && {!life_siren2_active} && {((driver vehicle player) == player)}) then {
            [] spawn {
                life_siren2_active = true;
                sleep 4.7;
                life_siren2_active = false;
            };

            _veh = vehicle player;
            if (isNil {_veh getVariable "siren2"}) then {_veh setVariable ["siren2",false,true];};
            if ((_veh getVariable "siren2")) then {
                titleText [localize "STR_MISC_SirensOFF","PLAIN"];
                _veh setVariable ["siren2",false,true];
            } else {
                titleText [localize "STR_MISC_SirensON","PLAIN"];
                _veh setVariable ["siren2",true,true];
                if (playerSide isEqualTo west) then {
                    [_veh] remoteExec ["life_fnc_copYelp",RCLIENT];
                } else {
                    [_veh] remoteExec ["life_fnc_copYelp",RCLIENT];
                };
            };
        };
    };
			
	
    //F Key
    case 33: {
        if (playerSide in [west,independent] && {vehicle player != player} && {!life_siren_active} && {((driver vehicle player) == player)}) then {
            [] spawn {
                life_siren_active = true;
                sleep 4.7;
                life_siren_active = false;
            };

            _veh = vehicle player;
            if (isNil {_veh getVariable "siren"}) then {_veh setVariable ["siren",false,true];};
            if ((_veh getVariable "siren")) then {
                titleText [localize "STR_MISC_SirensOFF","PLAIN"];
                _veh setVariable ["siren",false,true];
            } else {
                titleText [localize "STR_MISC_SirensON","PLAIN"];
                _veh setVariable ["siren",true,true];
                if (playerSide isEqualTo west) then {
                    [_veh] remoteExec ["life_fnc_copSiren",RCLIENT];
                } else {
                    [_veh] remoteExec ["life_fnc_medicSiren",RCLIENT];
                };
            };
        };
    };

    //O Key
    case 24: {
        if (_shift) then {
            if (soundVolume != 1) then {
                1 fadeSound 1;
                systemChat localize "STR_MISC_soundnormal";
            } else {
                1 fadeSound 0.1;
                systemChat localize "STR_MISC_soundfade";
            };
        };
    };

    //U Key
    case 22: {
        if (!_alt && !_ctrlKey) then {
            if (isNull objectParent player) then {
                _veh = cursorObject;
            } else {
                _veh = vehicle player;
            };

            if (_veh isKindOf "House_F" && {playerSide isEqualTo civilian}) then {
                if (_veh in life_vehicles && player distance _veh < 8) then {
                    _door = [_veh] call life_fnc_nearestDoor;
                    if (_door isEqualTo 0) exitWith {hint localize "STR_House_Door_NotNear"};
                    _locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];

                    if (_locked isEqualTo 0) then {
                        _veh setVariable [format["bis_disabled_Door_%1",_door],1,true];
                        _veh animate [format["door_%1_rot",_door],0];
                        systemChat localize "STR_House_Door_Lock";
                    } else {
                        _veh setVariable [format["bis_disabled_Door_%1",_door],0,true];
                        _veh animate [format["door_%1_rot",_door],1];
                        systemChat localize "STR_House_Door_Unlock";
                    };
                };
            } else {
                _locked = locked _veh;
                if (_veh in life_vehicles && player distance _veh < 8) then {
                    if (_locked isEqualTo 2) then {
                        if (local _veh) then {
                            _veh lock 0;

                            // BI
                            _veh animateDoor ["door_back_R",1];
                            _veh animateDoor ["door_back_L",1];
                            _veh animateDoor ['door_R',1];
                            _veh animateDoor ['door_L',1];
                            _veh animateDoor ['Door_L_source',1];
                            _veh animateDoor ['Door_rear',1];
                            _veh animateDoor ['Door_rear_source',1];
                            _veh animateDoor ['Door_1_source',1];
                            _veh animateDoor ['Door_2_source',1];
                            _veh animateDoor ['Door_3_source',1];
                            _veh animateDoor ['Door_LM',1];
                            _veh animateDoor ['Door_RM',1];
                            _veh animateDoor ['Door_LF',1];
                            _veh animateDoor ['Door_RF',1];
                            _veh animateDoor ['Door_LB',1];
                            _veh animateDoor ['Door_RB',1];
                            _veh animateDoor ['DoorL_Front_Open',1];
                            _veh animateDoor ['DoorR_Front_Open',1];
                            _veh animateDoor ['DoorL_Back_Open',1];
                            _veh animateDoor ['DoorR_Back_Open ',1];
                        } else {
                            [_veh,0] remoteExecCall ["life_fnc_lockVehicle",_veh];	

                            _veh animateDoor ["door_back_R",1];
                            _veh animateDoor ["door_back_L",1];
                            _veh animateDoor ['door_R',1];
                            _veh animateDoor ['door_L',1];
                            _veh animateDoor ['Door_L_source',1];
                            _veh animateDoor ['Door_rear',1];
                            _veh animateDoor ['Door_rear_source',1];
                            _veh animateDoor ['Door_1_source',1];
                            _veh animateDoor ['Door_2_source',1];
                            _veh animateDoor ['Door_3_source',1];
                            _veh animateDoor ['Door_LM',1];
                            _veh animateDoor ['Door_RM',1];
                            _veh animateDoor ['Door_LF',1];
                            _veh animateDoor ['Door_RF',1];
                            _veh animateDoor ['Door_LB',1];
                            _veh animateDoor ['Door_RB',1];
                            _veh animateDoor ['DoorL_Front_Open',1];
                            _veh animateDoor ['DoorR_Front_Open',1];
                            _veh animateDoor ['DoorL_Back_Open',1];
                            _veh animateDoor ['DoorR_Back_Open ',1];
                        };
                        systemChat localize "STR_MISC_VehUnlock";
                        [_veh,"UnlockCarSound"] remoteExec ["life_fnc_say3D",RANY];
                    } else {
                        if (local _veh) then {
                            _veh lock 2;

                            _veh animateDoor ["door_back_R",0];
                            _veh animateDoor ["door_back_L",0];
                            _veh animateDoor ['door_R',0];
                            _veh animateDoor ['door_L',0];
                            _veh animateDoor ['Door_L_source',0];
                            _veh animateDoor ['Door_rear',0];
                            _veh animateDoor ['Door_rear_source',0];
                            _veh animateDoor ['Door_1_source',0];
                            _veh animateDoor ['Door_2_source',0];
                            _veh animateDoor ['Door_3_source',0];
                            _veh animateDoor ['Door_LM',0];
                            _veh animateDoor ['Door_RM',0];
                            _veh animateDoor ['Door_LF',0];
                            _veh animateDoor ['Door_RF',0];
                            _veh animateDoor ['Door_LB',0];
                            _veh animateDoor ['Door_RB',0];
                            _veh animateDoor ['DoorL_Front_Open',0];
                            _veh animateDoor ['DoorR_Front_Open',0];
                            _veh animateDoor ['DoorL_Back_Open',0];
                            _veh animateDoor ['DoorR_Back_Open ',0];
                        } else {
                            [_veh,2] remoteExecCall ["life_fnc_lockVehicle",_veh];

                            _veh animateDoor ["door_back_R",0];
                            _veh animateDoor ["door_back_L",0];
                            _veh animateDoor ['door_R',0];
                            _veh animateDoor ['door_L',0];
                            _veh animateDoor ['Door_L_source',0];
                            _veh animateDoor ['Door_rear',0];
                            _veh animateDoor ['Door_rear_source',0];
                            _veh animateDoor ['Door_1_source',0];
                            _veh animateDoor ['Door_2_source',0];
                            _veh animateDoor ['Door_3_source',0];
                            _veh animateDoor ['Door_LM',0];
                            _veh animateDoor ['Door_RM',0];
                            _veh animateDoor ['Door_LF',0];
                            _veh animateDoor ['Door_RF',0];
                            _veh animateDoor ['Door_LB',0];
                            _veh animateDoor ['Door_RB',0];
                            _veh animateDoor ['DoorL_Front_Open',0];
                            _veh animateDoor ['DoorR_Front_Open',0];
                            _veh animateDoor ['DoorL_Back_Open',0];
                            _veh animateDoor ['DoorR_Back_Open ',0];
                        };
                        systemChat localize "STR_MISC_VehLock";
                        [_veh,"LockCarSound"] remoteExec ["life_fnc_say3D",RANY];
                    };
                };
            };
        };
    };
	
	// case 16:
		// (
			// if (_ctrlkey) then
			// {			
				// if (vehicle player != player) then {
					// [] spawn life_fnc_seatbelt;
				// };
				// _handled = true;
		// };
	
	/* case 2:
	{
		if (_shift) then 
				{
					[radio_shoutMessage_1, radio_textImg_1] call life_fnc_shoutSpeech;
				};

        if (_alt && (license_civ_rookieBountyHunter)) then { 
            [] call life_fnc_wantedMenuBH 
        }; 

        if (_ctrl && playerSide == civilian && (license_civ_rookieBountyHunter)) then {
             [] call life_fnc_radar;
        };
		
	};
	case 3:
	{
		if (_shift) then 
		{
			[radio_shoutMessage_2, radio_textImg_2] call life_fnc_shoutSpeech;
		};
	};	
	case 4:
	{
		if (_shift) then 
		{
			[radio_shoutMessage_4, radio_textImg_4] call life_fnc_shoutSpeech;
		};
	};
	case 5:
	{
		if (_shift) then 
		{
			[radio_shoutMessage_3, radio_textImg_3] call life_fnc_shoutSpeech;
		};
	};
	case 6:
	{
		if (_shift) then 
		{
			[radio_shoutMessage_3, radio_textImg_3] call life_fnc_shoutSpeech;
		};
	}; */
	
	//Disable Tactical View
    if (_code in (actionKeys "TacticalView")) then
        {
        hint "Command mode disabled!" ;
        _handled = true;
    };

	//Hand GESTURES 3-6
	case 79:
	{
		if(vehicle player isEqualTo player) then {
			if(!life_action_inUse) then {
				player playActionNow "gestureHi";
			};
		};
	};
	case 80:
	{
		if(vehicle player isEqualTo player) then {
			if(!life_action_inUse) then {
				player playActionNow "gestureHiC";
			};
		};
	};
	case 81:
	{
		if(vehicle player isEqualTo player) then {
			if(!life_action_inUse) then {
				player playActionNow "gestureHiB";
			};
		};
	};
	case 75:
	{
		if(vehicle player isEqualTo player) then {
			if(!life_action_inUse) then {
				player playActionNow "gesturenod";
			};
		};
	};
	
	case _speakKey:
	{
		if(getPlayerChannel player == 7) then {
			setCurrentChannel 5;
			hint "To talk change too direct communication..";
		};
		if(!life_is_speaking) then {
			life_is_speaking = true;
			if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then
			{
				if ((ctrlText ((findDisplay 63) displayCtrl 101) == localize "str_channel_direct")) then
				{
					player setVariable["speaking", true, true];
						[] spawn {
							waitUntil {(isNull findDisplay 63) && (isNull findDisplay 55)};
							player setVariable["speaking", false, true];
							life_is_speaking = false;
						};
				} else {
					player setVariable["speaking", false, true];
					life_is_speaking = false;
				};
			} else {
				player setVariable["speaking", false, true];
				life_is_speaking = false;
			};
		};
	};
	
};

_handled;
