/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 6500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 45000, -1 },
            { "hgun_Pistol_01_F", "", 16000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 },
            { "16Rnd_9x21_Mag", "", 1000 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500 },
            { "item_optic_ERCO_blk_F", "", 2500 },
            { "item_muzzle_snds_58_blk_F", "", 2500 }
        };
    };

    /*---------------------------- Start of Bounty Hunter Shops ----------------------*/ 
 
    //Bounty Hunter Shop 
    class rookieBH { 
        name = "Bounty Hunter - Shop"; 
        side = "civ"; 
        license = "rookieBountyHunter"; 
        level[] = { "", "", -1, "" }; 
        items[] = { 
            { "hgun_P07_snds_F",                    "P07 Taser Pistol",            5000,    -1 },  // P07 Taser 
            { "SMG_05_F",                           "Rubber Bullet Protector 9",   20000,   -1 },  // Protector 9 w/ Rubber Bullets 
            { "arifle_SPAR_01_khk_F",               "Rubber Bullet SPAR-16 Khaki", 90000, -1 },    // SPAR-16     - 5.56 mm - Rubber Bullets 
            { "arifle_MX_Black_F",                  "Rubber Bullet MX Black",      95000, -1 }     // MX          - 6.5 mm  - Rubber Bullets 
        }; 
        mags[] = { 
            { "16Rnd_9x21_Mag",                     "P07 Rubbers",               50,    -1 }, // P07 Taser Rounds 
            { "30Rnd_9x21_Mag_SMG_02_Tracer_Green", "Protector 9 Rubbers",       100,   -1 }, // Protector 9 - Rubber Bullets - Green Tracers 
            { "30Rnd_556x45_Stanag_Tracer_Green",   "5.56 Rubbers",              400,   -1 }, // SPAR-16     - Rubber Bullets - Green Tracers 
            { "30Rnd_556x45_Stanag",                "5.56 Lethal",               400,   -1 }, // SPAR-16     - Rubber Bullets - Green Tracers 
            { "30Rnd_65x39_caseless_mag_Tracer",    "6.5 Rubbers",               300,   -1 }  // MX        - Rubber Bullets - Normal Tracers 
        }; 
        accs[] = { 
            { "optic_Arco_blk_F",                   "",                          2500,  -1 }, // ARCO Black 
            { "optic_DMS",                          "",                          5000,  -1 }, // DMS Long Range Scope (Black) 
            { "optic_ERCO_blk_F",                   "",                          2500,  -1 }, // ERCO Black 
            { "optic_MRCO",                          "",                         1500,  -1 }, // MRCO Black 
            { "optic_Holosight",                    "",                          1200,  -1 }, // Holosight 
            { "optic_ACO_grn_smg",                  "",                          2500,  -1 }, // Green ACO (for SMG) 
            { "acc_flashlight",                     "",                          750,   -1 }  // Flashlight for Weapons 
        }; 
    }; 
 
    /*---------------------------- End of Bounty Hunter Shops ----------------------*/ 

    class rebel {
        name = "LC - Chief of LC Weapon Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
           // 5.56
            { "arifle_Mk20C_plain_F",   "", 200000, -1 }, // MK20C
            { "arifle_TRG21_F",         "", 200000, -1 }, // TRG
            { "arifle_SPAR_01_khk_F",   "", 300000, -1 }, // SPAR
			{ "arifle_AKS_F", "", 250000, 5000 },
            { "arifle_SDAR_F",          "", 150000, -1 }, // SDAR
			
			// 6.5
            { "arifle_Katiba_F","", 200000, -1 }, // Katiba	
			{ "srifle_DMR_07_hex_F","", 300000, -1 }, // CMR-76	
			
			// 7.62
            { "arifle_AKM_F","", 700000, -1 }, // AKM
			{ "arifle_AK12_F","", 800000, -1 }, // AK12
			{ "srifle_DMR_06_camo_F","", 850000, -1 }, // MK 14
			{ "srifle_DMR_03_multicam_F","", 900000, -1 }, // MK1
			{ "srifle_EBR_F","", 900000, -1 }, // MK18
			{ "srifle_DMR_01_F","", 700000, -1 }, // Rahim
            
            // 9 mm
            { "SMG_01_F",               "", 150000, -1 }, // SMG
            { "hgun_Rook40_F",          "", 6500,   -1 }, // ROOK
            { "hgun_PDW2000_F",         "", 120000, -1 }, // PDW
			{ "hgun_P07_F",         	 "", 10000,   -1 }, // p07
			

            // .45 ACP
            { "hgun_ACPC2_F",          "",  8000,   -1 }, // .45 ACP
            { "hgun_Pistol_heavy_01_F", "", 8000,   -1 },  // .45 ACP
			{ "hgun_Pistol_heavy_02_F", "", 8000,   -1 }  // .45 Revolver
			
        };
        mags[] = {
            // 5.56
            { "30Rnd_556x45_Stanag",    "", 1000,   -1 }, // 5.56 Stanag
            { "20Rnd_556x45_UW_mag",    "", 1000,   -1 }, // 5.56 Underwater Stanag
			{ "30Rnd_545x39_Mag_F",     "", 1000,   -1 }, // AKS 
			
			// 6.5
            { "30Rnd_65x39_caseless_green",  "", 1000,   -1 }, // 6.5
			{ "20Rnd_650x39_Cased_Mag_F",    "", 2000,   -1 }, // 6.5
			
			
			// 7.62
            { "20Rnd_762x51_Mag",    "", 10000,   -1 }, // MK1/MK1/MK14
			{ "10Rnd_762x54_Mag",    "", 10000,   -1 }, // Rahim
			{ "30Rnd_762x39_Mag_F",  "", 10000,   -1 }, // AKM/AK12
			
            // .45 ACP
            { "30Rnd_45ACP_Mag_SMG_01", "", 1000,   -1 }, // .45 ACP
            { "9Rnd_45ACP_Mag",         "", 900,    -1 }, // .45 ACP Handgun mag
			{ "11Rnd_45ACP_Mag",         "", 900,    -1 }, // .45 ACP Handgun mag
			{ "6Rnd_45ACP_Cylinder",         "", 900,    -1 }, // .45 ACP Handgun mag
			

            // 9 mm
            { "16Rnd_9x21_Mag",         "", 600,    -1 }, // 9mm 16rnd
            { "30Rnd_9x21_Mag",         "", 800,    -1 } // 9mm 30rnd
        };
        accs[] = {
            // Sights
            { "optic_ERCO_blk_F",       "", 5000,   -1 }, // ERCO Apex
            { "optic_Arco_blk_F",       "", 5000,   -1 }, // ARCO
            { "optic_ACO_grn",          "", 3500,   -1 }, // ACO Green
            { "optic_Holosight",        "", 3600,   -1 }, // Holosight
            { "optic_Hamr",             "", 7500,   -1 }, // Hamr
			{ "optic_DMS",              "", 100000,  -1 }, // DMS
			{ "optic_Yorris",      	    "", 5000,   -1 }, // optic_Yorris
			{ "optic_MRD",      	    "", 5000,   -1 }, // optic_MRD
			
			
            
            // Accessories
            { "acc_flashlight",         "", 1000,   -1 }, // Flashligt
            
            // Silencer
            { "muzzle_snds_M",          "", 100000,   -1 }, // 5.56 Silencer
			{ "muzzle_snds_H",          "", 100000,   -1 }, // 6.5 Silencer
			{ "muzzle_snds_B",          "", 150000,   -1 }, // 7.62 Silencer
            { "muzzle_snds_L",          "", 50000,   -1 }, // Silencer
            { "muzzle_snds_acp",        "", 50000,   -1 }  // Silencer ACP
        };
    };

    class rebelofficer {
    name = "LC - Officer Weapon Shop";
    side = "civ";
    license = "rebelofficer";
    level[] = { "", "", -1, "" };
    items[] = {
            { "arifle_TRG20_F", "", 60000, 2500 },
            { "arifle_Katiba_F", "", 70000, 5000 },
            { "arifle_AK12_F", "", 200000, 5000 },
            { "arifle_AKM_F", "", 200000, 5000 },
            { "arifle_AKS_F", "", 80000, 5000 },
            { "arifle_CTAR_blk_F", "", 70000, 5000 },
            { "srifle_DMR_01_F", "", 300000, -1 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_762x39_Mag_F", "", 300 },
            { "30Rnd_545x39_Mag_F", "", 300 },
            { "30Rnd_580x42_Mag_F", "", 300 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "6Rnd_45ACP_Cylinder", "", 50 }
        };
        accs[] = {
			{ "optic_ERCO_blk_F", "", 5000,   -1 }, // ERCO Apex
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 7500 },
            { "acc_flashlight", "", 1000 },
                        // Silencers
            { "muzzle_snds_B",   "", 2750},
            { "muzzle_snds_L",   "", 2750},
            { "muzzle_snds_acp", "", 2000},
            { "muzzle_snds_H",   "", 2750}
        };
    };


    class rebelmember {
    name = "LC - Member Weapon Shop";
    side = "civ";
    license = "rebelmember";
    level[] = { "", "", -1, "" };
    items[] = {
            { "arifle_TRG20_F", "", 60000, 2500 },
            { "arifle_Katiba_F", "", 70000, 5000 },
            { "arifle_AKM_F", "", 200000, 5000 },
            { "arifle_AKS_F", "", 80000, 5000 },
            { "arifle_CTAR_blk_F", "", 70000, 5000 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300 },
            { "30Rnd_762x39_Mag_F", "", 300 },
            { "30Rnd_545x39_Mag_F", "", 300 },
            { "30Rnd_580x42_Mag_F", "", 300 },
            { "30Rnd_65x39_caseless_green", "", 275 },
            { "10Rnd_762x54_Mag", "", 500 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "6Rnd_45ACP_Cylinder", "", 50 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 7500 },
            { "acc_flashlight", "", 1000 },

            // Silencers
            { "muzzle_snds_B",   "", 2750},
            { "muzzle_snds_L",   "", 2750},
            { "muzzle_snds_acp", "", 2000},
            { "muzzle_snds_H",   "", 2750}
        };
    };

    class rebelrecruit {
    name = "LC - Recruit Weapon Shop";
    side = "civ";
    license = "rebelrecruit";
    level[] = { "", "", -1, "" };
    items[] = {
            { "arifle_TRG20_F", "", 60000, 2500 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 }
        };
        mags[] = {
            { "30Rnd_545x39_Mag_F", "", 300 },
            { "20Rnd_556x45_UW_mag", "", 125 },
            { "6Rnd_45ACP_Cylinder", "", 50 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "acc_flashlight", "", 1000 },
                        // Silencers
            { "muzzle_snds_B",   "", 2750},
            { "muzzle_snds_L",   "", 2750},
            { "muzzle_snds_acp", "", 2000},
            { "muzzle_snds_H",   "", 2750}
        };
    };


    class blackmarket {
        name = "Blackmarket Salesman";
        side = "civ";
        license = "Outlaw";
        level[] = { "", "", -1, "" };
        items[] = {
            // 5.56
            { "arifle_Mk20C_plain_F",   "", 200000, -1 }, // MK20C
            { "arifle_TRG21_F",         "", 200000, -1 }, // TRG
            { "arifle_SPAR_01_khk_F",   "", 300000, -1 }, // SPAR
			{ "arifle_AKS_F", "", 250000, 5000 },
            { "arifle_SDAR_F",          "", 150000, -1 }, // SDAR
			
			// 6.5
            { "arifle_Katiba_F","", 200000, -1 }, // Katiba	
			{ "srifle_DMR_07_hex_F","", 300000, -1 }, // CMR-76	
			
			// 7.62
            { "arifle_AKM_F","", 700000, -1 }, // AKM
			{ "arifle_AK12_F","", 800000, -1 }, // AK12
			{ "srifle_DMR_06_camo_F","", 850000, -1 }, // MK 14
			{ "srifle_DMR_03_multicam_F","", 900000, -1 }, // MK1
			{ "srifle_EBR_F","", 900000, -1 }, // MK18
			{ "srifle_DMR_01_F","", 700000, -1 }, // Rahim
            
            // 9 mm
            { "SMG_01_F",               "", 150000, -1 }, // SMG
            { "hgun_Rook40_F",          "", 6500,   -1 }, // ROOK
            { "hgun_PDW2000_F",         "", 120000, -1 }, // PDW
			{ "hgun_P07_F",         	 "", 10000,   -1 }, // p07
			

            // .45 ACP
            { "hgun_ACPC2_F",          "",  8000,   -1 }, // .45 ACP
            { "hgun_Pistol_heavy_01_F", "", 8000,   -1 },  // .45 ACP
			{ "hgun_Pistol_heavy_02_F", "", 8000,   -1 }  // .45 Revolver
			
        };
        mags[] = {
            // 5.56
            { "30Rnd_556x45_Stanag",    "", 1000,   -1 }, // 5.56 Stanag
            { "20Rnd_556x45_UW_mag",    "", 1000,   -1 }, // 5.56 Underwater Stanag
			{ "30Rnd_545x39_Mag_F",     "", 1000,   -1 }, // AKS 
			
			// 6.5
            { "30Rnd_65x39_caseless_green",  "", 1000,   -1 }, // 6.5
			{ "20Rnd_650x39_Cased_Mag_F",    "", 2000,   -1 }, // 6.5
			
			
			// 7.62
            { "20Rnd_762x51_Mag",    "", 10000,   -1 }, // MK1/MK1/MK14
			{ "10Rnd_762x54_Mag",    "", 10000,   -1 }, // Rahim
			{ "30Rnd_762x39_Mag_F",  "", 10000,   -1 }, // AKM/AK12
			
            // .45 ACP
            { "30Rnd_45ACP_Mag_SMG_01", "", 1000,   -1 }, // .45 ACP
            { "9Rnd_45ACP_Mag",         "", 900,    -1 }, // .45 ACP Handgun mag
			{ "11Rnd_45ACP_Mag",         "", 900,    -1 }, // .45 ACP Handgun mag
			{ "6Rnd_45ACP_Cylinder",         "", 900,    -1 }, // .45 ACP Handgun mag
			

            // 9 mm
            { "16Rnd_9x21_Mag",         "", 600,    -1 }, // 9mm 16rnd
            { "30Rnd_9x21_Mag",         "", 800,    -1 } // 9mm 30rnd
        };
        accs[] = {
            // Sights
            { "optic_ERCO_blk_F",       "", 5000,   -1 }, // ERCO Apex
            { "optic_Arco_blk_F",       "", 5000,   -1 }, // ARCO
            { "optic_ACO_grn",          "", 3500,   -1 }, // ACO Green
            { "optic_Holosight",        "", 3600,   -1 }, // Holosight
            { "optic_Hamr",             "", 7500,   -1 }, // Hamr
			{ "optic_DMS",              "", 100000,  -1 }, // DMS
			{ "optic_Yorris",      	    "", 5000,   -1 }, // optic_Yorris
			{ "optic_MRD",      	    "", 5000,   -1 }, // optic_MRD
			
			
            
            // Accessories
            { "acc_flashlight",         "", 1000,   -1 }, // Flashligt
            
            // Silencer
            { "muzzle_snds_M",          "", 100000,   -1 }, // 5.56 Silencer
			{ "muzzle_snds_H",          "", 100000,   -1 }, // 6.5 Silencer
			{ "muzzle_snds_B",          "", 150000,   -1 }, // 7.62 Silencer
            { "muzzle_snds_L",          "", 50000,   -1 }, // Silencer
            { "muzzle_snds_acp",        "", 50000,   -1 }  // Silencer ACP
        };
     };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "hgun_Rook40_F", "", 1500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 2500, -1 },
            { "hgun_ACPC2_F", "", 4500, -1 },
            { "hgun_PDW2000_F", "", 9500, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Tanoa General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Tanoa Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

     // Cop Shops
    // class cop_basic {
        // name = "Tanoa Police - Cadet Shop";
        // side = "cop";
        // license = "";
        // level[] = { "", "", -1, "" };
        // items[] = {

            // { "SMG_02_F",                   "Taser Rifle",          10000, -1 },
            // { "hgun_P07_snds_F",            "Stun Pistol",          2000,  -1 },
            // { "hgun_Pistol_heavy_01_MRD_F", "",                     2000,  -1 },
            // { "arifle_SDAR_F",              "UW Rubber Rifle",      2000,  -1 },

              //Items
            // { "HandGrenade_Stone",          "Flashbang",            1700, -1 },
            // { "FirstAidKit",                "First Aid",            150,  -1 },
            // { "Binocular",                  "Binoculars",           200,  -1 },
            // { "Rangefinder",                "Rangefinder",          250,  -1 },
            // { "NVGoggles",                  "NV Googles",           2000, -1 }
        // };
        // mags[] = {
            // { "16Rnd_9x21_Mag",             "",                     25 },
            // { "30Rnd_9x21_Mag",             "Taser Rifle Magazine", 45 },
            // { "11Rnd_45ACP_Mag",            "",                     90 },
            // { "20Rnd_556x45_UW_mag",        "UW Rubber Bullets",    90 }
        // };
        // accs[] = {
             // Optics
            // { "acc_flashlight",             "",   750, -1 },
            // { "optic_Holosight",            "",   1200, -1 },
            // { "optic_Hamr",                 "", 1200, -1},
            // { "optic_Arco",                 "",       2500, -1 },
            // { "optic_ERDCO_blk_F",           "", 2500, -1 }, 

             // Silencers
            // { "muzzle_snds_B",   "", 2750},
            // { "muzzle_snds_L",   "", 2750},
            // { "muzzle_snds_acp", "", 2000},
            // { "muzzle_snds_H",   "", 2750}
        // };
    // };

    // class cop_patrol {
        // name = "Tanoa Police - Officer Shop";
        // side = "cop";
        // license = "";
        // level[] = { "life_coplevel", "SCALAR", 2, "You must be a Patrol Officer Rank!" };
        // items[] = {
            
            // { "SMG_02_F", "Taser Rifle", 10000, -1 },
            // { "hgun_P07_snds_F", "Stun Pistol", 2000, -1 },
            // { "hgun_P07_F", "", 1500, -1 },
            // { "arifle_SPAR_01_blk_F", "", 35000, -1 },
            // { "SMG_02_ACO_F", "", 25000, -1 },
            // { "SMG_05_F", "", 25000, -1 }, 
            
          //    Items
            // { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            // { "FirstAidKit", "First Aid", 150, -1 },
            // { "Binocular", "Binoculars", 200,  -1 },
            // { "Rangefinder", "Rangefinder", 250, -1},
            // { "NVGoggles", "NV Googles", 2000, -1 }
        // };
        // mags[] = {
            // { "30Rnd_65x39_caseless_mag", "", 130 },
            // { "30Rnd_9x21_Mag", "", 250 },
			// { "30Rnd_9x21_Mag_SMG_02", "", 1000 },
            // { "30Rnd_556x45_Stanag", "", 1000 }
        // };
        // accs[] = {           
         //     Optics
            // { "acc_flashlight", "",  750, -1 },
            // { "optic_Holosight", "", 1200, -1 },
            // { "optic_Hamr", "", 1200, -1},
            // { "optic_Arco", "",       2500, -1 },
            // { "optic_ERDCO_blk_F", "", 2500, -1 }, 

            //  Silencers
            // { "muzzle_snds_B", "", 2750},
            // { "muzzle_snds_L", "", 2750},
            // { "muzzle_snds_M",          "", 1000,   -1 }, // 5.56 Silencer
            // { "muzzle_snds_H", "", 2750 }
        // };
    // };

    // class cop_sergeant {
        // name = "Tanoa Police - Sergeant and higher Shop";
        // side = "cop";
        // license = "";
        // level[] = { "life_coplevel", "SCALAR", 3, "You must be a Sergeant Rank!" };
        // items[] = {
             // Guns
            // { "hgun_ACPC2_F", "", 17500, -1 },
            // { "SMG_02_ACO_F", "", 25000, -1 },
            // { "arifle_MXC_Black_F", "", 50000, 5000 },
            // { "arifle_MX_Black_F", "", 50000, 7500 },
            // { "arifle_SPAR_01_blk_F", "", 35000, -1 },
            // { "arifle_SPAR_03_blk_F", "", 80000, -1 },
            // { "srifle_DMR_07_blk_F", "", 50000, -1 },

            //  Items
            // { "HandGrenade_Stone", "Flashbang", 1700, -1 },
            // { "FirstAidKit", "First Aid", 150, -1 },
            // { "Binocular", "Binoculars", 200,  -1 },
            // { "Rangefinder", "Rangefinder", 250, -1},
            // { "NVGoggles", "NV Googles", 2000, -1 },
            
          //    Grenades
            // { "HandGrenade_Stone", "Flashbang", 1700, -1 }
        // };
        
        //  Magazines
        // mags[] = {
            // { "9Rnd_45ACP_Mag", "", 200 },
            // { "30Rnd_9x21_Mag", "", 60 }, // 30rnd 9mm
            // { "30Rnd_9x21_Mag_SMG_02", "", 1000 }, // SMG Magazine
            // { "30Rnd_65x39_caseless_mag", "", 100 },
            // { "30Rnd_556x45_Stanag", "", 1000 },
            // { "20Rnd_762x51_Mag", "", 1000 },
            // { "20Rnd_650x39_Cased_Mag_F", "", 1000 }
        // };
        
         // Accessories
        // accs[] = {
           //   Optics
            // { "acc_flashlight", "",  750, -1 },
            // { "optic_Holosight", "", 1200, -1 },
            // { "optic_Hamr", "", 1200, -1},
            // { "optic_Arco", "",       2500, -1 },
            // { "optic_ERDCO_blk_F", "", 2500, -1 }, 

            //  Silencers
            // { "muzzle_snds_B", "", 2750},
            // { "muzzle_snds_M",          "", 1000,   -1 }, // 5.56 Silencer
            // { "muzzle_snds_L", "", 2750},
            // { "muzzle_snds_H", "", 2750 }
        // };
    // };
	
	 //Cop Shops
    class cop_basic {
        name = "Tanoa Police - Cadet Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {

            { "SMG_02_F",                   "Taser Rifle",          0, -1 },
            { "hgun_P07_snds_F",            "Stun Pistol",          0,  -1 },
            { "hgun_Pistol_heavy_01_MRD_F", "",                     0,  -1 },
            { "arifle_SDAR_F",              "UW Rubber Rifle",      0,  -1 },

            // Items
            { "HandGrenade_Stone",          "Flashbang",            0, -1 },
            { "FirstAidKit",                "First Aid",            0,  -1 },
            { "Binocular",                  "Binoculars",           0,  -1 },
            { "Rangefinder",                "Rangefinder",          0,  -1 },
            { "NVGoggles",                  "NV Googles",           0, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag",             "",                     0 },
            { "30Rnd_9x21_Mag",             "Taser Rifle Magazine", 0 },
            { "11Rnd_45ACP_Mag",            "",                     0 },
            { "20Rnd_556x45_UW_mag",        "UW Rubber Bullets",    0 }
        };
        accs[] = {
            // Optics
            { "acc_flashlight",             "",   0, -1 },
            { "optic_Holosight",            "",   0, -1 },
            { "optic_Hamr",                 "", 0, -1},
            { "optic_Arco",                 "",       0, -1 },
            { "optic_ERDCO_blk_F",           "", 0, -1 }, 

            // Silencers
            { "muzzle_snds_B",   "", 0},
            { "muzzle_snds_L",   "", 0},
            { "muzzle_snds_acp", "", 0},
            { "muzzle_snds_H",   "", 0}
        };
    };

    class cop_patrol {
        name = "Tanoa Police - Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be a Patrol Officer Rank!" };
        items[] = {
            
            { "SMG_02_F", "Taser Rifle", 0, -1 },
			{ "arifle_Mk20C_plain_F",   "", 0, -1 }, // MK20C
            { "arifle_TRG21_F",         "", 0, -1 }, // TRG
            { "hgun_P07_snds_F", "Stun Pistol", 0, -1 },
            { "hgun_P07_F", "", 0, -1 },
            { "arifle_SPAR_01_blk_F", "", 0, -1 },
            { "SMG_02_ACO_F", "", 0, -1 },
            { "SMG_05_F", "", 0, -1 }, 
            
            // Items
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "FirstAidKit", "First Aid", 0, -1 },
            { "Binocular", "Binoculars", 0,  -1 },
            { "Rangefinder", "Rangefinder", 0, -1},
            { "NVGoggles", "NV Googles", 0, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 0 },
            { "30Rnd_9x21_Mag", "", 0 },
			{ "30Rnd_9x21_Mag_SMG_02", "", 0 },
            { "30Rnd_556x45_Stanag", "", 0 }
        };
        accs[] = {           
            // Optics
            { "acc_flashlight", "",  0, -1 },
            { "optic_Holosight", "", 0, -1 },
            { "optic_Hamr", "", 0, -1},
            { "optic_Arco", "",       0, -1 },
            { "optic_ERDCO_blk_F", "", 0, -1 }, 
			{ "optic_DMS", "", 0 },

            // Silencers
            { "muzzle_snds_B", "", 0},
            { "muzzle_snds_L", "", 0},
            { "muzzle_snds_M",          "", 0,   -1 }, // 5.56 Silencer
            { "muzzle_snds_H", "", 0 }
        };
    };

    class cop_sergeant {
        name = "Tanoa Police - Sergeant and higher Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Sergeant Rank!" };
        items[] = {
            // Guns
            { "hgun_ACPC2_F", "", 0, -1 },
            { "SMG_02_ACO_F", "", 0, -1 },
            { "arifle_MXC_Black_F", "", 0, 0 },
            { "arifle_MX_Black_F", "", 0, 0 },
            { "arifle_SPAR_01_blk_F", "", 0, -1 },
            { "arifle_SPAR_03_blk_F", "", 0, -1 },
			{ "arifle_MX_SW_F", "", 0, -1 },
			{ "arifle_MXM_F", "", 0, -1 },
			{ "arifle_MXM_Black_F", "", 0, -1 },
			{ "arifle_MX_SW_Black_F", "", 0, -1 },
			
            { "srifle_DMR_07_blk_F", "", 0, -1 },

            // Items
            { "HandGrenade_Stone", "Flashbang", 0, -1 },
            { "FirstAidKit", "First Aid", 0, -1 },
            { "Binocular", "Binoculars", 0,  -1 },
            { "Rangefinder", "Rangefinder", 0, -1},
            { "NVGoggles", "NV Googles", 0, -1 },
            
            //Grenades
            { "HandGrenade_Stone", "Flashbang", 0, -1 }
        };
        
        // Magazines
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 0 },
            { "30Rnd_9x21_Mag", "", 0 }, // 30rnd 9mm
            { "30Rnd_9x21_Mag_SMG_02", "", 0 }, // SMG Magazine
            { "30Rnd_65x39_caseless_mag", "", 0 },
            { "30Rnd_556x45_Stanag", "", 0 },
			{ "30Rnd_65x39_caseless_mag_Tracer", "", 0 },
            { "20Rnd_762x51_Mag", "", 0 },
            { "20Rnd_650x39_Cased_Mag_F", "", 0 }
        };
        
        // Accessories
        accs[] = {
            // Optics
            { "acc_flashlight", "",  0, -1 },
            { "optic_Holosight", "", 0, -1 },
            { "optic_Hamr", "", 0, -1},
            { "optic_Arco", "",       0, -1 },
			{ "optic_MRCO", "",       0, -1 },
            { "optic_ERDCO_blk_F", "", 0, -1 }, 

            // Silencers
            { "muzzle_snds_B", "", 0},
            { "muzzle_snds_M",          "", 0,   -1 }, // 5.56 Silencer
            { "muzzle_snds_L", "", 0},
            { "muzzle_snds_H", "", 0 }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 0, -1 },
            { "Binocular", "", 0, -1 },
            { "FirstAidKit", "", 0, -1 },
            { "NVGoggles", "", 0, -1 }
        };
        mags[] = {};
        accs[] = {};
    };
};
