/*
	Author: Black Lagoon Server
	Player clicked arrest/ok
*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Invalid target."};

//Get minutes
_time = ctrlText 1400;


if(!([_time] call TON_fnc_isnumber)) exitWith
{
	hint "You must enter a number.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 15 || _time > 60) exitWith { hint "You can only put between 15-60 minutes to jail people!"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;