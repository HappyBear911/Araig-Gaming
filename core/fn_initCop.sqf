#include <macro.h>
/*
        File: fn_initCop.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Cop Initialization file.
*/
private["_end","_getRank"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
        ["BlacklistedCop",false,true] call BIS_fnc_endMission;
        sleep 30;
};
 
if(__GETC__(life_coplevel) == 0) then {
        ["WrongSlot",false,true] call BIS_fnc_endMission;
        sleep 30;
};
 
 
player setVariable["rank",(__GETC__(life_coplevel)),true];
 
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
 