#include "..\..\script_macros.hpp"
/*
    File: fn_playerTags.sqf
    Author: Bryan "Tonic" Boardwine
    Description:
    Adds the tags above other players heads when close and have visible range.
*/
if (!life_settings_tagson) exitWith {};
private["_ui","_units","_masks"];
#define iconID 78000
#define scale 0.8

if (visibleMap || {!alive player} || {dialog}) exitWith {
    500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if (isNull _ui) then {
    500 cutRsc["Life_HUD_nameTags","PLAIN"];
    _ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];
_units = _units - [player];

_masks = LIFE_SETTINGS(getArray,"clothing_masks");

{
    private "_text";
    _idc = _ui displayCtrl (iconID + _forEachIndex);
    if (!(lineIntersects [eyePos player, eyePos _x, player, _x]) && alive _x && {!isNil {_x getVariable "realname"}}) then {
        _pos = switch (typeOf _x) do {
            case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
            case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
            default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
        };
        _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        if (!((headgear _x) in _masks || (goggles _x) in _masks || (uniform _x) in _masks)) then {
            if (count _sPos > 1 && {_distance < 15}) then {                
                _text = switch (true) do {
                
                    // Admins on Duty
                    case (uniform _x in ["U_B_Protagonist_VR"]):        {format["<t align='center' color='#ff0000'>SecretOne<br/>Administrator</t>"]};

                    // Bounty Hunters
                    case (uniform _x in ["U_B_GEN_Commander_F"]):       {format["<t align='center' color='#B8860B'><img image='icons\bountyhunter.paa' size='2'></img> The BountyHunter</t><br/><t align='center' color='#fffff'> %1</t>",(_x getVariable ["realname",name _x])]};
                    case (uniform _x in ["U_B_GEN_Soldier_F"]):         {format["<t align='center' color='#B8860B'><img image='icons\bountyhunter.paa' size='2'></img> The BountyHunter</t><br/><t align='center' color='#fffff'> %1</t>",(_x getVariable ["realname",name _x])]};

                   
                    case (_x in (units group player) && playerSide isEqualTo civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};

                    case (side _x isEqualTo west && {!isNil {_x getVariable "rank"}}): {format["<img image='%1' size='2'></img> Police<br/><t align='center' color='#fffff'>%2</t>",switch ((_x getVariable "rank")) do {
						case 2:{"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
						case 3: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"};
						case 4: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
						case 5: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
						case 6: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
						case 7: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
						default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
                        },_x getVariable ["realname",name _x]]};
                    
                    case (side _x isEqualTo independent): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='2'></img> Medic</t><br/><t align='center' color='#fffff'>%1</t>",_x getVariable ["realname",name _x]]};
                    
                    default {
                        if (!isNil {(group _x) getVariable "gang_name"}) then {
                            format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
                        } else {
                            _x getVariable ["realname",name _x];
                        };
                    };

                };
				
				if(_x getVariable ["speaking",false]) then {
				_text = format ["<img image='\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa' size='1.5'></img>"] + _text;
				};

                _idc ctrlSetStructuredText parseText _text;
                _idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
                _idc ctrlSetScale scale;
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
            } else {
                _idc ctrlShow false;
            };
        } else {
            _idc ctrlShow false;
        };
    } else {
        _idc ctrlShow false;
    };
} forEach _units;