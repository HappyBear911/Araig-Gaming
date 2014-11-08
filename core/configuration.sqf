#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/

nn_last_vehicles = [];
nn_empInUse = false;

life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_siren3_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_robGasStationCooldown = false;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_car_theft_insurance = false; //Insurance for chop shop sell
life_request_timer = false; //Higher respawn time if requested medic
life_inOutlands = false; // Init variable for check if player is in outlands area
life_bet = false; // Sport bets
life_god = false; // Extended Admin Menu
life_frozen = false; // Extended Admin Menu
life_markers = false; // Extended Admin Menu
life_gearOnDeath = []; // Primary weapon save fix variable

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,2500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

life_placingObject = false;
//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_smartphoneTarget = ObjNull;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_action_gatherInUse = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,500);
__CONST__(life_impound_air,2000);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 7500; //Starting Bank Money
		life_paycheck = 700; //Paycheck Amount
	};
	
	case independent:
	{
		life_atmcash = 7000;
		life_paycheck = 2000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_G_Offroad_01_armed_F","O_MRAP_02_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_APC_tracked_03_cannon_F","I_MRAP_03_gmg_F","B_APC_Wheeled_01_cannon_F"];
 __CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..
 
life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
    "life_inv_storagebig",
	"life_inv_mushroomu",
	"life_inv_mushroomp",
	"life_inv_obstler",	
	"life_inv_springwater",
	"life_inv_distwater",
	"life_inv_drinkwater",
	"life_inv_sugarcane",
	"life_inv_sugarcanejuice",
	"life_inv_sugar",
	"life_inv_mash",
	"life_inv_rum",	
	// Custom placeable Objects
	"life_inv_cordlessScrewdriver",
	"life_inv_roadBarrier",
	"life_inv_roadBarrierSmall",
	"life_inv_roadCone",
	"life_inv_arrowSignLeft",
	"life_inv_arrowSignRight",
	"life_inv_portableLight",
	"life_inv_drugtester",
	"life_inv_kidney",
	"life_inv_scalpel",
	"life_inv_speedbomb",
	"life_inv_tankmanipulator"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_hack","civ"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_med_air","med"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_mushroom","civ"],
	["license_civ_obstler","civ"],	
	["license_civ_distwater","civ"],
	["license_civ_sugarcanejuice","civ"],
	["license_civ_mash","civ"],
	["license_civ_rum","civ"],
	["license_civ_sugar","civ"],
	["license_civ_drinkwater","civ"],
	["license_civ_home", "civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",2850],["heroinp",5700],["cocaine",3900],["cocainep",7800],["cannabis",2000],["marijuana",4000],["turtle",10000],["mushroomu",2350],["mushroomp",4700],["mash",5000],["blastingcharge",10000],["boltcutter",500],["kidney",5000],["speedbomb",1200000],["tankmanipulator", 50000]];


/*
	Sell / buy arrays
*/
/*sell_array*/marketprices = 
[
	["apple",50],
	["heroinu",2850],
	["heroinp",5700],
	["salema",150],
	["ornate",150],
	["mackerel",300],
	["tuna",1500],
	["mullet",600],
	["catshark",1000],
	["rabbit",35],
	["oilp",2800],
	["turtle",10000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",4000],
	["tbacon",75],
	["lockpick",1000],
	["pickaxe",1000],
	["redgull",200],
	["peach",70],
	["cocaine",3900],
	["cocainep",7800],
	["diamond",1300],
	["diamondc",2600],
	["iron_r",2800],
	["copper_r",2500],
	["salt_r",1500],
	["glass",3200],
	["fuelF",500],	
	["cement",1300],
	["goldbar",95000],
	["mushroomu",2350],
	["mushroomp",4700],	
	["obstler",300],	
	["drinkwater",1050],
	["sugar",1500],
	["mash",5000],
	["rum",9500],	
	// Custom placeable objects
	["cordlessScrewdriver",2500],
	["spikeStrip",1200],
	["roadBarrier",1250],
	["roadBarrierSmall",625],
	["roadCone",300],
	["arrowSignLeft",1250],
	["arrowSignRight",1250],
	["portableLight",625],
	["drugtester",2500],
	["kidney",50000],
	["scalpel",2500],
	["speedbomb",1000000],
	["tankmanipulator", 50000]
];
//__CONST__(sell_array,sell_array);
__CONST__(sell_array,marketprices);

buy_array = 
[
	["apple",65],
	["rabbit",90],
	["salema",150],
	["ornate",150],
	["mackerel",300],
	["tuna",1500],
	["mullet",600],
	["catshark",1000],
	["water",10],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",150],
	["lockpick",2500],
	["pickaxe",2000],
	["redgull",1500],
	["fuelF",850],
	["peach",80],	
	// Custom placeable objects
	["cordlessScrewdriver",5000],
	["spikeStrip",2500],
	["roadBarrier",2500],
	["roadBarrierSmall",1250],
	["roadCone",600],
	["arrowSignLeft",2500],
	["arrowSignRight",2500],
	["portableLight",1250],
	["drugtester",5000],
	["kidney",75000],
	["scalpel",5000],
	//Housing
	["storagesmall",300000],
    ["storagebig",1800000],
	// Bank robbery items
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["speedbomb", 1200000],
	["tankmanipulator", 50000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array = [];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	// Cars and Trucks
	["B_Quadbike_01_F",0],
	["C_Hatchback_01_F",750],
	["C_Hatchback_01_sport_F",2925],
	["C_Offroad_01_F", 1200],
	["B_G_Offroad_01_F",1200],
	["C_SUV_01_F",2400],	
	["C_Van_01_transport_F",4500],
	["C_Van_01_fuel_F",4500],
	["C_Van_01_box_F",7500],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",18000],
	["O_Truck_03_transport_F",25500],
    ["O_Truck_03_covered_F",33000],
	["O_Truck_03_device_F",33000],
	["B_Truck_01_transport_F",40500],
	["B_Truck_01_covered_F",49500],
	["B_Truck_01_box_F",60000],
	// Helicopters
	["B_Heli_Light_01_F",17250],
	["O_Heli_Light_02_unarmed_F",37500],
	["I_Heli_light_03_unarmed_F",45000],	
	["I_Heli_Transport_02_F",60000],	
	// Armoured vehicles
	["B_MRAP_01_F",2250],
	["O_MRAP_02_F",100000],
	["B_MRAP_01_hmg_F",100000],	
	// Boats
	["C_Rubberboat",375],
	["C_Boat_Civil_01_F",1650],
	["B_Boat_Transport_01_F",2250],
	["C_Boat_Civil_01_police_F",3750],
	["B_Boat_Armed_01_minigun_F",7500],
	["B_SDV_01_F",18750]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	// Cars and Trucks
	["B_Quadbike_01_F",1200],
	["C_Hatchback_01_F",5000],
	["C_Hatchback_01_sport_F",30000],
	["C_Offroad_01_F", 7500],
	["B_G_Offroad_01_F",7500],
	["C_SUV_01_F",15000],	
	["C_Van_01_transport_F",30000],
	["C_Van_01_fuel_F",30000],
	["C_Van_01_box_F",50000],
	["I_Truck_02_transport_F",80000],
	["I_Truck_02_covered_F",120000],
	["O_Truck_03_transport_F",165000],
    ["O_Truck_03_covered_F",215000],
	["O_Truck_03_device_F",2475000],
	["B_Truck_01_transport_F",265000],
	["B_Truck_01_covered_F",320000],
	["B_Truck_01_box_F", 390000],
	// Helicopters
	["B_Heli_Light_01_F",110000],
	["B_Heli_Transport_01_F",150000],
	["O_Heli_Light_02_unarmed_F",245000],
	["I_Heli_light_03_unarmed_F",325000],
	["I_Heli_Transport_02_F",600000],
	// Armoured vehicles
	["B_MRAP_01_F",22500],
	["O_MRAP_02_F",450000],
	// Boats
	["C_Rubberboat",3750],
	["C_Boat_Civil_01_F",16500],
	["B_Boat_Transport_01_F",4500],
	["C_Boat_Civil_01_police_F",37500],
	["B_Boat_Armed_01_minigun_F",75000],
	["B_SDV_01_F",190000]
];
__CONST__(life_garage_sell,life_garage_sell);

/* Safe Zones = ["markername", safe_radius] */
life_safezone_points =
[
	["safe_zone_1", 500]
];
__CONST__(life_safezone_points,life_safezone_points);