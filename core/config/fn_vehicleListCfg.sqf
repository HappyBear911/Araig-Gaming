#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
 	{
 		_return = [
 			["C_Kart_01_Blu_F",15000],
 			["C_Kart_01_Fuel_F",15000],
 			["C_Kart_01_Red_F",15000],
 			["C_Kart_01_Vrana_F",15000]
 		];
 	};
 
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",75000]
		];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["I_Heli_light_03_unarmed_F",150000];
		};		
	};
	
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",10000],
			["C_Offroad_01_F",16000],
			["C_SUV_01_F",32000],
			["C_Hatchback_01_sport_F",240000]
		];
	}; 
	
	case "donator":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[				
				["B_Quadbike_01_F",2375],
				["C_Hatchback_01_F",9500],
				["C_Hatchback_01_sport_F",60000],
				["C_Offroad_01_F",15200],
				["C_SUV_01_F",30400],
				["C_Van_01_transport_F",57000],
				["C_Van_01_box_F",95000],
				["I_Truck_02_transport_F",152000],
				["I_Truck_02_covered_F",228000],
				["O_Truck_03_transport_F",323000],
				["O_Truck_03_covered_F",418000],
				["B_Truck_01_transport_F",513000],				
				["B_Heli_Light_01_F",218500],
				["O_Heli_Light_02_unarmed_F",475000],
				["I_Heli_light_03_unarmed_F",950000],
				["I_Heli_Transport_02_F",3800000]	
			];
		};
	
		if(__GETC__(life_donator) == 2) then
		{
			_return =
			[
				["B_Quadbike_01_F",2250],
                ["C_Hatchback_01_F",9000],
				["C_Hatchback_01_sport_F",54000],
                ["C_Offroad_01_F",14400],
                ["C_SUV_01_F",28800],
                ["C_Van_01_transport_F",54000],
                ["C_Van_01_box_F",90000],
                ["I_Truck_02_transport_F",144000],
                ["I_Truck_02_covered_F",216000],
                ["O_Truck_03_transport_F",306000],
                ["O_Truck_03_covered_F",396000],
                ["B_Truck_01_transport_F",486000],
				["B_Heli_Light_01_F",207000],
				["O_Heli_Light_02_unarmed_F",450000],
				["I_Heli_light_03_unarmed_F",900000],
				["I_Heli_Transport_02_F",3600000]	
			];
		};
		if(__GETC__(life_donator) == 3) then
		{
			_return =
			[				
				["B_Quadbike_01_F",2125],
				["C_Hatchback_01_F",8500],
				["C_Hatchback_01_sport_F",51000],
				["C_Offroad_01_F",13600],
				["C_SUV_01_F",27200],
				["C_Van_01_transport_F",51000],
				["C_Van_01_box_F",85000],
				["I_Truck_02_transport_F",136000],
				["I_Truck_02_covered_F",204000],
				["O_Truck_03_transport_F",289000],
				["O_Truck_03_covered_F",374000],
				["B_Truck_01_transport_F",459000],
				["B_Truck_01_covered_F",660000],
				["B_Heli_Light_01_F",195500],
				["O_Heli_Light_02_unarmed_F",425000],
				["I_Heli_light_03_unarmed_F",850000],
				["I_Heli_Transport_02_F",3400000]	
			];
		};
		if(__GETC__(life_donator) == 4) then
		{
			_return =
			[
				["B_Quadbike_01_F",1875],
                ["C_Hatchback_01_F",7500],
				["C_Hatchback_01_sport_F",45000],
                ["C_Offroad_01_F",12000],
                ["C_SUV_01_F",24000],
                ["C_Van_01_transport_F",45000],
                ["C_Van_01_box_F",75000],
                ["I_Truck_02_transport_F",120000],
                ["I_Truck_02_covered_F",180000],
                ["O_Truck_03_transport_F",255000],
                ["O_Truck_03_covered_F",330000],
                ["B_Truck_01_transport_F",405000],
				["B_Truck_01_covered_F",495000],
				["B_Truck_01_box_F",800000],
				["B_Heli_Light_01_F",172500],
				["O_Heli_Light_02_unarmed_F",375000],
				["I_Heli_light_03_unarmed_F",750000],
				["I_Heli_Transport_02_F",3000000]	
			];
		};
		if(__GETC__(life_donator) == 5) then
		{
			_return =
			[
				["B_Quadbike_01_F",1625],
                ["C_Hatchback_01_F",6500],
				["C_Hatchback_01_sport_F",39000],
                ["C_Offroad_01_F",10400],
                ["C_SUV_01_F",20800],
                ["C_Van_01_transport_F",39000],
                ["C_Van_01_box_F",65000],
                ["I_Truck_02_transport_F",104000],
                ["I_Truck_02_covered_F",156000],
                ["O_Truck_03_transport_F",221000],
                ["O_Truck_03_covered_F",286000],
                ["B_Truck_01_transport_F",351000],
                ["B_Truck_01_covered_F",429000],
                ["B_Truck_01_box_F",520000],				
				["B_Heli_Light_01_F",149500],
				["O_Heli_Light_02_unarmed_F",325000],
				["I_Heli_light_03_unarmed_F",650000],
				["I_Heli_Transport_02_F",2600000]				
			];
		};
	};
	
	case "civ_truck":
	{
		_return =
		[			
			["C_Van_01_transport_F",60000],
			["C_Van_01_box_F",100000],
			["I_Truck_02_transport_F",160000],
			["I_Truck_02_covered_F",240000],
			["O_Truck_03_transport_F",340000],
			["O_Truck_03_covered_F",440000],
			["B_Truck_01_transport_F",540000],
			["B_Truck_01_covered_F",2640000],
			["B_Truck_01_box_F",3200000],
			["O_Truck_03_device_F",3300000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_G_Offroad_01_F",20000],
			["O_MRAP_02_F",1100000],
			["B_Heli_Light_01_F",250000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack ["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack ["B_Quadbike_01_F",2000];
		
		_return pushBack ["C_Offroad_01_F",5000];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["C_SUV_01_F",20000];
		};		
		if(__GETC__(life_coplevel) > 4 || __GETC__(life_swatlevel) > 0) then
		{
			_return pushBack ["C_Hatchback_01_sport_F",40000];
		};		
		if(__GETC__(life_coplevel) > 8 || __GETC__(life_swatlevel) > 0) then
		{		
			_return pushBack ["B_MRAP_01_F",30000];
		};		
		if(__GETC__(life_coplevel) > 10 || __GETC__(life_swatlevel) > 0) then
		{		
			_return pushBack ["I_MRAP_03_F",30000];
		};		
		if(__GETC__(life_coplevel) > 13 || __GETC__(life_swatlevel) > 0) then
		{
			_return pushBack ["B_MRAP_01_hmg_F",750000];
		};
	};
		
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",230000],
			["O_Heli_Light_02_unarmed_F",500000],
			["I_Heli_light_03_unarmed_F",1000000],
			["I_Heli_Transport_02_F",4000000],
			["I_Heli_Transport_02_F",10400000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack ["B_Heli_Light_01_F",75000];
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["I_Heli_light_03_unarmed_F",260000];
		};
		if(__GETC__(life_coplevel) > 14) then
		{
			_return pushBack ["B_Heli_Attack_01_F",500000];
		};
		if(__GETC__(life_swatlevel) > 0) then
		{
			_return pushBack ["B_Heli_Transport_01_F",260000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
		if(__GETC__(life_donator) > 3) then
		{
			_return pushBack ["B_SDV_01_F",250000];
		} else {
			_return pushBack ["B_SDV_01_F",1000000];
		};
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",6000],
			["C_Boat_Civil_01_police_F",50000],			
			["B_SDV_01_F",100000]
		];
		if(__GETC__(life_coplevel) > 12) then
		{
			_return pushBack ["B_Boat_Armed_01_minigun_F",100000];
		};
	};
	
	case "civ_outland_car":
	{
		_return =
		[
			["O_MRAP_02_hmg_F",50000],
			["B_MRAP_01_gmg_F",75000],			
			["O_MRAP_02_gmg_F",100000],	
			["I_APC_tracked_03_cannon_F",150000]
		];
	};
	
	case "cop_outland_car":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return =
			[
				["I_MRAP_03_F",30000],
				["I_MRAP_03_hmg_F",45000],			
				["I_MRAP_03_gmg_F",60000],	
				["B_APC_Wheeled_01_cannon_F",100000]
			];
		};
	};
};

_return;
