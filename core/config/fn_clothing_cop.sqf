#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Officer",1000];
		_ret pushBack ["U_O_Wetsuit","Diving Suit",2000];
		
		if(__GETC__(life_swatlevel) > 0) then
		{
			_ret pushBack ["U_I_CombatUniform_tshirt","SWAT",10000];
			_ret pushBack ["U_I_Wetsuit","SWAT Diving Suit",10000];
		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_Cap_blk",nil,250];
			_ret pushBack ["H_Watchcap_blk",nil,500];
		};

		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Cap_headphones",2555];
			_ret pushBack ["H_Beret_blk",nil,750];
			_ret pushBack ["H_CrewHelmetHeli_B","Gas Mask",5000];
		};

		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_Beret_02",nil,1500];
		};

		if(__GETC__(life_swatlevel) > 0) then
		{
			_ret pushBack ["H_Beret_Colonel","SWAT Beret",1500];
			_ret pushBack ["H_HelmetB_black","SWAT Helm",1500];
			_ret pushBack ["H_PilotHelmetHeli_B","SWAT Pilot Helmet",1500];
		};

	};

	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving","Scuba Mask",500]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,3000];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["V_TacVest_blk_POLICE",nil,8000];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,12000];
		};
				if(__GETC__(life_coplevel) > 13) then
		{
			_ret pushBack ["V_Chestrig_blk",nil,15000];
		};
		if(__GETC__(life_swatlevel) > 0) then
		{				
			_ret pushBack ["V_PlateCarrier1_blk","SWAT Vest",1500];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret pushBack ["tf_rt1523g",nil,5000];
		_ret pushBack ["B_Kitbag_cbr",nil,5000];
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["B_UAV_01_backpack_F",nil,10000];
		};
		if(__GETC__(life_swatlevel) > 0) then
		{
			_ret pushBack ["B_UAV_01_backpack_F",nil,10000];
		};
	};
};

_ret;