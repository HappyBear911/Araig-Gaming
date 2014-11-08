#include <macro.h>
/*
	Master eventhandler file
*/
player addEventHandler["Killed", {_this spawn life_fnc_onPlayerKilled}];
player addEventHandler["handleDamage",{_this call life_fnc_handleDamage;}];
player addEventHandler["Respawn", {_this call life_fnc_onPlayerRespawn}];
player addEventHandler["Take",{_this call life_fnc_onTakeItem}]; //Prevent people from taking stuff they shouldn't...
player addEventHandler["Fired",{_this call life_fnc_onFired}];
player addEventHandler["InventoryClosed", {_this call life_fnc_inventoryClosed}];
player addEventHandler["InventoryOpened", {_this call life_fnc_inventoryOpened}];
"life_fnc_MP_packet" addPublicVariableEventHandler {[_this select 0,_this select 1] call life_fnc_MPexec;};

// Safezones EVH
if(playerSide != west) then {
    player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count __GETC__(life_safezone_points) > 0) then {
				deleteVehicle (_this select 6);
				player setAmmo [currentWeapon player, 0];				 
				titleText ["You 're in a safe zone!\nThe firing of firearms is prohibited and may be punishable by a ban.\n\n*The magazine was emptied your weapon*", "PLAIN", 3];
            };
        }
	];  
};

// Custom market prices
/*"marketprices" addPublicVariableEventHandler {
	marketprices = _this select 1;
};*/