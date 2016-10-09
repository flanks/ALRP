/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 06;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 03;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = false; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Your prices have been updated!",
	"The new prices are being calculated by the server..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████

DYNMARKET_Items_Groups =
[
	["Legal",
		[
			["apple",-1,10,50],
			["banana",-1,10,50],
			["peach",-1,30,100],
			["coconut",-1,60,130],
			["sugar",-1,850,1250],
			["bottledBeer",-1,800,500],
			["bottledShine",-1,1000,650],
			["bottledWhiskey",-1,1200,800]
		],
		0.5
	],
	["Illegal", 
		[
			["heroin_processed",-1,4500,8000],
			["marijuana",-1,3500,7500],
			["cocaine_processed",-1,5500,13500],
			["turtle_raw",-1,5000,10000]
			
		],
		0.5
	],
	["AntiqueIllegal", 
		[
			["ruby",-1,1500,5500],
			["pearl",-1,5500,10000],
			["doubloon",-1,500,3200],
			["silverpiece",-1,250,2000],
			["lockpick",-1,1000,1500]
		],
		0.5
	],
	["minerals", 
		[
			["copper_refined",-1,1800,2200],
			["iron_refined",-1,2500,3300],
			["salt_refined",-1,1900,3800],
			["glass",-1,2550,4000],
			["cement",-1,1800,3000],
			["diamond_cut",-1,2700,4700]
		],
		0.5
	],
	["fish", 
		[
			["tuna_raw",-1,4900,7000],
			["ornate_raw",-1,200,590],
			["mackerel_raw",-1,800,1700],
			["mullet_raw",-1,1000,2500],
			["salema_raw",-1,200,650],
			["catshark_raw",-1,1500,3000]
		],
		0.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        = 
[

	["apple",25],
	["banana",25],
	["sugar",500],
	["peach",50],
	["coconut",95],
	["rabbit_raw",250],
	["ornate_raw",290],
	["mackerel_raw",290],
	["salema_raw",290],
	["tuna_raw",800],
	["mullet_raw",290],
	["catshark_raw",1100],
	["turtle_soup",200],
	["hen_raw",200],
	["rooster_raw",210],
	["sheep_raw",210],
	["goat_raw",155],
	["bottledBeer",800],
	["bottledShine",1000],
	["bottledWhiskey",1200],

	["ruby",500],
    ["pearl",500],
	["doubloon",500],
	["silverpiece",250],

	["goldbar",150000],
	
	["oil_processed",1200],
	["copper_refined",1700],
	["iron_refined",1650],
	["salt_refined",700],
	["glass",600],
	["diamond_cut",2530],
	["cement",2350],
	
	["lockpick",1500],
	
	
	
	["turtle_raw",3000],
	["heroin_processed",4900],
	["marijuana",2500],
	["cocaine_processed",10300]
];

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
