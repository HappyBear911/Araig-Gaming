/*

	File: fn_robGasStation.sqf
    Author: t1lt3rr0r

    Description:
    Robbing gas station NPCs

*/
_object = _this select 0;
_caller = _this select 1;
_escapeFailed = false;
_fences = [jailfence_1,jailfence_2,jailfence_3,jailfence_4];

// Enable action in use
life_action_inUse = true;

// Tell police prison escape in action
[[1,"Police Report:\nPrison Break started!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

// Warn user
hintSilent format["Don't move further than 10 meters so that an outbreak does not fail! \nCurrent distance : %1m", round (player distance _object)];
titleText ["Hurry up! The alarm was triggered and the police were notified.","PLAIN"];

// Setup our progress bar
_upp = "Security system short-circuited";
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

while{true} do
{
	sleep 4.8;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	hintSilent format["Don't move further than 10 meters so that an outbreak does not fail! \nCurrent distance : %1m", round (player distance _object)];
	if(player distance _object > 10) exitWith {};
	if(!alive player) exitWith {};
};
5 cutText ["","PLAIN"];

// Inform player if escape failed
if(player distance _object > 10) then {
	titleText ["The outbreak has failed because you've removed too far!","PLAIN"];
	_escapeFailed = true;
};
if(!alive player) then {
	titleText ["The outbreak has failed because you died!","PLAIN"];
	_escapeFailed = true;
};

// Disable action in use
life_action_inUse = false;

if (!(_escapeFailed)) then {
	{
		_x setPosATL[(getPosATL _x) select 0,(getPosATL _x) select 1,((getPosATL _x) select 2)-20];
	}foreach _fences;
	
	sleep 30;
		
	{
		_x setPosATL[(getPosATL _x) select 0,(getPosATL _x) select 1,((getPosATL _x) select 2)+20];
	}foreach _fences;	
} else {
	[[1,"Police Report:\nThe jailbreak has failed!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};