/*

	File: fn_robGasStation.sqf
    Author: t1lt3rr0r

    Description:
    Robbing gas station NPCs

*/
_shop = _this select 0;
_caller = _this select 1;
_robberyFailed = false;

// Enable action in use
life_action_inUse = true;

// Shop cant be robbed by multiple persons
_shop setVariable ["canBeRobbed", false, true];

// Tell police gas station position
_shopPos = mapGridPosition (getpos _shop);
[[1,format["Police Report: Robbery at a gas station: %1",_shopPos]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

// Tell user not to get too far from robbery target
hintSilent format["Remove yourself no further than 10 meters so that the attack does not fail ! \ nCurrant distance: %1m", round (player distance _shop)];

// Tell user that police is on its way
titleText ["Hurry up! The alarm was triggered and the police are on their way.","PLAIN"];

// Setup our progress bar
_upp = "Robbing Gas-Station";
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
// Random time between 5 and 8 minutes
_progressTime = 4.8 - (random 2);
while{true} do
{
	// Timer between 5 and 8 minutes
	sleep _progressTime;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	hintSilent format["Remove yourself no further than 10 meters so that the attack does not fail ! \ nCurrant distance: %1m", round (player distance _shop)];
	if(player distance _shop > 10) exitWith {};
	if(!alive player) exitWith {};
};
5 cutText ["","PLAIN"];

// Inform player if robbery failed
if(player distance _shop > 10) then {
	titleText ["The attack failed because you've removed too far!","PLAIN"];
	_robberyFailed = true;
};
if(!alive player) then {
	titleText ["The attack failed because you died!","PLAIN"];
	_robberyFailed = true;
};

// Disable action in use
life_action_inUse = false;

// Shop can be robbed again if failed
_shop setVariable ["canBeRobbed", true, true];

// Pay the robber with random amount of money
if (!(_robberyFailed)) then {
	_money = 30000 - (floor random 15000);
	life_cash = life_cash + _money;
	titleText [format["You have stolen $%1. \nLook to you untertauchst. You've been detected!\ NA Another robbery is for a certain time first no longer possible.",_money], "PLAIN"];
	
	// Make player wanted
	[[getPlayerUID _caller,name _caller,"18"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	
	// Add cooldown to robbing multiple gas stations
	life_robGasStationCooldown = true;	
	// Shop cant be robbed again
	_shop setVariable ["canBeRobbed", false, true];
	
	// Shop can be robbed again after 45 to 90 Minutes.
	// Player can rob gas station again after 45 to 90 Minutes.
	_timer = 5400 - (floor random 2700);
	sleep _timer;

	_shop setVariable ["canBeRobbed", true, true];
	life_robGasStationCooldown = false;
} else {
	[[1,format["Police Report: The raid at the gas station: %1 failed!",_shopPos]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};