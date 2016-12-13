#include "..\..\script_macros.hpp"
	

		/*
	

		File: fn_craftCfg.sqf
	

		Author: EdgeKiller
	

		Description:
	

		Master configuration file for the crafting menu.
	

		*/
	

		private["_craft","_return"];
	

		_craft = [_this,0,"",[""]] call BIS_fnc_param;
	

		if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.
	

		switch(_craft) do {
	

		case "weapon": {
	

		_return = [
	

		//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
	

		["hgun_P07_F", ["iron_refined",1,"bolts",2,"screws",2,"trigger",1]],
		["hgun_Pistol_01_F", ["iron_refined",1,"bolts",2,"screws",2,"trigger",1]],
		["srifle_DMR_02_F", ["iron_refined",10,"bolts",25,"screws",15,"trigger",1,"goldbar",2]],
		["launch_RPG32_F", ["iron_refined",15,"bolts",35,"screws",25,"trigger",1,"goldbar",3]],
		["srifle_DMR_01_F", ["iron_refined",7,"bolts",20,"screws",10,"trigger",1,"goldbar",1]]
		];
	

		if(FETCH_CONST(life_adminlevel) > 0) then {
	

		_return pushBack
	

		["SMG_01_F", ["iron_refined",2,"screws",3,"bolts",5,"trigger",1]];

		};
	

		};

		case "uniform": {
	

		_return = [
	

		//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
	

		["U_IG_Guerilla1_1", ["copper_refined",1]]
	

		];
	

		};
	

		case "backpack": {
	

		_return = [
	

		//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
	
		["B_ViperLightHarness_oli_F", ["cloth",7,"leather",3,"straps",2]],
		["B_ViperLightHarness_blk_F", ["cloth",7,"leather",3,"straps",2]],
		["B_Carryall_oli", ["cloth",14,"leather",5,"straps",2]],
		["B_Carryall_ghex_F", ["cloth",14,"leather",5,"straps",2]],
		["B_ViperHarness_blk_F", ["cloth",10,"leather",5,"straps",2]],
		["B_ViperHarness_ghex_F", ["cloth",10,"leather",5,"straps",2]]

		];
	

		};
	

		case "item": {
	

		_return = [
	

		//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
	

		["iron_refined", ["copper_refined",2]],
		["bolts", ["iron_refined",1]],
		["screws", ["iron_refined",1]],
		["trigger", ["copper_refined",1,"iron_refined",1,"screws",2,"bolts",2]],
		["gunpowder", ["coal",1,"sulfur",1]]

		];
	

		};
		
		
		case "ammo": {
	

		_return = [
	

		//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
	

		["RPG32_HE_F", ["iron_refined",5,"gunpowder",2]],
		["10Rnd_9x21_Mag", ["iron_refined",1,"gunpowder",1]],
		["10Rnd_762x54_Mag", ["iron_refined",1,"gunpowder",1]],
		["10Rnd_338_Mag", ["iron_refined",1,"gunpowder",1]]

		];
	

		};
		
		case "accesories": {
	

		_return = [
	

		//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
	

		["optic_ERCO_blk_F", ["iron_refined",1,"bolts",2,"screws",2,"glass",1]]
	

		];
	

		};
	

		};
	

		_return;