/*
	Author: GetSomePanda / Panda
	SteamID: 76561198145366418
	File Name: fn_messagesMenu.sqf
	Information: Sets up message menu.
*/
private["_messages","_playerList","_infoToPass","_delButton"];

disableSerialization;

createDialog "life_cell_old_msgs";
waitUntil {!isNull (findDisplay 98111)};
_playerList = ((findDisplay 98111) displayCtrl 98112);
_delButton = ((findDisplay 98111) displayCtrl 98114);
_delButton ctrlShow false;

_messages = player getVariable "cellphone_messages";

lbClear _playerlist;

if(count _messages < 1) then 
{
	_playerList lbAdd format["No Messages Found!"];
	_playerList lbSetdata [(lbSize _playerList)-1, "You have no messages."];
}
else
{
	{
		_infoToPass = format["%1", _x];
		_playerList lbAdd format["%1", _x select 0];
		_playerList lbSetdata [(lbSize _playerList)-1, _infoToPass];
	} foreach _messages;
};


