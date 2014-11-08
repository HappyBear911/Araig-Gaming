/*
	File: fn_chopShopSell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells the selected vehicle off.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_price2"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = _nearVehicles select _vehicle;
_carTheftInsurance = _vehicle getVariable["has_theft_insurance",false];
if(isNull _vehicle) exitWith {};
if (_carTheftInsurance) exitWith {
	diag_log format["%1",_vehicle];
	// Handle car theft insurance
	_vehData = _vehicle getVariable["vehicle_info_owners",[]];
	diag_log format["%1",_vehData];
	if(count _vehData  > 0) then {
		_vehOwner = (_vehData select 0) select 0;
		diag_log format["%1",_vehOwner];
		diag_log format["%1",_vehicle];
		[[_vehicle,_vehOwner],"TON_fnc_stolenVehicleStore",false,false] spawn life_fnc_MP;
		hint "The vehicle is insured against theft and therefore can not be sold. It was stored for safety and is its rightful owner passed.";
	};
};

hint localize "STR_Shop_ChopShopSelling";
life_action_inUse = true;
_price2 = life_cash + _price;
[[player,_vehicle,_price,_price2],"TON_fnc_chopShopSell",false,false] spawn life_fnc_MP;
closeDialog 0;