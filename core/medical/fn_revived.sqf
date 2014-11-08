/*
	File: fn_revived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir","_primWeap","_primItems"];
_medic = [_this,0,"Unknown Medic",[""]] call BIS_fnc_param;
_oldGear = [life_corpse] call life_fnc_fetchDeadGear;
[_oldGear] call life_fnc_loadDeadGear;

// Primary weapon save fix
if (count life_gearOnDeath > 0) then {
	_primWeap = life_gearOnDeath select 6;
	_primItems = life_gearOnDeath select 14;			
	if(_primWeap != "") then {_handle = [_primWeap,true,false,false,false] call life_fnc_handleItem;};
	{if (_x != "") then {player addPrimaryWeaponItem _x;};} foreach (_primItems);
	life_gearOnDeath = [];
	[] spawn life_fnc_saveGear;
};


life_corpse setVariable["realname",nil,true]; //Should correct the double name sinking into the ground.
[[life_corpse],"life_fnc_corpse",nil,FALSE] spawn life_fnc_MP;
_dir = getDir life_corpse;
hint format[localize "STR_Medic_RevivePay",_medic,[(call life_revive_fee)] call life_fnc_numberText];

closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

//Take fee for services.
if(life_atmcash > (call life_revive_fee)) then {
	life_atmcash = life_atmcash - (call life_revive_fee);
} else {
	life_atmcash = 0;
};

//Retexturing of units clothing, vanilla files only retexture the EMS unit.
switch(playerSide) do {
	case independent: {[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;};
};

//Bring me back to life.
player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
[[life_corpse],"life_fnc_corpse",true,false] spawn life_fnc_MP;
hideBody life_corpse;

player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
[] call life_fnc_hudUpdate; //Request update of hud.