#define F(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};

#define ANYONE 0
#define CLIENT 1
#define SERVER 2
#define HC HC_Life

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 1;
#include "maverick\maverick_remoteExec_master.cpp"

        /* Client only functions */
        //Life functions
        F(life_fnc_addVehicle2Chain,CLIENT)
        F(life_fnc_adminid,CLIENT)
        F(life_fnc_admininfo,CLIENT)
        F(life_fnc_bountyReceive,CLIENT)
        F(life_fnc_copLights,CLIENT)
        F(life_fnc_copSearch,CLIENT)
        F(life_fnc_copSiren,CLIENT)
        F(life_fnc_freezePlayer,CLIENT)
        F(life_fnc_gangCreated,CLIENT)
        F(life_fnc_gangDisbanded,CLIENT)
        F(life_fnc_gangInvite,CLIENT)
        F(life_fnc_garageRefund,CLIENT)
        F(life_fnc_giveDiff,CLIENT)
        F(life_fnc_hideObj,CLIENT)
        F(life_fnc_impoundMenu,CLIENT)
        F(life_fnc_jail,CLIENT)
        F(life_fnc_jailMe,CLIENT)
        F(life_fnc_knockedOut,CLIENT)
        F(life_fnc_licenseCheck,CLIENT)
        F(life_fnc_licensesRead,CLIENT)
        F(life_fnc_lightHouse,CLIENT)
        F(life_fnc_mediclights,CLIENT)
        F(life_fnc_medicRequest,CLIENT)
        F(life_fnc_medicSiren,CLIENT)
        F(life_fnc_moveIn,CLIENT)
        F(life_fnc_pickupItem,CLIENT)
        F(life_fnc_pickupMoney,CLIENT)
        F(life_fnc_receiveItem,CLIENT)
        F(life_fnc_receiveMoney,CLIENT)
        F(life_fnc_removeLicenses,CLIENT)
        F(life_fnc_restrain,CLIENT)
        F(life_fnc_revived,CLIENT)
        F(life_fnc_robPerson,CLIENT)
        F(life_fnc_robReceive,CLIENT)
        F(life_fnc_searchClient,CLIENT)
        F(life_fnc_seizeClient,CLIENT)
        F(life_fnc_soundDevice,CLIENT)
        F(life_fnc_spikeStripEffect,CLIENT)
        F(life_fnc_tazeSound,CLIENT)

        //Groups
        F(life_fnc_clientGroupKick,CLIENT)
        F(life_fnc_clientGroupLeader,CLIENT)
        F(life_fnc_createGroup,CLIENT)
        F(life_fnc_groupBrowser,CLIENT)
        F(life_fnc_groupManagement,CLIENT)
        F(life_fnc_groupMenu,CLIENT)
        F(life_fnc_joinGroup,CLIENT)
        F(life_fnc_kickGroup,CLIENT)
        F(life_fnc_leaveGroup,CLIENT)
        F(life_fnc_setGroupLeader,CLIENT)
        F(life_fnc_setGroupPass,CLIENT)

        //Search Wreck
	    F(life_fnc_searchWreck,CLIENT)

        // Blindfold
        F(life_fnc_blindfold,CLIENT)
        F(life_fnc_blindfoldRemove,CLIENT)
        F(life_fnc_blindfolded,CLIENT)

        //Bounty Hunter
        F(life_fnc_BHarrestAction,CLIENT)
        F(life_fnc_RBknockedOut,CLIENT) // Rubber Bullets
        F(life_fnc_RBknockoutAction,CLIENT) // Rubber Bullets
        F(life_fnc_bountyTip,CLIENT) // Bounty Tip off
        F(life_fnc_wantedMenuBH,CLIENT)
		
		//Travel by bus
		F(life_fnc_teleTaxi,CLIENT)
        F(life_fnc_teleportPlayer,CLIENT)
	    F(life_fnc_teleTimer,CLIENT)

        //Breathalyzer
		F(life_fnc_breathalyzer,CLIENT)
        F(life_fnc_drinkMoonShine,CLIENT)
        F(life_fnc_drinkBeer,CLIENT)
        F(life_fnc_drinkWhiskey,CLIENT)
        
        // Sounds
        F(life_fnc_handcuffSound,CLIENT) // Handcuff sound - SimZor Date unknown
        F(life_fnc_ziptieSound,CLIENT) // Zipties Restrain Sound - SimZor 05.06.2016
        F(life_fnc_knockoutSound,CLIENT) // Knockout Sound - SimZor 05.06.2016
        F(life_fnc_robStationSound,CLIENT) // Gas Station Sound
        F(life_fnc_lockpickSound,CLIENT) // Lockpicking Car - Sound

        F(life_fnc_ticketPaid,CLIENT)
        F(life_fnc_ticketPrompt,CLIENT)
        F(life_fnc_vehicleAnimate,CLIENT)
        F(life_fnc_wantedList,CLIENT)
        F(life_fnc_wireTransfer,CLIENT)
        F(life_fnc_revokeLicence,CLIENT) // Revoke Licence Script
        F(life_fnc_setupCellPhone,CLIENT) // Persistent Messaging
        F(life_fnc_nlr,CLIENT) // New Life Rule
        F(life_fnc_adminLoadout,CLIENT) // Admin Loadout Scripts
        F(life_fnc_outOfJail,CLIENT) // Out of jail script
        F(life_fnc_inJail,CLIENT) // In jail script
        F(life_fnc_autoSave,CLIENT) // Auto saving script
		F(life_fnc_shoutSpeech,CLIENT) // Quickmsg
        F(life_fnc_robShops,CLIENT) // Rob shops
        F(life_fnc_movesMenu,CLIENT) // Moves Menu
        F(life_fnc_vAH_reciever,CLIENT) // Auction House Reciever
        F(life_fnc_adminjail,CLIENT) // Admin Jail
        F(life_fnc_adminjailMe,CLIENT) // Admin Jail
        F(life_fnc_radarSound,CLIENT) // Radarsound
        F(life_fnc_bankrobberySound,CLIENT) // Bank Robbery Sound
        F(life_fnc_handheldRadar,CLIENT) // Handheld Radar Cop
		F(life_fnc_vAH_buy,CLIENT) // Auction House 
		F(life_fnc_vAH_sell,CLIENT) // Auction House 
		F(life_fnc_vAH_takeBack,CLIENT) // Auction House
		
        // Admin Arrest 
        F(life_fnc_arrestDialog_Arrest,CLIENT) // Custom jail timer (Admin Prison)
		F(life_fnc_showArrestDialog,CLIENT) // Custom jail timer (Admin Prison)
        F(life_fnc_adminarrestDialog_Arrest,CLIENT) //Admin Jail
        F(life_fnc_adminshowArrestDialog,CLIENT) //Admin Jail
        F(life_fnc_adminarrestAction,CLIENT) // Admin Jail (Arrest Action)

        F(life_fnc_seatbelt,CLIENT) //  Seatbelt
        F(life_fnc_seizePlayerWeapon,CLIENT) // Seize civil players weapons
        F(life_fnc_seizePlayerWeaponAction,CLIENT) // Seize civil players weapons (action)
        F(life_fnc_AAN,CLIENT) // Channel 7 news
        F(life_fnc_nlrtimer,CLIENT) // NLR Timer
        F(life_fnc_civRestrainAction,CLIENT) // Civ Restrain Action
        F(life_fnc_civInteractionMenu,CLIENT) // Civ Restrain Action
		F(life_fnc_playerCount,CLIENT) // PlayerCount
        F(life_fnc_speaking,CLIENT) // Speaking tag
		
        //SOCK
        F(SOCK_fnc_dataQuery,CLIENT)
        F(SOCK_fnc_insertPlayerInfo,CLIENT)
        F(SOCK_fnc_requestReceived,CLIENT)
        F(SOCK_fnc_updateRequest,CLIENT)

        //TON
        F(TON_fnc_clientGangKick,CLIENT)
        F(TON_fnc_clientGangLeader,CLIENT)
        F(TON_fnc_clientGangLeft,CLIENT)
        F(TON_fnc_clientGetKey,CLIENT)
        F(TON_fnc_clientMessage,CLIENT)
        F(TON_fnc_player_query,CLIENT)
		F(TON_fnc_outOfJail,CLIENT) // Out of jail script
		F(TON_fnc_inJail,CLIENT)  // Out of jail script
		
        /* Server only functions */
        F(BIS_fnc_execVM,SERVER)
        F(DB_fnc_insertRequest,SERVER)
        F(DB_fnc_queryRequest,SERVER)
        F(DB_fnc_updatePartial,SERVER)
        F(DB_fnc_updateRequest,SERVER)

        // Persistent Messaging
        F(DB_fnc_cellPhoneRequest,SERVER)  // Request
        F(DB_fnc_saveCellPhone,SERVER)    // Cellphone Save to DB
        F(DB_fnc_getRealTime,SERVER)     // Real time

        F(life_fnc_jailSys,SERVER)
        F(life_fnc_wantedAdd,SERVER)
        F(life_fnc_wantedBounty,SERVER)
        F(life_fnc_wantedCrimes,SERVER)
        F(life_fnc_wantedFetch,SERVER)
        F(life_fnc_wantedProfUpdate,SERVER)
        F(life_fnc_wantedRemove,SERVER)
        F(SPY_fnc_cookieJar,SERVER)
        F(SPY_fnc_observe,SERVER)
        F(TON_fnc_addContainer,SERVER)
        F(TON_fnc_addHouse,SERVER)
        F(TON_fnc_chopShopSell,SERVER)
        F(TON_fnc_cleanupRequest,SERVER)
        F(TON_fnc_deleteDBContainer,SERVER)
        F(TON_fnc_getID,SERVER)
        F(TON_fnc_getVehicles,SERVER)
        F(TON_fnc_insertGang,SERVER)
        F(TON_fnc_keyManagement,SERVER)
        F(TON_fnc_managesc,SERVER)
        F(TON_fnc_pickupAction,SERVER)
        F(TON_fnc_removeGang,SERVER)
        F(TON_fnc_sellHouse,SERVER)
        F(TON_fnc_sellHouseContainer,SERVER)
        F(TON_fnc_setObjVar,SERVER)
        F(TON_fnc_spawnVehicle,SERVER)
        F(TON_fnc_spikeStrip,SERVER)
        F(TON_fnc_updateGang,SERVER)
        F(TON_fnc_updateHouseContainers,SERVER)
        F(TON_fnc_updateHouseTrunk,SERVER)
        F(TON_fnc_vehicleCreate,SERVER)
        F(TON_fnc_vehicleDelete,SERVER)
        F(TON_fnc_vehicleStore,SERVER)
        F(TON_fnc_vehicleUpdate,SERVER)
		F(ton_fnc_playerlogged,SERVER)
		F(ton_fnc_getupdate,SERVER)
		F(ton_fnc_vah_update,SERVER)
        F(life_fnc_getBounty,SERVER) // HUD Bounty
		
		
		//Custom jail time
		F(life_fnc_jailPlayer,SERVER)
		F(life_fnc_jailTimer,SERVER)
		
		
		//Auction house
		F(life_fnc_vAH_update,SERVER)

        /* HeadlessClient only functions */
        F(HC_fnc_addContainer,HC)
        F(HC_fnc_addHouse,HC)
        F(HC_fnc_chopShopSell,HC)
        F(HC_fnc_deleteDBContainer,HC)
        F(HC_fnc_getVehicles,HC)
        F(HC_fnc_insertGang,HC)
        F(HC_fnc_insertRequest,HC)
        F(HC_fnc_insertVehicle,HC)
        F(HC_fnc_jailSys,HC)
        F(HC_fnc_keyManagement,HC)
        F(HC_fnc_queryRequest,HC)
        F(HC_fnc_removeGang,HC)
        F(HC_fnc_sellHouse,HC)
        F(HC_fnc_sellHouseContainer,HC)
        F(HC_fnc_spawnVehicle,HC)
        F(HC_fnc_spikeStrip,HC)
        F(HC_fnc_updateGang,HC)
        F(HC_fnc_updateHouseContainers,HC)
        F(HC_fnc_updateHouseTrunk,HC)
        F(HC_fnc_updatePartial,HC)
        F(HC_fnc_updateRequest,HC)
        F(HC_fnc_vehicleCreate,HC)
        F(HC_fnc_vehicleDelete,HC)
        F(HC_fnc_vehicleStore,HC)
        F(HC_fnc_vehicleUpdate,HC)
        F(HC_fnc_wantedAdd,HC)
        F(HC_fnc_wantedBounty,HC)
        F(HC_fnc_wantedCrimes,HC)
        F(HC_fnc_wantedFetch,HC)
        F(HC_fnc_wantedProfUpdate,HC)
        F(HC_fnc_wantedRemove,HC)

        /* Functions for everyone */
        F(BIS_fnc_effectKilledAirDestruction,ANYONE)
        F(BIS_fnc_effectKilledSecondaries,ANYONE)
        F(life_fnc_animSync,ANYONE)
        F(life_fnc_broadcast,ANYONE)
        F(life_fnc_colorVehicle,ANYONE)
        F(life_fnc_corpse,ANYONE)
        F(life_fnc_demoChargeTimer,ANYONE)
        F(life_fnc_flashbang,ANYONE)
        F(life_fnc_jumpFnc,ANYONE)
        F(life_fnc_lockVehicle,ANYONE)
        F(life_fnc_pulloutVeh,ANYONE)
        F(life_fnc_say3D,ANYONE)
        F(life_fnc_setFuel,ANYONE)
        F(life_fnc_simDisable,ANYONE)
        F(SPY_fnc_notifyAdmins,ANYONE)

    };

    class Commands {
        mode = 1;
        jip = 0;

        F(addHandgunItem,ANYONE)
        F(addMagazine,ANYONE)
        F(addPrimaryWeaponItem,ANYONE)
        F(addWeapon,ANYONE)
        F(setFuel,ANYONE)
    };
};
