/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	Edited: t1lt3rr0r
	
	Description:
	Removes the players weapons client side
*/
private["_cop","_allowedItems","_illegalItems","_primary","_handgun","_primaryMagazines","_handgunMagazines","_uniform","_vest","_backpack","_uitems","_vitems","_bitems","_headgear","_removed"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_removed = false;
_allowedItems =
[
	"hgun_Rook40_F",
	"hgun_ACPC2_F",
	"hgun_PDW2000_F",
	"hgun_Pistol_heavy_01_F",
	"arifle_TRG20_F",
	"arifle_Mk20C_F"
];
_illegalItems =
[
	"H_CrewHelmetHeli_B",
	"HandGrenade_Stone",
	"SmokeShellGreen",
	"MiniGrenade"
];

_primary = primaryWeapon player;
_handgun = handGunWeapon player;
_primaryMagazines = [];
_handgunMagazines = [];

_uniform = uniform player;
_uitems = [];
_vest = vest player;
_vitems = [];
_backpack = backpack player;
_bitems = [];
if(_uniform != "") then {{_uitems set[count _uitems,_x];} foreach (uniformItems player);};
if(_vest != "") then {{_vitems set[count _vitems,_x];} foreach (vestItems player);};
if(_backpack != "") then {{_bitems set[count _bitems,_x];} foreach (backPackItems player);};
_headgear = headgear player;

if (_headgear in _illegalItems) then {
	removeHeadGear player;
};

{
	if(_x in _illegalItems OR (isClass (configFile >> "CFGweapons" >> _x) && !(_x in _allowedItems))) then {
		player removeItemFromUniform _x;
		_removed = true;
	};
} foreach _uitems;

{
	if(_x in _illegalItems OR (isClass (configFile >> "CFGweapons" >> _x) && !(_x in _allowedItems))) then {
		player removeItemFromVest _x;
		_removed = true;
	};
} foreach _vitems;

{
	if(_x in _illegalItems OR (isClass (configFile >> "CFGweapons" >> _x) && !(_x in _allowedItems))) then {
		player removeItemFromBackpack _x;
		_removed = true;
	};
} foreach _bitems;

if(count (primaryWeaponMagazine player) > 0) then
{
	{
		_primaryMagazines set[count _primaryMagazines,_x];
	} foreach (primaryWeaponMagazine player);
};

if(count (handgunMagazine player) > 0) then
{
	{
		_handgunMagazines set[count _handgunMagazines,_x];
	} foreach (handgunMagazine player);
};

if(!(_primary in _allowedItems)) then {	
	{player removeMagazine _x;} foreach _primaryMagazines;
	player removeWeapon _primary;
	_removed = true;
};
if(!(_handgun in _allowedItems)) then {
	{player removeMagazine _x;} foreach _handgunMagazines;
	player removeWeapon _handgun;
	_removed = true;
};

[] call life_fnc_civFetchGear;
[] call SOCK_fnc_updateRequest; //Should make weapon remove persistent
[] call life_fnc_civLoadGear;

if (_removed) then {
	titleText["All illegal weapons were seized.","PLAIN"];
	[[2,"All illegal weapons and items were seized."],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
} else {
	titleText["There were no illegal weapons.","PLAIN"];
	[[2,"There were no illegal weapons or items."],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
};