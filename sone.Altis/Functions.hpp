class Socket_Reciever {
    tag = "SOCK";
    class SQL_Socket {
        file = "core\session";
        class dataQuery {};
        class insertPlayerInfo {};
        class requestReceived {};
        class syncData {};
        class updatePartial {};
        class updateRequest {};
    };
};

class Life_Client_Core {
    tag = "life";

    class Master_Directory {
        file = "core";
        class initCiv {};
        class initCop {};
        class initMedic {};
        class setupActions {};
        class setupEVH {};
        class survival {};
        class welcomeNotification {};
    };

    class Actions {
        
        file = "core\actions";
       
        class arrestAction {};
        class buyLicense {};
        class captureHideout {};
        class catchFish {};
        class dpFinish {};
        class dropFishingNet {};
        class escortAction {};
        class gather {};
        class getDPMission {};
        class gutAnimal {};
        class healHospital {};
        class impoundAction {}; // Impound car (Cop and Towing)
        class mine {}; // Mine
        class packupSpikes {}; // Spikestrips
        class pickupItem {}; // Pick up item
        class pickupMoney {}; // Pick up money with windows key
        class postBail {}; // Pay the bail
        class processAction {}; // Process the things you've got
        class pulloutAction {}; // Pullout bad guy
        class putInCar {}; // Put bad guy in Car
        class removeContainer {};
        class repairTruck {}; // Repair truck (civ / cop)
        class restrainAction {}; // Cop Restrain Action
        class robAction {}; // Rob player (Civ - Civ)
        class searchAction {}; // Search player action (Cop)
        class searchVehAction {}; // Search vehicles (Cop)
        class seizePlayerAction {}; // Cop can seize illegal items
        class serviceChopper {}; // Service helicopter
        class stopEscorting {}; // Cop - Stop Escorting
        class storeVehicle {}; // Store vehicle in Garage
        class surrender {}; // Surrender
        class ticketAction {}; // Give ticket action
        class unrestrain {}; // Cop unrestrain
		class seatbelt {};
        class newsBroadcast {}; // Channel 7 News
        class adminarrestAction {}; // Admin Arrest Action
        class civRestrainAction {}; // Civilian Restrain Action
        class robShops {}; // Rob Gas Station
		class captureOutlaw {};

        // Blindfold
        class blindfold {};
        class blindfoldRemove {};
    };

    class Sounds {
        file = "core\sounds";
        class robstationSound {};
        class lockpickSound {};
    };

    class sOne {
        file = "core\sOne";
        class autoMessages {};
    };

    class Admin {
        file = "core\admin";
        
        // Default Functions
        class adminCompensate {};
        class adminDebugCon {};
        class adminFreeze {};
        class admingetID {};
        class adminGodMode {};
        class adminid {};
        class admininfo {};
        class adminMarkers {};
        class adminMenu {};
        class adminQuery {};
        class adminSpectate {};
        class adminTeleport {};
        class adminTpHere {};
        class restart {};

        // Custom Functions
        class adminLoadout {}; // VR Suit - SimZor Added
        class adminarrestDialog_Arrest {}; // Admin Prison
        class adminshowArrestDialog {}; // Admin Prison
    };

    class Groups {
        file = "core\groups";
        class clientGroupKick {};
        class clientGroupLeader {};
        class createGroup {};
        class groupBrowser {};
        class groupManagement {};
        class groupMenu {};
        class joinGroup {};
        class kickGroup {};
        class leaveGroup {};
        class setGroupLeader {};
        class setGroupPass {};
    };

    class Civilian {
        file = "core\civilian";
        class civLoadout {};
        class civMarkers {};
        class demoChargeTimer {};
        class freezePlayer {};
        class jail {};
        class jailMe {};
        class knockedOut {};
        class RBknockedOut {}; // Rubber Bullets knockout
        class knockoutAction {};
        class RBknockoutAction {}; // Rubber Bullets knockout
        class removeLicenses {};
        class robPerson {};
        class robReceive {};
        class tazed {};
		class inJail {};
		class outOfJail {};
        class adminjail {}; // Administrator Naughty Jail
        class adminjailMe {}; // Administrator Naughty Jail
        class civInteractionMenu {}; // Interaction Menu
		class fuelManager {};
		class teleportPlayer {};
		class teleTimer {};
    };

    class Config {
        file = "core\config";
        class houseConfig {};
        class itemWeight {};
        class vehicleAnimate {};
        class vehicleWeightCfg {};
    };

    class Cop {
        file = "core\cop";
        class bountyReceive {};
        class containerInvSearch {};
        class copInteractionMenu {};
        class copLights {};
        class copLoadout {};
        class copMarkers {};
        class copSearch {};
        class copSiren {};
        class doorAnimate {};
        class fedCamDisplay {};
        class licenseCheck {};
        class licensesRead {};
        class questionDealer {};
        class radar {};
        class repairDoor {};
        class restrain {};
        class searchClient {};
        class seizeClient {};
        class sirenLights {};
        class spikeStripEffect {};
        class ticketGive {};
        class ticketPaid {};
        class ticketPay {};
        class ticketPrompt {};
        class vehInvSearch {};
        class wantedGrab {};
        class revokeLicense {};           // Revoke Civilian License
		class showArrestDialog {};
		class arrestDialog_Arrest {}; 
        class copHandheldRadar {};        // PO7 Radar
        class seizePlayerWeapon {};       // Seize Player Weapon
        class seizePlayerWeaponAction {}; // Seize Player Weapon (Action)
        class breathalyzer {};            // Breathalyzer
    };

    class Dialog_Controls {
        file = "dialog\function";
        class bankDeposit {};
        class bankTransfer {};
        class bankWithdraw {};
        class displayHandler {};
        class gangDeposit {};
        class gangWithdraw {};
        class garageLBChange {};
        class impoundMenu {};
        class progressBar {};
        class safeFix {};
        class safeInventory {};
        class safeOpen {};
        class safeTake {};
        class sellGarage {};
        class setMapPosition {};
        class spawnConfirm {};
        class spawnMenu {};
        class spawnPointCfg {};
        class spawnPointSelected {};
        class unimpound {};
        class vehicleGarage {};
        class wireTransfer {};
    };

    class BountyHunter {
        file = "core\bountyhunter";
        class BHarrestAction {};
        class bountyTip {};
    };

    class Functions    {
        file = "core\functions";
        class accType {};
        class actionKeyHandler {};
        class animSync {};
        class calWeightDiff {};
        class clearVehicleAmmo {};
        class dropItems {};
        class escInterupt {};
        class fetchCfgDetails {};
        class fetchDeadGear {};
        class fetchVehInfo {};
        class isDamaged {};
        class giveDiff {};
        class handleDamage {};
        class handleInv {};
        class handleItem {};
        class hideObj {};
        class hudSetup {};
        class hudUpdate {};
        class inventoryClosed {};
        class inventoryOpened {};
        class isUIDActive {};
        class keyHandler {};
        class loadDeadGear {};
        class loadGear {};
        class nearATM {};
        class nearestDoor {};
        class nearUnits {};
        class numberText {};
        class onFired {};
        class onTakeItem {};
        class playerSkins {};
        class playerTags {};
        class pullOutVeh {};
        class pushObject {};
        class receiveItem {};
        class receiveMoney {};
        class revealObjects {};
        class saveGear {};
        class searchPosEmpty {};
        class simDisable {};
        class stripDownPlayer {};
        class tazeSound {}; // Tazer Sound
        class ziptieSound {}; // Zipties Sound
        class knockoutSound {}; // Knockout Sound
        class radarSound {}; // Radar Sound for Cops
        class bankrobberySound {}; // Bank Robbery Sound for Cops
        class teleport {};
        class whereAmI {};
        class handcuffSound {}; // Handcuff sound
		class shoutSpeech {};
		class nlr {}; // NLR
        class autoSave {}; // Automatic Statsave
        class speaking {}; // Speaking Tag
		class gateopener {}; // Open Gates with Item gate opener
        class AAN {}; //  Channel 7 news
        class postNewsBroadcast {}; // Channel 7 news
		class playerCount {}; // Medic PlayerCount
		class teleTaxi {};
        class hudUpdateWanted {}; // Wanted HUD
        class blindfolded {}; // Blindfold
    };

    class licenses {
        file = "core\licenses";
        class licenseSwap {};
    };

    class Gangs    {
        file = "core\gangs";
        class createGang {};
        class gangCreated {};
        class gangDisband {};
        class gangDisbanded {};
        class gangInvite {};
        class gangInvitePlayer {};
        class gangKick {};
        class gangLeave {};
        class gangMenu {};
        class gangNewLeader {};
        class gangUpgrade {};
        class initGang {};
    };

    class Housing {
        file = "core\housing";
        class buyHouse {};
        class containerMenu {};
        class copBreakDoor {};
        class copHouseOwner {};
        class garageRefund {};
        class getBuildingPositions {};
        class houseMenu {};
        class initHouses {};
        class lightHouse {};
        class lightHouseAction {};
        class lockHouse {};
        class lockupHouse {};
        class placeContainer {};
        class PlayerInBuilding {};
        class raidHouse {};
        class sellHouse {};
    };

    class Items    {
        file = "core\items";
        class blastingCharge {};
        class boltcutter {};
        class defuseKit {};
        class flashbang {};
        class jerrycanRefuel {};
        class jerryRefuel {};
        class lockpick {};
        class placestorage {};
        class spikeStrip {};
        class storageBox {};
		class searchWreck {};
        class drinkbeer {};
        class drinkmoonshine {};
        class drinkwhiskey {};
    };

    class Medical_System {
        file = "core\medical";
        class deathScreen {};
        class medicLights {};
        class medicLoadout {};
        class medicMarkers {};
        class medicRequest {};
        class medicSiren {};
        class medicSirenLights {};
        class onPlayerKilled {};
        class onPlayerRespawn {};
        class requestMedic {};
        class respawned {};
        class revived {};
        class revivePlayer {};
    };

    class Network {
        file = "core\functions\network";
        class broadcast {};
        class corpse {};
        class jumpFnc {};
        class say3D {};
        class setFuel {};
        class soundDevice {};
    };

    class Player_Menu {
        file = "core\pmenu";
        class altisPhone {};
        class cellphone {};
        class giveItem {};
        class giveMoney {};
        class keyDrop {};
        class keyGive {};
        class keyMenu {};
        class p_openMenu {};
        class p_updateMenu {};
        class pardon {};
        class removeItem {};
        class s_onChar {};
        class s_onCheckedChange {};
        class s_onSliderChange {};
        class settingsMenu {};
        class updateViewDistance {};
        class useItem {};
        class wantedAddP {};
        class wantedInfo {};
        class wantedList {};
        class wantedMenu {};
        class movesMenu {};
       // class wantedMenuBH {};
    };

    class Shops    {
        file = "core\shops";
        class atmMenu {};
        class buyClothes {};
        class changeClothes {};
        class chopShopMenu {};
        class chopShopSelection {};
        class chopShopSell {};
        class clothingFilter {};
        class clothingMenu {};
        class fuelLBchange {};
        class fuelStatOpen {};
        class vehicleShop3DPreview {};
        class vehicleShopBuy {};
        class vehicleShopEnd3DPreview {};
        class vehicleShopInit3DPreview {};
        class vehicleShopLBChange {};
        class vehicleShopMenu {};
        class virt_buy {};
        class virt_menu {};
        class virt_sell {};
        class virt_update {};
        class weaponShopAccs {};
        class weaponShopBuySell {};
        class weaponShopFilter {};
        class weaponShopMags {};
        class weaponShopMenu {};
        class weaponShopSelection {};
    };

    class Vehicle {
        file = "core\vehicle";
        class addVehicle2Chain {};
        class colorVehicle {};
        class deviceMine {};
        class FuelRefuelcar {};
        class fuelStore {};
        class fuelSupply {};
        class lockVehicle {};
        class openInventory {};
        class vehiclecolor3DRefresh {};
        class vehicleOwners {};
        class vehicleWeight {};
        class vehInventory {};
        class vehStoreItem {};
        class vehTakeItem {};
        class vInteractionMenu {};
    };

    //Persistent Messages
    class CellPhone {
        file = "core\cellphone";
        class cellPhoneCheck {};
        class setupCellPhone {};
        class messagesMenu {};
        class lbChanged {};
        class deleteMessage {};
        class replyMessage {};
    };
	
	//Auction House
	class vAH
	{
		file = "core\vAH";
		class vAH_load;
		class vAH_buy;
		class vAH_reciever;
		class vAH_loadInventory;
		class vAH_sell;
		class vAH_checkItem;
		class vAH_takeBack;
		class vAH_select;
	};

     class CopPlaceables { // Police placeables
     
         file = "core\cop\placeables";
    
         class placeablesInit {}; // Initiates placeAbles
         class placeablesMenu {}; // PlaceAbles dialog menu
         class placeablesRemoveAll {}; // Remove all placeables
         class placeablePlace {}; // Place the placeables
         class placeableCancel {}; // Cancel the placeable action
         class placeablesPlaceComplete {}; // Placeables, complete placeable
     
     };
	 
	 class DynMarket
    {
        file = "core\DynMarket";
        class bought {};
        class update {};
        class DisplayPrices {};
        class LoadIntoListbox {};
        class ForcePrice {};
        class DYNMARKET_getPrice {};
    };

    class Cam
    {
       file ="core";
       class IntroCam {};
    };
    
};
