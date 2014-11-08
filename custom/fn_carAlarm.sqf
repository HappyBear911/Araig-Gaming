private ["_unit","_sleep"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_sleep = [_this,1,0,[0]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
sleep _sleep;
_unit say3D "Caralarm";
