/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "mushroomu": {"life_inv_mushroomu"};
			case "mushroomp": {"life_inv_mushroomp"};
			case "obstler": {"life_inv_obstler"};			
			case "springwater": {"life_inv_springwater"};
			case "distwater": {"life_inv_distwater"};
			case "drinkwater": {"life_inv_drinkwater"};
			case "sugarcane": {"life_inv_sugarcane"};
			case "sugarcanejuice": {"life_inv_sugarcanejuice"};
			case "sugar": {"life_inv_sugar"};
			case "mash": {"life_inv_mash"};
			case "rum": {"life_inv_rum"};			
			case "roadBarrier": {"life_inv_roadBarrier"};
			case "cordlessScrewdriver": {"life_inv_cordlessScrewdriver"};
			case "roadBarrierSmall": {"life_inv_roadBarrierSmall"};
			case "roadCone": {"life_inv_roadCone"};
			case "arrowSignLeft": {"life_inv_arrowSignLeft"};
			case "arrowSignRight": {"life_inv_arrowSignRight"};
			case "portableLight": {"life_inv_portableLight"};
			case "drugtester": {"life_inv_drugtester"};		
			case "kidney": {"life_inv_kidney"};
			case "scalpel": {"life_inv_scalpel"};
			case "speedbomb": {"life_inv_speedbomb"};
			case "tankmanipulator": {"life_inv_tankmanipulator"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_mushroomu": {"mushroomu"};
			case "life_inv_mushroomp": {"mushroomp"};
			case "life_inv_obstler": {"obstler"};			
			case "life_inv_springwater": {"springwater"};
			case "life_inv_distwater": {"distwater"};
			case "life_inv_drinkwater": {"drinkwater"};
			case "life_inv_sugarcane": {"sugarcane"};
			case "life_inv_sugarcanejuice": {"sugarcanejuice"};
			case "life_inv_sugar": {"sugar"};
			case "life_inv_mash": {"mash"};
			case "life_inv_rum": {"rum"};			
			case "life_inv_roadBarrier": {"roadBarrier"};
			case "life_inv_cordlessScrewdriver": {"cordlessScrewdriver"};
			case "life_inv_roadBarrierSmall": {"roadBarrierSmall"};
			case "life_inv_roadCone": {"roadCone"};
			case "life_inv_arrowSignLeft": {"arrowSignLeft"};
			case "life_inv_arrowSignRight": {"arrowSignRight"};
			case "life_inv_portableLight": {"portableLight"};
			case "life_inv_drugtester": {"drugtester"};
			case "life_inv_kidney": {"kidney"}; 
			case "life_inv_scalpel": {"scalpel"}; 
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_tankmanipulator": {"tankmanipulator"};
		};
	};
};
