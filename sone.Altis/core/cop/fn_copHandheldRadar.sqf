if(playerSide != west) exitWith {};
private ["_speed","_vehicle"];
_vehicle = cursorTarget;
_speed = round speed _vehicle;

if(!(currentWeapon player in ["hgun_P07_snds_F"])) exitWith {};

[player, "RadarSound",10] remoteExec ["life_fnc_RadarSound",0];

if(_vehicle isKindOf "Car") then
{
	switch (true) do 
	{
		case ((_speed > 50 && _speed <= 110)): 
		{	
			hint parseText format ["<t color='#5882FA'><t size='2'><t align='center'>Radar<br/><t color='#ffff00'><t align='center'><t size='1'>Vehicle Speed: %1 km/h",round _speed]; //amber
		};
		
		case ((_speed > 110)): 
		{	
			hint parseText format ["<t color='#5882FA'><t size='2'><t align='center'>Radar<br/><t color='#ff0000'><t align='center'><t size='1'>Vehicle Speed: %1 km/h",round _speed]; //red
		};
		
		default
		{
			hint parseText format ["<t color='#5882FA'><t size='2'><t align='center'>Radar<br/><t color='#00ff00'><t align='center'><t size='1'>Vehicle Speed: %1 km/h",round _speed]; //green
		};
	};
};