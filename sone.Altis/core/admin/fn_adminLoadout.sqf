/*

     Filename: fn_adminLoadout.sqf
     Created by: SimZor
     Date added: 10.06.2016
     Description: Supplies Administrators with an admin suit.

*/
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addHeadgear "H_Cap_headphones"; // Rangemaster hat (headphones)
player addGoggles "G_Balaclava_blk"; // Balaclava
player forceAddUniform "U_B_Protagonist_VR"; // Blue VR Suit
player addVest "V_TacVestIR_blk"; // Raven Vest
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";