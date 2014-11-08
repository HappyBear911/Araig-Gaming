/*
    Script by NOAAAH
*/
private["_name", "_username"];

_username = (_this select 0);


if(!dialog) then {
	createDialog "life_hl_idcard";
};

disableSerialization;

_display = findDisplay 999;

_name = _display displayCtrl 112;
_name ctrlSetText format["Name: %1", _username];