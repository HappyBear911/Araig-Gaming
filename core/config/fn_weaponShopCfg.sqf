#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,100],			
						["FirstAidKit",nil,100],
						["Medikit",nil,200],
						["ToolKit",nil,250],
						["B_Kitbag_cbr",nil,250],
						["NVGoggles",nil,500]
						
					]
				];
			};
		};
	};
	
	case "cop_pv1":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 1): {"You're not a private!"};
			default
			{
				["Altis Private Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["Binocular",nil,99],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_pv2":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 2): {"You're not a private first class!"};
			default
			{
				["Altis Private First Class Shop",
					[	
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["Binocular",nil,99],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_cpl":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 3): {"You're not a Coperal!"};
			default
			{
				["Altis Coperal Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["Binocular",nil,99],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_sgt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 4): {"You're not a Sergeant!"};
			default
			{
				["Altis Sergant Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_ssgt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 5): {"You're not a Staff Sergeant"};
			default
			{
				["Altis Staff Sergant Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["HandGrenade_Stone","Flashbang",500],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]			

					]
				];
			};
		};
	};

	case "cop_sfc":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 6): {"You're not a Sergeant First Class"};
			default
			{
				["Altis Sergant First Class Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["HandGrenade_Stone","Flashbang",500],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_msg":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 7): {"You are not a Master Sergeant!"};
			default
			{
				["Altis Master Sergant Shop",
					[									
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],	
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_sg1":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 8): {"You're not a First Sergeant!"};
			default
			{
				["Altis First Sergeant Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],	
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_sgm":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 9): {"You're not a Sergeant Major!"};
			default
			{
				["Altis Sergeant Major Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],	
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_csm":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 10): {"You're not a Command Sergeant Major!"};
			default
			{
				["Altis Command Sergeant Major Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],	
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_lt2":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 11): {"You are not a Second Lieutenant!"};
			default
			{
				["Altis Second Lieutenant Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]

					]
				];
			};
		};
	};

	case "cop_lt1":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 12): {"You're not a First Lieutenant!"};
			default
			{
				["Altis First Lieutenant Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_cpt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 13): {"You're not Captain!"};
			default
			{
				["Altis Captain Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["V_RebreatherIR",nil,2000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_maj":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 15): {"You are not a Major!"};
			default
			{
				["Altis Lieutenant Colonel Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["V_RebreatherIR",nil,2000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};	

	case "cop_lcol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 15): {"You're not a Lieutenant Colonel!"};
			default
			{
				["Altis Lieutenant Colonel Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],
						["srifle_LRR_F",nil,75000],
						["7Rnd_408_Mag",nil,500],
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["V_RebreatherIR",nil,2000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};
	
	case "cop_col":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 17): {"You're not a Colonel!"};
			default
			{
				["Altis Colonel Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],			
						["srifle_LRR_F",nil,75000],
						["7Rnd_408_Mag",nil,500],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["V_RebreatherIR",nil,2000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};

	case "cop_bg":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 18): {"You're not a Brigadier General!"};
			default
			{
				["Altis Brigadier General Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],
						["srifle_LRR_F",nil,75000],
						["7Rnd_408_Mag",nil,500],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["V_RebreatherIR",nil,2000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};
	
	case "cop_majg":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_coplevel) < 19): {"You are not a Major General!"};
			default
			{
				["Altis Major General Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Sting",30000],
						["30Rnd_9x21_Mag",nil,250],
						["arifle_Katiba_F",nil,15000],
						["30Rnd_65x39_caseless_green",nil,100],
						["arifle_MX_Black_F",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MXC_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["arifle_MX_SW_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["arifle_MXM_Black_F",nil,40000],
						["30Rnd_65x39_caseless_mag",nil,150],
						["30Rnd_65x39_caseless_mag_Tracer",nil,300],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,300],
						["srifle_LRR_F",nil,75000],
						["7Rnd_408_Mag",nil,500],						
						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,5000],
                        ["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,5000],
						["optic_Arco",nil,6000],
						["optic_Hamr",nil,6000],
						["optic_DMS",nil,8000],							
						["optic_NVS",nil,10000],						
						["Binocular",nil,99],
						["Rangefinder",nil,10000],
						["Laserdesignator",nil,20000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["V_RebreatherIR",nil,2000],
						["ItemGPS",nil,78],
						["ToolKit",nil,234],
						["FirstAidKit",nil,159],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["ItemCompass",nil,999],
						["tf_anprc152",nil,1199]
					]
				];
			};
		};
	};
	
	case "cop_swat":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a police officer!"};
			case (__GETC__(life_swatlevel) < 1): {"You are not a SWAT member!"};
			default
			{
				["Altis SWAT Shop",
					[
						["SMG_01_F",nil,20000],						
						["30Rnd_45ACP_Mag_SMG_01",nil,300],	
						["muzzle_snds_acp",nil,2000],						
						["arifle_MXM_Black_F",nil,30000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["muzzle_snds_H",nil,2000],						
						["srifle_EBR_F",nil,30000],						
						["20Rnd_762x51_Mag",nil,500],
						["muzzle_snds_B",nil,2000],						
						["srifle_LRR_F",nil,50000],
						["7Rnd_408_Mag",nil,500],								
						["optic_Hamr",nil,6000],
						["optic_NVS",nil,7000],
						["optic_DMS",nil,8000],
						["optic_SOS",nil,10000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tear Gas",750],
						["B_UavTerminal",nil,5000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You have no rebels License!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,7500], // 7125, 6750, 6375, 5625
						["11Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_02_F",nil,15000], // 14250, 13500, 12750, 11250
						["6Rnd_45ACP_Cylinder",nil,120],
						["arifle_SDAR_F",nil,20000], // 19000, 18000, 17000, 15000
						["20Rnd_556x45_UW_mag",nil,125],
						["SMG_01_F",nil,27500], // 26125, 24750, 23375, 20625
						["30Rnd_45ACP_Mag_SMG_01",nil,300],						
						["arifle_TRG20_F",nil,30000], // 28500, 27000, 25500, 22500
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,35000],	// 33250, 31500, 29750, 26250
						["30Rnd_65x39_caseless_green",nil,275],	
						["arifle_Mk20C_F",nil,40000], // 38000, 36000, 34000, 30000
						["30Rnd_556x45_Stanag",nil,300],						
						["srifle_DMR_01_F",nil,60000], // 57000, 54000. 51000, 45000
						["10Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,150000], // 142500, 135000, 127500, 112500
						["20Rnd_762x51_Mag",nil,400],												
						["LMG_Mk200_F",nil,150000], // 142500, 135000, 127500, 112500
						["200Rnd_65x39_cased_Box",nil,500],
						["srifle_LRR_F",nil,750000], // 712500, 675000, 637500, 562500
						["7Rnd_408_Mag",nil,700],												
						["LMG_Zafir_F",nil,500000], // 475000, 450000, 425000, 375000
						["150Rnd_762x51_Box",nil,500],						
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1500],
                        ["optic_Aco",nil,1500],
						["optic_ACO_grn",nil,2500],
						["optic_Holosight",nil,3500],
						["optic_MRCO",nil,6000],
						["optic_Arco",nil,12500],
						["optic_Hamr",nil,15000],						
						["optic_DMS",nil,17500],							
						["optic_NVS",nil,20000],
						["Rangefinder",nil,40000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You do not have a gun license!"};
			default
			{
				["Billy Joe's Weapon Shop",
					[
						["V_Rangemaster_belt",nil,5000],
						["hgun_Rook40_F",nil,5000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_PDW2000_F",nil,20000],						
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donor!"};
			case (__GETC__(life_donator) == 1):
			{
				["Donator Shop Rang 1",
					[
						["hgun_Pistol_heavy_01_F",nil,7125], // 7125, 6750, 6375, 5625
						["11Rnd_45ACP_Mag",nil,50],
						
						["hgun_Pistol_heavy_02_F",nil,14250], // 14250, 13500, 12750, 11250
						["6Rnd_45ACP_Cylinder",nil,120],
						
						["arifle_SDAR_F",nil,19000], // 19000, 18000, 17000, 15000
						["20Rnd_556x45_UW_mag",nil,125],
						
						["SMG_01_F",nil,26125], // 26125, 24750, 23375, 20625
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						
						["arifle_TRG20_F",nil,28500], // 28500, 27000, 25500, 22500
						["30Rnd_556x45_Stanag",nil,300],
						
						["arifle_Katiba_F",nil,33250],	// 33250, 31500, 29750, 26250
						["30Rnd_65x39_caseless_green",nil,275],	
						
						["arifle_Mk20C_F",nil,38000], // 38000, 36000, 34000, 30000
						["30Rnd_556x45_Stanag",nil,300],	
						
						["srifle_DMR_01_F",nil,57000], // 57000, 54000. 51000, 45000
						["10Rnd_762x51_Mag",nil,500],
						
						["srifle_EBR_F",nil,142500], // 142500, 135000, 127500, 112500
						["20Rnd_762x51_Mag",nil,400],	
						
						["LMG_Mk200_F",nil,142500], // 142500, 135000, 127500, 112500
						["200Rnd_65x39_cased_Box",nil,500],
						
						["srifle_LRR_F",nil,712500], // 712500, 675000, 637500, 562500
						["7Rnd_408_Mag",nil,700],			
						
						["LMG_Zafir_F",nil,475000], // 475000, 450000, 425000, 375000
						["150Rnd_762x51_Box",nil,500],	
						
						["acc_flashlight",nil,950],
						["acc_pointer_IR",nil,1425],
                        ["optic_Aco",nil,1425],
						["optic_ACO_grn",nil,2375],
						["optic_Holosight",nil,3325],
						["optic_MRCO",nil,5700],
						["optic_Arco",nil,11875],
						["optic_Hamr",nil,14250],						
						["optic_DMS",nil,16625],							
						["optic_NVS",nil,19000],
                        ["Rangefinder",nil,38000]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Donator Shop Rang 2",
					[
						["hgun_Pistol_heavy_01_F",nil,6750], // 7125, 6750, 6375, 5625
						["11Rnd_45ACP_Mag",nil,50],
						
						["hgun_Pistol_heavy_02_F",nil,13500], // 14250, 13500, 12750, 11250
						["6Rnd_45ACP_Cylinder",nil,120],
						
						["arifle_SDAR_F",nil,18000], // 19000, 18000, 17000, 15000
						["20Rnd_556x45_UW_mag",nil,125],
						
						["SMG_01_F",nil,24750], // 26125, 24750, 23375, 20625
						["30Rnd_45ACP_Mag_SMG_01",nil,300],	
						["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",nil,375],	
						
						["arifle_TRG20_F",nil,27000], // 28500, 27000, 25500, 22500
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],
						
						["arifle_Katiba_F",nil,31500],	// 33250, 31500, 29750, 26250
						["30Rnd_65x39_caseless_green",nil,275],	
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,350],
						
						["arifle_Mk20C_F",nil,36000], // 38000, 36000, 34000, 30000
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],
						
						["srifle_DMR_01_F",nil,54000], // 57000, 54000. 51000, 45000
						["10Rnd_762x51_Mag",nil,500],
						
						["srifle_EBR_F",nil,135000], // 142500, 135000, 127500, 112500
						["20Rnd_762x51_Mag",nil,400],	
						
						["LMG_Mk200_F",nil,135000], // 142500, 135000, 127500, 112500
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,600],
						
						["srifle_LRR_F",nil,675000], // 712500, 675000, 637500, 562500
						["7Rnd_408_Mag",nil,700],			
						
						["LMG_Zafir_F",nil,450000], // 475000, 450000, 425000, 375000
						["150Rnd_762x51_Box",nil,500],
						["150Rnd_762x51_Box_Tracer",nil,800],

						["acc_flashlight",nil,900],
						["acc_pointer_IR",nil,1350],
                        ["optic_Aco",nil,1350],
						["optic_ACO_grn",nil,2250],
						["optic_Holosight",nil,3150],
						["optic_MRCO",nil,5400],
						["optic_Arco",nil,11250],
						["optic_Hamr",nil,13500],						
						["optic_DMS",nil,15750],							
						["optic_NVS",nil,18000],
                        ["Rangefinder",nil,36000]
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["Donator Shop Rang 3",
					[
						["hgun_Pistol_heavy_01_F",nil,6375], // 7125, 6750, 6375, 5625
						["11Rnd_45ACP_Mag",nil,50],
						
						["hgun_Pistol_heavy_02_F",nil,12750], // 14250, 13500, 12750, 11250
						["6Rnd_45ACP_Cylinder",nil,120],
						
						["arifle_SDAR_F",nil,17000], // 19000, 18000, 17000, 15000
						["20Rnd_556x45_UW_mag",nil,125],
						
						["SMG_01_F",nil,23375], // 26125, 24750, 23375, 20625
						["30Rnd_45ACP_Mag_SMG_01",nil,300],		
						["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",nil,375],
						
						["arifle_TRG20_F",nil,25500], // 28500, 27000, 25500, 22500
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],
						
						["arifle_Katiba_F",nil,29750],	// 33250, 31500, 29750, 26250
						["30Rnd_65x39_caseless_green",nil,275],	
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,350],
						
						["arifle_Mk20C_F",nil,34000], // 38000, 36000, 34000, 30000
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],
						
						["srifle_DMR_01_F",nil,51000], // 57000, 54000. 51000, 45000
						["10Rnd_762x51_Mag",nil,500],
						
						["srifle_EBR_F",nil,127500], // 142500, 135000, 127500, 112500
						["20Rnd_762x51_Mag",nil,400],	
						
						["LMG_Mk200_F",nil,127500], // 142500, 135000, 127500, 112500
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,600],
						
						["srifle_LRR_F",nil,637500], // 712500, 675000, 637500, 562500
						["7Rnd_408_Mag",nil,700],			
						
						["LMG_Zafir_F",nil,425000], // 475000, 450000, 425000, 375000
						["150Rnd_762x51_Box",nil,500],
						["150Rnd_762x51_Box_Tracer",nil,800],
						
						["acc_flashlight",nil,850],
						["acc_pointer_IR",nil,1275],
                        ["optic_Aco",nil,1275],
						["optic_ACO_grn",nil,2125],
						["optic_Holosight",nil,2975],
						["optic_MRCO",nil,5100],
						["optic_Arco",nil,10625],
						["optic_Hamr",nil,12750],						
						["optic_DMS",nil,14875],							
						["optic_NVS",nil,17000],
                        ["Rangefinder",nil,34000]
					]
				];
			};
			
			case (__GETC__(life_donator) == 4):
			{
				["Donator Shop Rang 4",
					[
						["hgun_Pistol_heavy_01_F",nil,5625], // 7125, 6750, 6375, 5625
						["11Rnd_45ACP_Mag",nil,50],
						
						["hgun_Pistol_heavy_02_F",nil,11250], // 14250, 13500, 12750, 11250
						["6Rnd_45ACP_Cylinder",nil,120],
						
						["arifle_SDAR_F",nil,15000], // 19000, 18000, 17000, 15000
						["20Rnd_556x45_UW_mag",nil,125],
						
						["SMG_01_F",nil,20625], // 26125, 24750, 23375, 20625
						["30Rnd_45ACP_Mag_SMG_01",nil,300],	
						["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",nil,375],
						
						["arifle_TRG20_F",nil,22500], // 28500, 27000, 25500, 22500
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],						
						
						["arifle_Katiba_F",nil,26250],	// 33250, 31500, 29750, 26250
						["30Rnd_65x39_caseless_green",nil,275], 	
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,350],
						
						["arifle_Mk20C_F",nil,30000], // 38000, 36000, 34000, 30000
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],
						
						["srifle_DMR_01_F",nil,45000], // 57000, 54000. 51000, 45000
						["10Rnd_762x51_Mag",nil,500],
						
						["srifle_EBR_F",nil,112500], // 142500, 135000, 127500, 112500
						["20Rnd_762x51_Mag",nil,400],	
						
						["LMG_Mk200_F",nil,112500], // 142500, 135000, 127500, 112500
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,600],
						
						["srifle_LRR_F",nil,562500], // 712500, 675000, 637500, 562500
						["7Rnd_408_Mag",nil,700],			
						
						["LMG_Zafir_F",nil,375000], // 475000, 450000, 425000, 375000
						["150Rnd_762x51_Box",nil,500],
						["150Rnd_762x51_Box_Tracer",nil,800],	

						["acc_flashlight",nil,750],
						["acc_pointer_IR",nil,1125],
                        ["optic_Aco",nil,1125],
						["optic_ACO_grn",nil,1875],
						["optic_Holosight",nil,2625],
						["optic_MRCO",nil,4500],
						["optic_Arco",nil,9375],
						["optic_Hamr",nil,11250],						
						["optic_DMS",nil,13125],							
						["optic_NVS",nil,15000],
                        ["Rangefinder",nil,30000]
					]
				];
			};
			
			case (__GETC__(life_donator) == 5):
			{
				["Donator Shop Rang 5",
					[
						["hgun_Pistol_heavy_01_F",nil,4875], // 7125, 6750, 6375, 5625
						["11Rnd_45ACP_Mag",nil,50],
						
						["hgun_Pistol_heavy_02_F",nil,9750], // 14250, 13500, 12750, 11250
						["6Rnd_45ACP_Cylinder",nil,120],
						
						["arifle_SDAR_F",nil,13000], // 19000, 18000, 17000, 15000
						["20Rnd_556x45_UW_mag",nil,125],
						
						["SMG_01_F",nil,17875], // 26125, 24750, 23375, 20625
						["30Rnd_45ACP_Mag_SMG_01",nil,300],	
						["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",nil,375],
						
						["arifle_TRG20_F",nil,19500], // 28500, 27000, 25500, 22500
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],	
						
						["arifle_Katiba_F",nil,22750],	// 33250, 31500, 29750, 26250
						["30Rnd_65x39_caseless_green",nil,275],	
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,350],
						
						["arifle_Mk20C_F",nil,26000], // 38000, 36000, 34000, 30000
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,375],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,375],
						
						["srifle_DMR_01_F",nil,39000], // 57000, 54000. 51000, 45000
						["10Rnd_762x51_Mag",nil,500],
						
						["srifle_EBR_F",nil,97500], // 142500, 135000, 127500, 112500
						["20Rnd_762x51_Mag",nil,400],	
						
						["LMG_Mk200_F",nil,97500], // 142500, 135000, 127500, 112500
						["200Rnd_65x39_cased_Box",nil,500],
						["200Rnd_65x39_cased_Box_Tracer",nil,600],
						
						["srifle_LRR_F",nil,487500], // 712500, 675000, 637500, 562500
						["7Rnd_408_Mag",nil,700],		
						
						["LMG_Zafir_F",nil,325000], // 475000, 450000, 425000, 375000
						["150Rnd_762x51_Box",nil,500],	
						["150Rnd_762x51_Box_Tracer",nil,800],						
						
						["acc_flashlight",nil,650],
                        ["acc_pointer_IR",nil,975],
                        ["optic_Aco",nil,975],
                        ["optic_ACO_grn",nil,1625],
                        ["optic_Holosight",nil,2275],
                        ["optic_MRCO",nil,3900],
                        ["optic_Arco",nil,8125],
                        ["optic_Hamr",nil,9750],                        
                        ["optic_DMS",nil,11375],                            
                        ["optic_NVS",nil,13000],
                        ["Rangefinder",nil,26000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["V_Rangemaster_belt",nil,5000],
						["hgun_Rook40_F",nil,5000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_PDW2000_F",nil,20000],						
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};
 
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000]
			]
		];
	};
	
	case "gasstation":
	{
		["Gas Station",
			[				
				["ItemGPS",nil,100],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,150]				
			]
		];
	};
};