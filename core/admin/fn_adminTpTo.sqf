#include <macro.h>
/*
	File: fn_adminTpHTo.sqf
	Author: ColinM9991
	
	Description:
	Teleport yourself to selected player.
*/
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint localize "STR_ANOTF_Error";};

if(vehicle player == player) then {
	player setPos (getPos _target);
} else { 
	(vehicle player) setPos (getPos _target);
};
hint format["You have teleported to %1",_target getVariable["realname",name _target]];