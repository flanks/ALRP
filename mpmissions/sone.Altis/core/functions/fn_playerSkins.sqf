#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\civ\clothing\civdefault.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
                player setObjectTextureGlobal [0, "textures\civ\clothing\hmskin.jpg"];
            };
			if(uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
				player setObjectTextureGlobal [0, "textures\civ\clothing\hawaii_shirt.paa"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_stripped") then {
				player setObjectTextureGlobal [0, "textures\civ\clothing\hawaii_shirt_grn.paa"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_blue") then {
				player setObjectTextureGlobal [0, "textures\civ\clothing\polo_legendary.paa"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_salmon") then {
				player setObjectTextureGlobal [0, "textures\civ\clothing\polo_sport.paa"];
			};
			if(uniform player isEqualTo "U_Rangemaster") then {
				player setObjectTextureGlobal [0, "textures\civ\clothing\anzug.paa"];
			};
            // Prison Uniform	
			if (uniform player isEqualTo "U_C_Scientist") then {
                player setObjectTextureGlobal [0, "textures\civ\clothing\prisoner_uniform.jpg"];
            };
			if (uniform player isEqualTo "U_BG_Guerrilla_6_1") then {
                player setObjectTextureGlobal [0, "textures\rebel\clothing\reb_cloth.jpg"];
            };
			
			
           /*  if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\clothing\civilian_uniform_3.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\clothing\civilian_uniform_4.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\clothing\civilian_uniform_5.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\clothing\civilian_uniform_6.jpg"];
            };
            if (uniform player isEqualTo "U_C_Commoner1_1") then {
                player setObjectTextureGlobal [0, "textures\clothing\civilian_uniform_7.jpg"];
            }; */
        };
    };

    case west: {

        // Cadet rank skin
		if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal [0, "textures\cop\clothing\cop_uniform.jpg"];
        };
		
        // Officer rank skin
		if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn") then {
            player setObjectTextureGlobal [0, "textures\cop\clothing\cop_officer.jpg"];
        };

        // Hide backpack
        if (backpack player isEqualTo "B_Carryall_cbr") then {
            backpackContainer player setObjectTextureGlobal [0, ""];
        };
		
    };

    case independent: {
        
        //Ambulance Skin
        if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal [0, "textures\medic\clothing\medic_uniform.jpg"];
        };
        
        // Hide backpack
        if (backpack player isEqualTo "B_Carryall_cbr") then {
            backpackContainer player setObjectTextureGlobal [0, ""];
        };
		
		if (uniform player isEqualTo "U_C_Scientist") then {
                player setObjectTextureGlobal [0, "textures\towing\clothing\Tow-overall.jpg"];
        };
		
    };
};
