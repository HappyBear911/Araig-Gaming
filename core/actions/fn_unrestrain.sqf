/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

if (playerSide == civilian && !(_unit getVariable["restrainedByCiv",FALSE])) exitWith {
	hint "You can not open these handcuffs!";
};

_unit setVariable["restrainedByCiv",false,true];
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;

// Only broadcast message if unrestrained by cop
if (playerSide == west) then {
	[[0,format[localize "STR_NOTF_Unrestrain",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
};