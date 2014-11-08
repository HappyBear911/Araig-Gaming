/*
	File: fuelConsumption.sqf
    Author: t1lt3rr0r

    Description:
    Better vehicle fuel consumption.
	Run with: nul = [vehObj] execvm "fuelConsumption.sqf"; 
*/
_vehicle = _this select 0;
_rate = 0;

switch (typeOf _vehicle) do
{
	case "B_Quadbike_01_F": {_rate = 0.05 / 60;}; //30-0.01f
	case "C_Offroad_01_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "C_Hatchback_01_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "C_Hatchback_01_sport_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "C_SUV_01_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "C_Van_01_transport_F": {_rate = 0.03 / 60;}; //45-0.01f
	case "C_Van_01_box_F": {_rate = 0.03 / 60;}; //45-0.01f
	case "I_Truck_02_transport_F": {_rate = 0;}; //350-26
	case "I_Truck_02_covered_F": {_rate = 0;}; //350-26
	case "O_Truck_03_transport_F": {_rate = 0.025 / 60;}; //
	case "O_Truck_03_covered_F": {_rate = 0.025 / 60;}; //
	case "B_Truck_01_transport_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "B_Truck_01_covered_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "B_Truck_01_box_F": {_rate = 0.025 / 60;}; //45-0.01f
	
	case "O_MRAP_02_F": {_rate = 0.03 / 60;}; //94-0.01f
	case "B_G_Offroad_01_armed_F": {_rate = 0.025 / 60;}; //45-0.01f
	case "B_MRAP_01_F": {_rate = 0.03 / 60;}; //94-0.01f
	case "B_MRAP_01_hmg_F": {_rate = 0.03 / 60;}; //94-0.01f
	
	case "B_Heli_Light_01_F": {_rate = 0;}; //242-0.0368
	case "O_Heli_Light_02_unarmed_F": {_rate = 0.03 / 60;}; //1000-0.01f
	case "B_Heli_Transport_01_F": {_rate = 0.025 / 60;}; //2500-0.138
};

if(_rate == 0) exitWith {};

while {alive _vehicle} do {
	while {(alive _vehicle) and (fuel _vehicle > 0)} do { 
		if (isEngineOn _vehicle) then {
			_vehicle setFuel (fuel _vehicle - _rate);
		};
	sleep 1;
	};
};