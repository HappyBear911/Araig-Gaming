// removePlacedObject.sqf
private["_object","_objectClass","_itemName"];
_objects = nearestObjects [player, [], 5];

{
	if(_x getVariable["placedObject",false]) exitWith {_object=_x};
} foreach _objects;

if (isNull _object) exitWith {titleText["No degradable object in the vicinity.","PLAIN"];};
_objectClass = typeOf(_object);
life_placingObject = true;

switch(_objectClass) do {
	case ("RoadBarrier_F"): {_itemName = "roadBarrier";};
	case ("RoadBarrier_small_F"): {_itemName = "roadBarrierSmall";};
	case ("RoadCone_L_F"): {_itemName = "roadCone";};
	case ("ArrowDesk_L_F"): {_itemName = "arrowSignLeft";};
	case ("ArrowDesk_R_F"): {_itemName = "arrowSignRight";};
	case ("Land_PortableLight_single_F"): {_itemName = "portableLight";};
	default {};
};

if (_object getVariable["placedObject",false]) then {
	if(([true,_itemName,1] call life_fnc_handleInv)) then {
		titleText["You've broken down and packed up the object.","PLAIN"];
		deleteVehicle _object;
	};
} else {
	titleText["No degradable object in the vicinity.","PLAIN"];
};

life_placingObject = false;