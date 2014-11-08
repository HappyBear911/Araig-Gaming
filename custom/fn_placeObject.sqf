// placeObject.sqf
private["_itemName","_itemClass","_attachPos","_dir","_object","_enableSimulation"];
_itemName = _this select 0;
_enableSimulation = false;
_dir = 0;

life_placingObject = true;

switch(_itemName) do {
	case ("roadBarrier"): {_itemClass = "RoadBarrier_F"; _attachPos = [0,3,0.4];};
	case ("roadBarrierSmall"): {_itemClass = "RoadBarrier_small_F"; _attachPos = [0,3,0.7]; _enableSimulation = true;};
	case ("roadCone"): {_itemClass = "RoadCone_L_F"; _attachPos = [0,3,0.4]; _enableSimulation = true;};
	case ("arrowSignLeft"): {_itemClass = "ArrowDesk_L_F"; _attachPos = [0,3,0.5];};
	case ("arrowSignRight"): {_itemClass = "ArrowDesk_R_F"; _attachPos = [0,3,0.5];};
	case ("portableLight"): {_itemClass = "Land_PortableLight_single_F"; _attachPos = [0,3,1.2]; _enableSimulation = true;};
	default {};
};

_object = createVehicle [_itemClass, [0,0,0], [], 0, "CAN_COLLIDE"];
_object attachTo[player,_attachPos];
_object setDir _dir;

life_action_placeObject = player addAction["Up object",{if(!isNull life_objectToPlace) then {detach life_objectToPlace; life_objectToPlace = ObjNull;}; player removeAction life_action_placeObject; life_action_placeObject = nil; life_placingObject = false;},"",999,false,false,"",'!isNull life_objectToPlace'];

life_objectToPlace = _object;

waitUntil {isNull life_objectToPlace};
_object setPos [(getPos _object select 0),(getPos _object select 1),0];
_object allowDamage false;
_object enableSimulation _enableSimulation;
_object setVariable ["placedObject", true, true];