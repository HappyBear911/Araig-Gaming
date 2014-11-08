/*
    Script by NOAAAH
*/

private["_target"];


_target = _this select 0;

if(isNull _target) exitWith {}; //Bad target
if(!isPlayer _target) exitWith {}; //No Real Player...

[[name player], "life_fnc_idCardShowed", _target, false] spawn life_fnc_MP;