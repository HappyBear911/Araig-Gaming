/*
	File: addJobCooldown.sqf
    Author: t1lt3rr0r

    Description:
    Adds cooldown to mining jobs.
	Run with: [player, _mine, _markerName] spawn life_fnc_addJobCooldown;
*/
private["_player","_mine","_markerName"];
_player = _this select 0;
_mine = _this select 1;
_markerName = _this select 2;
_time = 0;

switch (_markerName) do {
	case ("lead_1"): {_time = 3600;};
	case ("iron_1"): {_time = 3600;};
	case ("salt_1"): {_time = 3600;};
	case ("sand_1"): {_time = 3600;};
	case ("diamond_1"): {_time = 5400;};
	case ("oil_1"): {_time = 3600;};
	case ("oil_2"): {_time = 3600;};
	case ("rock_1"): {_time = 3600;};
	default {_time = 0;};
};

_player setVariable [_mine+"WaitForCooldown", true, false];
waitUntil {_player distance (getMarkerPos _markerName) > 200};
_player setVariable [_mine+"Cooldown", true, false];
for "_i" from _time to 0 step -1 do {
	_player setVariable [_mine+"CooldownTime", ceil (_i/60), false];
	sleep 1;
};
_player setVariable [_mine+"Cooldown", false, false];
_player setVariable [_mine+"WaitForCooldown", false, false];



/*
_index = _this select 0;
_type = (cooldownarray select _index) select 0;

switch (_type) do {
	case ("copperore"): {_time = 3600;};
	case ("ironore"): {_time = 3600;};
	case ("salt"): {_time = 3600;};
	case ("sand"): {_time = 3600;};
	case ("diamond"): {_time = 5400;};
	case ("oilu"): {_time = 3600;};	
	case ("rock"): {_time = 3600;};
	default {_time = 0;};
};

(cooldownarray select _index) set [1,_time]; 
(cooldownarray select _index) set [2,0]; 

*/