/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*/
class VirtualShops {
    //Virtual Shops
    class market {
        name = "STR_Shops_Market";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "excavator","tongs","bottledBeer","bottledWhiskey","bottledShine","banana","waterBottle", "coconut", "rabbit", "apple", "redgull", "tbacon", "pickaxe", "toolkit", "fuelFull", "peach", "storagesmall", "storagebig", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw","cloth","leather","straps" };
    };

    class commodities {
        name = "STR_Shops_Commodities";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "sugar" };
    };

    class bh {
        name = "STR_Shops_BH";
        side = "civ";
        license = "rookieBountyHunter";
        level[] = { "", "", -1, "" };
        items[] = { "blindfold","zipties","waterBottle","redgull","toolkit","defibrillator","tbacon" };
    };
	
	class antique {
        name = "STR_Shops_antique";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "ruby","pearl","doubloon","silverpiece","diamondCut" };
    };
	
	class busticket {
        name = "STR_Shops_busticket";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "busticket" };
    };

    class med_market {
        name = "STR_Shops_Market";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "coconut","rabbit", "apple", "redgull", "tbacon", "toolkit", "fuelFull", "peach", "defibrillator","gateopener","coffee", "donuts" };
    };

    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = { "blindfold","zipties","tongs","spikeStrip", "waterBottle", "coconut", "rabbit", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "peach", "boltcutter", "blastingcharge","codeCracker","gateopener" };
    };

    class blackmarket {
        name = "STR_Shops_BlackMarket";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "blindfold","zipties","tongs","waterBottle", "coconut", "rabbit", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "peach", "boltcutter", "blastingcharge", "spikeStrip" };
    };

    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "waterBottle", "coconut", "rabbit", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "toolkit", "fuelFull", "peach", "boltcutter", "blastingcharge","codeCracker" };
    };

    class wongs {
        name = "STR_Shops_Wongs";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "turtle_soup", "turtle_raw" };
    };

    class coffee {
        name = "STR_Shops_Coffee";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coffee", "donuts" };
    };

    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {  "coffee", "coconut", "donuts", "redgull", "toolkit", "fuelFull"};
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cocaine_processed", "heroin_processed", "marijuana","tobacco_processed" };
    };

    class oil {
        name = "STR_Shops_Oil";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "oil_processed", "pickaxe", "fuelFull" };
    };

    class fishmarket {
        name = "STR_Shops_FishMarket";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
    };

    class glass {
        name = "STR_Shops_Glass";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "glass" };
    };

    class iron  {
        name = "STR_Shops_Minerals";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "iron_refined", "copper_refined" };
    };

    class diamond {
        name = "STR_Shops_Diamond";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "diamond_uncut", "diamond_cut" };
    };

    class salt {
        name = "STR_Shops_Salt";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "salt_refined" };
    };

    class cement {
        name = "STR_Shops_Cement";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "cement" };
    };

    class gold {
        name = "STR_Shops_Gold";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "goldbar" };
    };

    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "coconut", "donuts", "coffee", "spikeStrip", "waterBottle", "rabbit", "apple", "redgull", "toolkit", "fuelFull", "defusekit", "defibrillator","gateopener" };
    };
	
	class counterfitCash {
        name = "STR_Shops_CounterfitCash";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "counterfitCash" };
	};
	
	class uranium {
        name = "STR_MAR_Uranium_Trader";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "uranium_refined" };
    };
	
	class ruby {
        name = "STR_Shops_Ruby";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = { "ruby_refined" };
    };
	
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/
class VirtualItems {
    //Virtual Items

    //Misc
	class excavator {
        variable = "excavator";
        displayName = "STR_Item_Excavator";
        weight = 10;
        buyPrice = 1000;
        sellPrice = 1000;
        illegal = false;
        edible = -1;
        icon = "icons\excavator.paa";
    };
	
    class pickaxe {
        variable = "pickaxe";
        displayName = "STR_Item_Pickaxe";
        weight = 2;
        buyPrice = 2500;
        sellPrice = 1000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_pickaxe.paa";
    };

    class defibrillator {
        variable = "defibrillator";
        displayName = "STR_Item_Defibrillator";
        weight = 4;
        buyPrice = 900;
        sellPrice = 450;
        illegal = true;
        edible = -1;
        icon = "icons\ico_defibrillator.paa";
    };

    class toolkit {
        variable = "toolkit";
        displayName = "STR_Item_Toolkit";
        weight = 4;
        buyPrice = 500;
        sellPrice = 100;
        illegal = false;
        edible = -1;
        icon = "\a3\weapons_f\items\data\UI\gear_toolkit_ca.paa";
    };

    class fuelEmpty {
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 2;
        buyPrice = -1;
        sellPrice = 10;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuelEmpty.paa";
    };

    class fuelFull {
        variable = "fuelFull";
        displayName = "STR_Item_FuelF";
        weight = 5;
        buyPrice = 850;
        sellPrice = 500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuel.paa";
    };

    class spikeStrip {
        variable = "spikeStrip";
        displayName = "STR_Item_SpikeStrip";
        weight = 15;
        buyPrice = 80000;
        sellPrice = 1000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_spikeStrip.paa";
    };

    class lockpick {
        variable = "lockpick";
        displayName = "STR_Item_Lockpick";
        weight = 1;
        buyPrice = 2500;
        sellPrice = 1500;
        illegal = true;
        edible = -1;
        icon = "icons\ico_lockpick.paa";
    };

    class goldbar {
        variable = "goldBar";
        displayName = "STR_Item_GoldBar";
        weight = 15;
        buyPrice = -1;
        sellPrice = 150000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_goldBar.paa";
    };

    class blastingcharge {
        variable = "blastingCharge";
        displayName = "STR_Item_BCharge";
        weight = 15;
        buyPrice = 35000;
        sellPrice = 10000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_blastingCharge.paa";
    };

    //Alcohol
    class bottledShine {
        variable = "bottledShine";
        displayName = "STR_Item_shine";
        weight = 1;
        buyPrice = 1000;
        sellPrice = 650;
        illegal = false;
        edible = -1;
        icon = "icons\ico_blastingCharge.paa";
    };

    class bottledWhiskey {
        variable = "bottledWhiskey";
        displayName = "STR_Item_whiskey";
        weight = 1;
        buyPrice = 1200;
        sellPrice = 800;
        illegal = false;
        edible = -1;
        icon = "icons\ico_whiskey.paa";
    };

    class bottledBeer {
        variable = "bottledBeer";
        displayName = "STR_Item_beer";
        weight = 1;
        buyPrice = 800;
        sellPrice = 500;
        illegal = false;
        edible = -1;
        icon = "icons\ico_beer.paa";
    };

    class boltcutter {
        variable = "boltCutter";
        displayName = "STR_Item_BCutter";
        weight = 5;
        buyPrice = 7500;
        sellPrice = 1000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_boltCutter.paa";
    };

    class defusekit {
        variable = "defuseKit";
        displayName = "STR_Item_DefuseKit";
        weight = 2;
        buyPrice = 2500;
        sellPrice = 2000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_defuseKit.paa";
    };

    class storagesmall {
        variable = "storageSmall";
        displayName = "STR_Item_StorageBS";
        weight = 5;
        buyPrice = 75000;
        sellPrice = 50000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

    class storagebig {
        variable = "storageBig";
        displayName = "STR_Item_StorageBL";
        weight = 10;
        buyPrice = 150000;
        sellPrice = 125000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageBig.paa";
    };

    //Mined Items
    class oil_unprocessed {
        variable = "oilUnprocessed";
        displayName = "STR_Item_OilU";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilUnprocessed.paa";
    };

    class oil_processed {
        variable = "oilProcessed";
        displayName = "STR_Item_OilP";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3200;
        illegal = false;
        edible = -1;
        icon = "icons\ico_oilProcessed.paa";
    };

    class copper_unrefined {
        variable = "copperUnrefined";
        displayName = "STR_Item_CopperOre";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_copperOre.paa";
    };

    class copper_refined {
        variable = "copperRefined";
        displayName = "STR_Item_CopperIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 2000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_copper.paa";
    };

    class iron_unrefined {
        variable = "ironUnrefined";
        displayName = "STR_Item_IronOre";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_ironOre.paa";
    };

    class iron_refined {
        variable = "ironRefined";
        displayName = "STR_Item_IronIngot";
        weight = 3;
        buyPrice = -1;
        sellPrice = 2400;
        illegal = false;
        edible = -1;
        icon = "icons\ico_iron.paa";
    };

    class salt_unrefined {
        variable = "saltUnrefined";
        displayName = "STR_Item_Salt";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltUnprocessed.paa";
    };

    class salt_refined {
        variable = "saltRefined";
        displayName = "STR_Item_SaltR";
        weight = 3;
        buyPrice = -1;
        sellPrice = 1100;
        illegal = false;
        edible = -1;
        icon = "icons\ico_saltProcessed.paa";
    };

    class sand {
        variable = "sand";
        displayName = "STR_Item_Sand";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_sand.paa";
    };

    class glass {
        variable = "glass";
        displayName = "STR_Item_Glass";
        weight = 2;
        buyPrice = -1;
        sellPrice = 1000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_glass.paa";
    };

    class diamond_uncut {
        variable = "diamondUncut";
        displayName = "STR_Item_DiamondU";
        weight = 4;
        buyPrice = -1;
        sellPrice = 750;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondUncut.paa";
    };

    class diamond_cut {
        variable = "diamondCut";
        displayName = "STR_Item_DiamondC";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_diamondCut.paa";
    };

    class rock {
        variable = "rock";
        displayName = "STR_Item_Rock";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_rock.paa";
    };

    class cement {
        variable = "cement";
        displayName = "STR_Item_CementBag";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = false;
        edible = -1;
        icon = "icons\ico_cement.paa";
    };

    //Drugs
    class heroin_unprocessed {
        variable = "heroinUnprocessed";
        displayName = "STR_Item_HeroinU";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinUnprocessed.paa";
        processedItem = "heroin_processed";
    };

    class heroin_processed {
        variable = "heroinProcessed";
        displayName = "STR_Item_HeroinP";
        weight = 4;
        buyPrice = -1;
        sellPrice = 3500;
        illegal = true;
        edible = -1;
        icon = "icons\ico_heroinProcessed.paa";
    };

    class sugar {
        variable = "sugar";
        displayName = "STR_Item_sugar";
        weight = 1;
        buyPrice = -1;
        sellPrice = 500;
        illegal = false;
        edible = -1;
        icon = "icons\sugar.paa";
    };

    class sugarCane {
        variable = "sugarCane";
        displayName = "STR_Item_sugarCane";
        weight = 3;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\sugarcane.paa";
    };

    class cannabis {
        variable = "cannabis";
        displayName = "STR_Item_Cannabis";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cannabis.paa";
        processedItem = "marijuana";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_Item_Marijuana";
        weight = 4;
        buyPrice = -1;
        sellPrice = 2500;
        illegal = true;
        edible = -1;
        icon = "icons\ico_marijuana.paa";
    };

    class cocaine_unprocessed {
        variable = "cocaineUnprocessed";
        displayName = "STR_Item_CocaineU";
        weight = 6;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineUnprocessed.paa";
        processedItem = "cocaine_processed";
    };

    class cocaine_processed {
        variable = "cocaineProcessed";
        displayName = "STR_Item_CocaineP";
        weight = 4;
        buyPrice = -1;
        sellPrice = 5500;
        illegal = true;
        edible = -1;
        icon = "icons\ico_cocaineProcessed.paa";
    };

    //Drink
    class redgull {
        variable = "redgull";
        displayName = "STR_Item_RedGull";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 200;
        illegal = false;
        edible = 100;
        icon = "icons\ico_redgull.paa";
    };

    class coffee {
        variable = "coffee";
        displayName = "STR_Item_Coffee";
        weight = 1;
        buyPrice = 10;
        sellPrice = 5;
        illegal = false;
        edible = 100;
        icon = "icons\ico_coffee.paa";
    };

    class waterBottle {
        variable = "waterBottle";
        displayName = "STR_Item_WaterBottle";
        weight = 1;
        buyPrice = 10;
        sellPrice = 5;
        illegal = false;
        edible = 100;
        icon = "icons\ico_waterBottle.paa";
    };

    //Food
    class apple {
        variable = "apple";
        displayName = "STR_Item_Apple";
        weight = 1;
        buyPrice = 65;
        sellPrice = 10;
        illegal = false;
        edible = 10;
        icon = "icons\ico_apple.paa";
    };

    class banana {
        variable = "banana";
        displayName = "STR_Item_Banana";
        weight = 1;
        buyPrice = 65;
        sellPrice = 10;
        illegal = false;
        edible = 10;
        icon = "icons\ico_banana.paa";
    };

    class peach {
        variable = "peach";
        displayName = "STR_Item_Peach";
        weight = 1;
        buyPrice = 102;
        sellPrice = 30;
        illegal = false;
        edible = 10;
        icon = "icons\ico_peach.paa";
    };

    class coconut {
        variable = "coconut";
        displayName = "STR_Item_Coconut";
        weight = 1;
        buyPrice = 138;
        sellPrice = 60;
        illegal = false;
        edible = 10;
        icon = "icons\ico_peach.paa";
    };

    class tbacon {
        variable = "tbacon";
        displayName = "STR_Item_TBacon";
        weight = 1;
        buyPrice = 75;
        sellPrice = 25;
        illegal = false;
        edible = 40;
        icon = "icons\ico_tBacon.paa";
    };

    class donuts {
        variable = "donuts";
        displayName = "STR_Item_Donuts";
        weight = 1;
        buyPrice = 120;
        sellPrice = 60;
        illegal = false;
        edible = 30;
        icon = "icons\ico_donuts.paa";
    };

    class rabbit_raw {
        variable = "rabbitRaw";
        displayName = "STR_Item_RabbitRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = -1;
        icon = "icons\ico_rabbitRaw.paa";
    };

    class rabbit {
        variable = "rabbit";
        displayName = "STR_Item_Rabbit";
        weight = 1;
        buyPrice = 150;
        sellPrice = 115;
        illegal = false;
        edible = 20;
        icon = "icons\ico_rabbit.paa";
    };

    class salema_raw {
        variable = "salemaRaw";
        displayName = "STR_Item_SalemaRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 45;
        illegal = false;
        edible = -1;
        icon = "icons\ico_salemaRaw.paa";
    };

    class salema {
        variable = "salema";
        displayName = "STR_Item_Salema";
        weight = 1;
        buyPrice = 75;
        sellPrice = 55;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedFish.paa";
    };

    class ornate_raw {
        variable = "ornateRaw";
        displayName = "STR_Item_OrnateRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 40;
        illegal = false;
        edible = -1;
        icon = "icons\ico_ornateRaw.paa";
    };

    class ornate {
        variable = "ornate";
        displayName = "STR_Item_Ornate";
        weight = 1;
        buyPrice = 175;
        sellPrice = 150;
        illegal = false;
        edible = 25;
        icon = "icons\ico_cookedFish.paa";
    };

    class mackerel_raw {
        variable = "mackerelRaw";
        displayName = "STR_Item_MackerelRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 175;
        illegal = false;
        edible = -1;
        icon = "icons\ico_mackerelRaw.paa";
    };

    class mackerel {
        variable = "mackerel";
        displayName = "STR_Item_Mackerel";
        weight = 2;
        buyPrice = 250;
        sellPrice = 200;
        illegal = false;
        edible = 30;
        icon = "icons\ico_cookedFish.paa";
    };

    class tuna_raw {
        variable = "tunaRaw";
        displayName = "STR_Item_TunaRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 700;
        illegal = false;
        edible = -1;
        icon = "icons\ico_tunaRaw.paa";
    };

    class tuna {
        variable = "tuna";
        displayName = "STR_Item_Tuna";
        weight = 3;
        buyPrice = 1250;
        sellPrice = 1000;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedFish.paa";
    };

    class mullet_raw {
        variable = "mulletRaw";
        displayName = "STR_Item_MulletRaw";
        weight = 4;
        buyPrice = -1;
        sellPrice = 250;
        illegal = false;
        edible = -1;
        icon = "icons\ico_mulletRaw.paa";
    };

    class mullet {
        variable = "mullet";
        displayName = "STR_Item_Mullet";
        weight = 2;
        buyPrice = 600;
        sellPrice = 400;
        illegal = false;
        edible = 80;
        icon = "icons\ico_cookedFish.paa";
    };		

    class catshark_raw {
        variable = "catsharkRaw";
        displayName = "STR_Item_CatSharkRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 300;
        illegal = false;
        edible = -1;
        icon = "icons\ico_catsharkRaw.paa";
    };

    class catshark {
        variable = "catshark";
        displayName = "STR_Item_CatShark";
        weight = 3;
        buyPrice = 750;
        sellPrice = 500;
        illegal = false;
        edible = 100;
        icon = "icons\ico_cookedFish.paa";
    };

    class turtle_raw {
        variable = "turtleRaw";
        displayName = "STR_Item_TurtleRaw";
        weight = 6;
        buyPrice = -1;
        sellPrice = 3000;
        illegal = true;
        edible = -1;
        icon = "icons\ico_turtleRaw.paa";
    };

    class turtle_soup {
        variable = "turtleSoup";
        displayName = "STR_Item_TurtleSoup";
        weight = 2;
        buyPrice = 1000;
        sellPrice = 750;
        illegal = false;
        edible = 100;
        icon = "icons\ico_turtleSoup.paa";
    };

    class hen_raw {
        variable = "henRaw";
        displayName = "STR_Item_HenRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "icons\ico_wholeChickenRaw.paa";
    };

    class hen {
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 1;
        buyPrice = 115;
        sellPrice = 85;
        illegal = false;
        edible = 65;
        icon = "icons\ico_wholeChicken.paa";
    };

    class rooster_raw {
        variable = "roosterRaw";
        displayName = "STR_Item_RoosterRaw";
        weight = 1;
        buyPrice = -1;
        sellPrice = 65;
        illegal = false;
        edible = -1;
        icon = "icons\ico_chickenDrumstickRaw.paa";
    };

    class rooster {
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 115;
        buyPrice = 90;
        sellPrice = 85;
        illegal = false;
        edible = 45;
        icon = "icons\ico_chickenDrumstick.paa";
    };

    class sheep_raw {
        variable = "sheepRaw";
        displayName = "STR_Item_SheepRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 95;
        illegal = false;
        edible = -1;
        icon = "icons\ico_lambChopRaw.paa";
    };

    class sheep {
        variable = "sheep";
        displayName = "STR_Item_Sheep";
        weight = 2;
        buyPrice = 155;
        sellPrice = 115;
        illegal = false;
        edible = 100;
        icon = "icons\ico_lambChop.paa";
    };

    class goat_raw {
        variable = "goatRaw";
        displayName = "STR_Item_GoatRaw";
        weight = 2;
        buyPrice = -1;
        sellPrice = 115;
        illegal = false;
        edible = -1;
        icon = "icons\ico_muttonLegRaw.paa";
    };

    class blindfold {
        variable = "blindfold";
        displayName = "STR_Item_blindfold";
        weight = 0;
        buyPrice = 4000;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\ico_blindfold.paa";
    };

    class goat {
        variable = "goat";
        displayName = "STR_Item_Goat";
        weight = 2;
        buyPrice = 175;
        sellPrice = 135;
        illegal = false;
        edible = 100;
        icon = "icons\ico_muttonLeg.paa";
    };
	
   class zipties {
        variable = "zipties";
        displayName = "STR_Item_zipties";
        weight = 2;
        buyPrice = 1000;
        sellPrice = 800;
        illegal = true;
        edible = 100;
        icon = "icons\ico_zipties.paa";
    };
	
    class tongs {
        variable = "tongs";
        displayName = "STR_Item_tongs";
        weight = 2;
        buyPrice = 300;
        sellPrice = 100;
        illegal = false;
        edible = 100;
        icon = "icons\ico_boltCutter.paa";
    };
	
		class gateopener {
        variable = "gateopener";
        displayName = "STR_Item_gateopener";
        weight = 1;
        buyPrice = 500;
        sellPrice = 150;
        illegal = false;
        edible = 100;
        icon = "icons\remote.paa";
    };
	
		class silverpiece {
        variable = "silverpiece";
        displayName = "STR_Item_silverpiece";
        weight = 5;
        buyPrice = -1;
        sellPrice = 650;
        illegal = false;
        edible = 100;
        icon = "icons\silverpiece.paa";
    };
	
		class doubloon {
        variable = "doubloon";
        displayName = "STR_Item_doubloon";
        weight = 5;
        buyPrice = -1;
        sellPrice = 950;
        illegal = false;
        edible = 100;
        icon = "icons\doubloon.paa";
    };
	
	class pearl {
        variable = "pearl";
        displayName = "STR_Item_pearl";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1650;
        illegal = false;
        edible = 100;
        icon = "icons\pearl.paa";
    };
	
	class ruby {
        variable = "ruby";
        displayName = "STR_Item_ruby";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1650;
        illegal = false;
        edible = 100;
        icon = "icons\ruby.paa";
    };	
	
	class busticket {
        variable = "busticket";
        displayName = "STR_Item_busticket";
        weight = 1;
        buyPrice = 500;
        sellPrice = 50;
        illegal = false;
        edible = 100;
        icon = "";
    };	
	
	class codeCracker {
        variable = "codeCracker";
        displayName = "STR_Item_codeCracker";
        weight = 2;
        buyPrice = 14000;
        sellPrice = 5000;
        illegal = true;
        edible = -1;
        icon = "icons\codeCracker.paa";
};

class counterfitCash {
        variable = "counterfitCash";
        displayName = "STR_Item_counterfitCash";
        weight = 15;
        buyPrice = -1;
        sellPrice = 52500;
        illegal = true;
        edible = -1;
        icon = "icons\counterfitCash.paa";
};
	class uranium_unrefined {
        variable = "uraniumUnrefined";
        displayName = "STR_Item_UraniumOre";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "icons\uranium_ore.paa";
    };

    class uranium_refined {
        variable = "uraniumRefined";
        displayName = "STR_Item_Uranium";
        weight = 3;
        buyPrice = -1;
        sellPrice = 3200;
        illegal = true;
        edible = -1;
        icon = "icons\uranium_rod.paa";
    };	
	
	class cloth {
        variable = "cloth";
        displayName = "STR_Item_cloth";
        weight = 1;
        buyPrice = -1;
        sellPrice = 100;
        illegal = false;
        edible = -1;
        icon = "icons\cloth.paa";
    };
	
	class leather {
        variable = "leather";
        displayName = "STR_Item_leather";
        weight = 1;
        buyPrice = -1;
        sellPrice = 200;
        illegal = false;
        edible = -1;
        icon = "icons\leather.paa";
    };
	
	class straps {
        variable = "straps";
        displayName = "STR_Item_straps";
        weight = 1;
        buyPrice = 50;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\straps.paa";
    };
	
	class screws {
        variable = "screws";
        displayName = "STR_Item_screws";
        weight = 0;
        buyPrice = -1;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\screw.paa";
    };
	
	class bolts {
        variable = "bolts";
        displayName = "STR_Item_bolts";
        weight = 0;
        buyPrice = -1;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\bolt.paa";
    };
	
	class trigger {
        variable = "trigger";
        displayName = "STR_Item_trigger";
        weight = 1;
        buyPrice = -1;
        sellPrice = 50;
        illegal = true;
        edible = -1;
        icon = "icons\trigger.paa";
    };
	
	class coal {
        variable = "coal";
        displayName = "STR_Item_coal";
        weight = 1;
        buyPrice = -1;
        sellPrice = 50;
        illegal = true;
        edible = -1;
        icon = "icons\coalr.paa";
    };
	
	class sulfur {
        variable = "sulfur";
        displayName = "STR_Item_sulfur";
        weight = 1;
        buyPrice = -1;
        sellPrice = 50;
        illegal = true;
        edible = -1;
        icon = "icons\sulfur.paa";
    };
	
	class gunpowder {
        variable = "gunpowder";
        displayName = "STR_Item_gunpowder";
        weight = 1;
        buyPrice = -1;
        sellPrice = 50;
        illegal = true;
        edible = -1;
        icon = "icons\gunpowder.paa";
    };
	 
	 class ruby_raw {
        variable = "ruby_raw";
        displayName = "STR_Item_RubyRaw";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\rubyr.paa";
    };

    class ruby_refined {
        variable = "ruby_refined";
        displayName = "STR_Item_Ruby";
        weight = 4;
        buyPrice = -1;
        sellPrice = 5500;
        illegal = false;
        edible = -1;
        icon = "icons\ruby1.paa";
    };
	
    class tobacco_unprocessed {
        variable = "tobaccoUnprocessed";
        displayName = "STR_Item_TobaccoU";
        weight = 4;
        buyPrice = -1;
        sellPrice = -1;
        illegal = true;
        edible = -1;
        icon = "";
        processedItem = "tobacco_processed";
    };
    class tobacco_processed {
        variable = "tobaccoProcessed";
        displayName = "STR_Item_Tobacco";
        weight = 2;
        buyPrice = -1;
        sellPrice = 3500;
        illegal = true;
        edible = -1;
        icon = "";
    };	
	
};
