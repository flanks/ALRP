/*
	File: fn_HandleUniforms.sqf
	Author: TinyBigJacko 03May2014

	Description: Selects local or global uniform texture override and calls accordingly
	_unit: player to be retextured
	_propagate: true = spawn via MP framework, false = just call locally.

*/

private ["_unit", "_propagate", "_unitgrpside"];

_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_propagate = [_this,1,false,[false]] call BIS_fnc_param;

if (isNull _unit) exitWith {};
_unitgrpside = side (group _unit);

switch (_unitgrpside) do
{
	case west:
	{
		if (_propagate) then {
[_unit, "",backpack _unit] remoteExec ["life_fnc_ReTexBackpack",0] ;
		} else {
			[_unit, "",backpack _unit] call life_fnc_ReTexBackpack;
		};
		switch (uniform _unit) do
		{
			case "U_Rangemaster":
			{
				if (_propagate) then {
[_unit, "textures\cop\clothing\cop_uniform.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\cop\clothing\cop_uniform.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			case "U_B_CombatUniform_mcam_worn":
			{
				if (_propagate) then {
[_unit, "textures\cop\clothing\cop_officer.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\cop\clothing\cop_officer.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case default {};
		};
	};

	case independent:
	{	
			// Medic Uniform
		switch (uniform _unit) do
		{
			case "U_Rangemaster":
			{
				if (_propagate) then {
[_unit, "textures\medic\clothing\medic_uniform.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\medic\clothing\medic_uniform.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_C_Scientist":
			{
				if (_propagate) then {
[_unit, "textures\towing\clothing\Tow-overall.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\towing\clothing\Tow-overall.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
		};
	};

	case civilian:
	{
	    // Civilian 
		switch (uniform _unit) do
		{
			case "U_C_Poloshirt_burgundy":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\hmskin.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\hmskin.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_C_Poloshirt_blue":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\polo_legendary.paa",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\polo_legendary.paa",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_C_Poloshirt_tricolour":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\civdefault.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\civdefault.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_C_Poloshirt_redwhite":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\hawaii_shirt.paa",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\hawaii_shirt.paa",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_C_Poloshirt_stripped":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\hawaii_shirt_grn.paa",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\hawaii_shirt_grn.paa",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_C_Poloshirt_salmon":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\polo_sport.paa",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\polo_sport.paa",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			case "U_BG_Guerrilla_6_1":
			{
				if (_propagate) then {
[_unit, "textures\rebel\clothing\reb_cloth.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\rebel\clothing\reb_cloth.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
					
			case "U_C_Scientist":
			{
				if (_propagate) then {
[_unit, "textures\civ\clothing\prisoner_uniform.jpg",uniform _unit] remoteExec ["life_fnc_ReTexUniform",0] ;
				} else {
					[_unit, "textures\civ\clothing\prisoner_uniform.jpg",uniform _unit] call life_fnc_ReTexUniform;
				};
			};
			
			
			
			case default {
				#define cfgPath missionConfigFile >> "uniformCfg"
				if(isClass (cfgPath >> uniform _unit)) then {
					_arr = getArray(cfgPath >> uniform _unit >> "textures");
					if(count _arr > 0 &&
						{_unit getVariable["customUniform",["",-1]] select 1 != -1} &&
						{_unit getVariable["customUniform",["",-1]] select 0 == uniform _unit}) then {

						_id = (_unit getVariable["customUniform",["", -1]] select 1);
						_data = _arr select _id;
						_name = _data select 0;
						_texture = _data select 1;
						if (_propagate) then {
[_unit, _texture, uniform _unit] remoteExec ["life_fnc_ReTexUniform",0];
						} else {
							[_unit, _texture, uniform _unit] call life_fnc_ReTexUniform;
						};
					};
				};
			};
		};
	};
};
