StartProgress = false;

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

[] spawn life_fnc_autoMessages; // Auto Messages Initiation

// Scripts folder
[] execVM "scripts\noside.sqf"; //Prevents talking in side channel
[] execVM "scripts\noglobal.sqf"; //Prevents talking in global channel
[] execVM "scripts\fogFuckOff.sqf"; // Remove Fog Script
[] execVM "scripts\intro.sqf"; // Intro
[] execVM "scripts\zlt_fastrope.sqf"; // ZLT Fastrope

StartProgress = true;