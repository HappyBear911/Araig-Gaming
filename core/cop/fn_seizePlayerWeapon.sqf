/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	Edited: t1lt3rr0r
	
	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/
private["_target","_allowedItems","_primary","_handgun"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

[[player],"life_fnc_seizePlayerWeaponAction",_target,false] spawn life_fnc_MP;

/*_allowedItems =
[
	"hgun_Rook40_F",
	"hgun_ACPC2_F",
	"hgun_PDW2000_F",
	"hgun_Pistol_heavy_01_F",
	"arifle_TRG20_F",
	"arifle_Mk20C_F"
];

_primary = primaryWeapon _target;
_handgun = handGunWeapon _target;

if(!(_primary in _allowedItems) OR !(_handgun in _allowedItems)) then {	
	titleText["All illegal weapons were seized.","PLAIN"];
} else {
	titleText["There were no illegal weapons.","PLAIN"];
};*/