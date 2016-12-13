#include "..\..\script_macros.hpp"
/*
    Author: GetSomePanda / Panda
    SteamID: 76561198145366418
    File Name: fn_hudUpdateWanted.sqf
    Information: Updates wanted bounty everytime it changes to the hud.
*/
disableSerialization;

waitUntil {!isNull (uiNamespace getVariable ["playerHUD",displayNull])};

if(isNil "bountyToAdd") then
{
    bountyToAdd = 0;
};

if(life_first_wUpdate) then
{
    life_first_wUpdate = false;
}
else
{
    waitUntil {bountyToAdd != 0 || myBounty isEqualTo -1};
    if(myBounty isEqualTo -1) then
    {
        myBounty = 0;
    }
    else
    {
        myBounty = myBounty + bountyToAdd;
    };
};

//Add commas to the number so 1000 will be 1,000 . I know this is a ugly way of doing it but cba.
stringedMyBounty = nil;


Panda_commaFunction =
{
    _numberToAddComma = format["%1",_this];
	_numberToAddComma = toArray(_numberToAddComma);
	
	_comma = 44;
    
    if(count _numberToAddComma < 4) then
    {
        stringedMyBounty = myBounty;
    };
    
	if(count _numberToAddComma isEqualTo 4) then
	{
		_newToStringArray = [];
		_newToStringArray pushback (_numberToAddComma select 0);
		_newToStringArray pushback _comma;
		_newToStringArray pushback (_numberToAddComma select 1);
		_newToStringArray pushback (_numberToAddComma select 2);
		_newToStringArray pushback (_numberToAddComma select 3);
		stringedMyBounty = toString(_newToStringArray);
	};
	
	if(count _numberToAddComma isEqualTo 5) then
	{
		_newToStringArray = [];
		_newToStringArray pushback (_numberToAddComma select 0);
		_newToStringArray pushback (_numberToAddComma select 1);
		_newToStringArray pushback _comma;
		_newToStringArray pushback (_numberToAddComma select 2);
		_newToStringArray pushback (_numberToAddComma select 3);
		_newToStringArray pushback (_numberToAddComma select 4);
		stringedMyBounty = toString(_newToStringArray);
	};
	
	if(count _numberToAddComma isEqualTo 6) then
	{
		_newToStringArray = [];
		_newToStringArray pushback (_numberToAddComma select 0);
		_newToStringArray pushback (_numberToAddComma select 1);
		_newToStringArray pushback (_numberToAddComma select 2);
		_newToStringArray pushback _comma;
		_newToStringArray pushback (_numberToAddComma select 3);
		_newToStringArray pushback (_numberToAddComma select 4);
		_newToStringArray pushback (_numberToAddComma select 5);
		stringedMyBounty = toString(_newToStringArray);
	};
	
	if(count _numberToAddComma isEqualTo 7) then
	{
		_newToStringArray = [];
		_newToStringArray pushback (_numberToAddComma select 0);
		_newToStringArray pushback _comma;
		_newToStringArray pushback (_numberToAddComma select 1);
		_newToStringArray pushback (_numberToAddComma select 2);
		_newToStringArray pushback (_numberToAddComma select 3);
		_newToStringArray pushback _comma;
		_newToStringArray pushback (_numberToAddComma select 4);
		_newToStringArray pushback (_numberToAddComma select 5);
		_newToStringArray pushback (_numberToAddComma select 6);
		stringedMyBounty = toString(_newToStringArray);
	};
};


myBounty call Panda_commaFunction;
waitUntil{!isNil "stringedMyBounty"};
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1203) ctrlSetText format["$%1",stringedMyBounty];
uiSleep 1;
bountyToAdd = 0;
stringedMyBounty = nil;

[] spawn life_fnc_hudUpdateWanted;