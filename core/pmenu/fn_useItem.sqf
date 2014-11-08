/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};

	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedBomb;
	};

	case (_item == "tankmanipulator"):
	{
		[] spawn life_fnc_tankManipulator;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		player reveal fed_bank; // Could not defuse FIX
		(group player) reveal fed_bank; // Could not defuse FIX
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};

	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	// ### Custom object placing
	case (_item == "cordlessScrewdriver"):
	{
		if(life_placingObject) exitWith {hint "You have been using an object!"};
		if (playerSide == civilian) exitWith {hint "you can not use this item!"};
		[] spawn life_fnc_removePlacedObject;
		closeDialog 0;
	};
	
	case (_item in ["roadBarrier","roadBarrierSmall","roadCone","arrowSignLeft","arrowSignRight","portableLight"]):
	{
		if(life_placingObject) exitWith {hint "You already ask  an object!"};
		if (playerSide == civilian) exitWith {hint "This item can not be used!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_placeObject;
			closeDialog 0;
		};
	};	
	// ###
	
	case (_item == "drugtester"): {
		[cursorTarget] spawn life_fnc_drugTester;
		closeDialog 0;
	};
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 allows himself a break with a Bob Marley Blueberry Kush Ultra Blunt...",player getVariable["realname",name player]]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[] spawn
			{
				titleText["You are tired and hungry , relax and examined to what you eat.","PLAIN"];
				[] spawn life_fnc_weedUse;
			};
			[[0,format["POLICE REPORT: Public use of narcotics (Marijuana)",player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 has used a shot...",player getVariable["realname",name player]]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[] spawn
			{
				titleText["You are advised on a bad trip . Be issued up to a doctor or you could die...","PLAIN"];
				[] spawn life_fnc_heroinUse;
			};
			[[0,format["POLICE REPORT: Public use of narcotics (Heroin)",player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
	};
	
	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 has just powdered nose...",player getVariable["realname",name player]]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[] spawn
			{
				titleText["You feel hyperactive and are quick as a flash!","PLAIN"];
				[] spawn life_fnc_cocaineUse;
			};
			[[0,format["POLICE REPORT: Public use of narcotics (Cocain)",player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
	};
	
	case (_item == "mushroomp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 has eaten the wrong mushrooms...",player getVariable["realname",name player]]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[] spawn
			{
				titleText["Pink elephants, rhinos flying and dancing monkeys. When the time was not too much!","PLAIN"];
				[] spawn life_fnc_magicMushroomUse;
			};
			[[0,format["POLICE REPORT: Public use of narcotics (Magic Mushrooms)",player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;