/*
private["_panels","_position","_object"];
systemChat "In init ...";
_panels = [barricadePanel_1,barricadePanel_2];

{
	_position = getPosATL _x;
	for "_i" from 1.5 to 15 step 1.5 do {
		_object = createVehicle ["Land_RedWhitePole_F", [0,0,0], [], 0, "NONE"];
		_object attachTo [_x,[_i,0,-3]];
		_object allowDamage false;
		_object enableSimulation false;
		detach _object;
	}	
} foreach _panels;
*/