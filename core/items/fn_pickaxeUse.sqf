/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val", "_markerName"];
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 30): {_mine = "copperore"; _val = 2; _markerName="lead_1"; _itemName = "Kupfer";};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _val = 2; _markerName="iron_1"; _itemName = "Silber";};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 4; _markerName="salt_1"; _itemName = "Salz";};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 5; _markerName="sand_1"; _itemName = "Sand";};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _val = 1; _markerName="diamond_1"; _itemName = "Diamanten";};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = 1; _markerName="oil_1"; _itemName = "Öl";};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = 1; _markerName="oil_2"; _itemName = "Öl";};
	case (player distance (getMarkerPos "rock_1") < 50): {_mine = "rock"; _val = 2; _markerName="rock_1"; _itemName = "Steine";};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
if(life_action_inUse) exitWith {};
if(life_action_gatherInUse) exitWith {};
life_action_inUse = true;
life_action_gatherInUse = true;

// pickaxe sound (see description.ext for filepath)
player say3D "Pickaxe";

for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
life_action_gatherInUse = false;