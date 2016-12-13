StartProgress = false;

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf"; 
[] spawn life_fnc_autoMessages; // Auto Messages Initiation

// Scripts folder
[] execVM "scripts\noside.sqf"; //Prevents talking in side channel
[] execVM "scripts\noglobal.sqf"; //Prevents talking in global channel
[] execVM "scripts\fogFuckOff.sqf"; // Remove Fog Script
[] execVM "scripts\removesnakes.sqf";
[] execVM "scripts\colorEffects.sqf";
[] execVM "scripts\intro.sqf"; // Intro


[
    15*60, // seconds to delete dead bodies (0 means don't delete) 
    2*60, // seconds to delete dead vehicles (0 means don't delete)
    20*60, // seconds to delete immobile vehicles (0 means don't delete)
    30*60, // seconds to delete dropped weapons (0 means don't delete)
    20*60, // seconds to deleted planted explosives (0 means don't delete)
    15*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "scripts\repetitive_cleanup.sqf";


//[] execVM "scripts\zlt_fastrope.sqf"; // ZLT Fastrope

StartProgress = true;