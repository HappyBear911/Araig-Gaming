/*
    Script by NOAAAH
*/

private["_unit"];

_unit = (_this select 0);

if(isNull _unit) exitWith {};

hint "Suche...";
sleep 3;

if(!dialog) then {
	createDialog "life_hl_idcard";
};
disableSerialization;

_display = findDisplay 999;

_name = _display displayCtrl 112;
_name ctrlSetText format["Name: %1", (name _unit)];