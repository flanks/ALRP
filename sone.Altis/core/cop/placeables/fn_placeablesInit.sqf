/* 
    Filename: fn_placeablesInit.sqf
	Author: Maximum
	Description: Placeables for the police and ambulance sides.
	Added and modified by: SimZor
	Date added: 13.06.2016
*/
life_barrier_active = false;
life_barrier_activeObj = ObjNull;
life_placeables = [
	[ "Road Cone", "RoadCone_F"],
	[ "Road cone with light", "RoadCone_L_F"],
	[ "Road Sign", "SignAd_Sponsor_F"],
	[ "Bar Gate", "Land_BarGate_F"],
	[ "Safety Barrier", "Land_Crash_barrier_F"],
	[ "Plastic Barrier Orange", "PlasticBarrier_03_orange_F"],
	[ "Plastic Barrier Yellow", "PlasticBarrier_02_yellow_F"],
	[ "Portable Single Light", "Land_PortableLight_single_F"],
	[ "Portable Double Light", "Land_PortableLight_double_F"]
];
life_bar_limit = 2500;
life_bar_placey = [];