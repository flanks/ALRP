/*
*    Format:
*        licenses: ARRAY (This is for limiting spawn to certain things)
*           0: License Name
*           1: License Check Type
*                false: If license isn't set
*                true: If license is set
*           Example:
*                licenses[] = { { "pilot", true }, { "rebel", false } }; //Shows up for players with pilot and without rebel license.
*
*        level: ARRAY (This is for limiting spawn to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL / INVERSE)
*                SCALAR: VALUE => VALUE
*                BOOL: VALUE EXISTS
*                EQUAL: VALUE == VALUE
*                INVERSE: VALUE <= VALUE
*            2: What to compare to (-1 = Check Disabled)
*
*/
class CfgSpawnPoints {
    class Civilian {
         class Kavala {
            displayName = "Kavala";
            spawnMarker = "civ_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        }; 

        class Athira {
            displayName = "Athira";
            spawnMarker = "civ_spawn_3";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class Pyrgos {
            displayName = "Pyrgos";
            spawnMarker = "civ_spawn_2";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class Sofia {
            displayName = "Sofia";
            spawnMarker = "civ_spawn_4";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
		
		/* class losaltis {
            displayName = "Los Altis";
            spawnMarker = "civ_spawn_5";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        }; */
		
		/* class zaros {
            displayName = "Zaros";
            spawnMarker = "civ_spawn_6";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };*/
        class Rebel {
            displayName = "Rebel base";
            spawnMarker = "rl_2";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "rebel", true } };
            level[] = { "", "", -1 };
        };
		
        /*class Rebel2 {
            displayName = "Legion Contras Outpost";
            spawnMarker = "rl_1";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "rebel", true } };
            level[] = { "", "", -1 };
        };*/
    };

    class Cop {
         class kavalaHQ {
            displayName = "Kavala HQ";
            spawnMarker = "cop_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        }; 

        class athiraHQ {
            displayName = "Athira HQ";
            spawnMarker = "cop_spawn_3";
            icon = "\a3\ui_f\data\map\MapControl\fuelstation_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class pyrgosHQ {
            displayName = "Pyrgos HQ";
            spawnMarker = "cop_spawn_2";
            icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

       /*  class Air {
            displayName = "Air HQ";
            spawnMarker = "cop_spawn_4";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "cAir", true } };
            level[] = { "life_coplevel", "SCALAR", 2 };
        }; */

        /*class HW {
            displayName = "HW Patrol";
            spawnMarker = "cop_spawn_5";
            icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
            licenses[] = { { "", true } };
            level[] = { "life_coplevel", "SCALAR", 2 };
        };*/
    };

     class Medic {
         class kavalaH {
            displayName = "Kavala Hospital";
            spawnMarker = "medic_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        }; 

        class athiraH {
            displayName = "Athira Regional";
            spawnMarker = "medic_spawn_2";
            icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class PyrgosH {
            displayName = "Pyrgos Hospital";
            spawnMarker = "medic_spawn_3";
            icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
    };
};
