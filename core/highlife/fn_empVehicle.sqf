private["_index","_vehicle"];
disableSerialization;
if(!isNull (findDisplay 3494)) then {
	if(nn_empInUse) exitWith { hint "The EMP warns grade already a vehicle or the battery needs to be charged again until"; };
    
	nn_empInUse = true;
	_index = lbCurSel (2902);
	_vehicle = nn_last_vehicles select _index;
	if(isNull _vehicle) exitWith {};
    hint "The vehicle was successfully put out for combat.";
	(vehicle player) say3D "empacsound";
	[[_vehicle], "life_fnc_vehicleEmpd",crew _vehicle,false] spawn life_fnc_MP;
	sleep (3 * 60);
	nn_empInUse = false;
};
