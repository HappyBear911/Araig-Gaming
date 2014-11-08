/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {5};
	case "oilp": {4};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {6};
	case "marijuana": {4};
	case "apple": {1};
	case "peach": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {5};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {3};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {10};
	case "rock": {5};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2}; 
	case "storagesmall": {5};
	case "storagebig": {10};
	case "mushroomu": {6};
	case "mushroomp": {4};
	case "obstler": {2};	
	case "springwater": {2};
	case "distwater": {2};
	case "drinkwater": {2};
	case "sugarcane": {4};
	case "sugarcanejuice": {2};
	case "sugar": {1};
	case "mash": {4};
	case "rum": {6};	
	case "roadBarrier": {10};
	case "cordlessScrewdriver": {1};
	case "roadBarrierSmall": {5};
	case "roadCone": {3};
	case "arrowSignLeft": {10};
	case "arrowSignRight": {10};
	case "portableLight": {5};
	case "drugtester": {2};
	case "kidney": {15};
	case "scalpel": {5};
	case "speedbomb": {5};
	default {1};
};
