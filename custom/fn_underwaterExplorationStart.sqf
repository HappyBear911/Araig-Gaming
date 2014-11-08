private ["_wreck","_randomLocation","_wreckVeh","_txt","_pos"];

if (side player == west) exitWith { hint "Cops cant do this job."; };

if (!isNull life_underwater_wreck) exitWith { hint "You've already got a job. The approximate position of the wreck is marked on your map!"; };

life_underwater_wrecks = [
	["Land_UWreck_FishingBoat_F", "Fishingboat"],
	["Land_UWreck_MV22_F", "Militaryaircraft MV-22"],
	["Land_Wreck_Traw2_F", "Ship"],
	["Land_Wreck_Traw_F", "Ship"],
	["Land_Wreck_Plane_Transport_01_F", "Transportaircraft"]
];

_wreck = life_underwater_wrecks select (round(random((count life_underwater_wrecks) - 1)));
_randomLocation = getPos wreck_init_pos;
_wreckVeh = (_wreck select 0) createVehicle [0,0,0];
life_underwater_wreck = _wreckVeh;
life_underwater_wreck setDir (random 360);

_pos = [((_randomLocation select 0) + (random 500 - random 500)), ((_randomLocation select 1) + (random 500 - random 500))];
life_underwater_wreck setPosASL [_pos select 0, _pos select 1, getTerrainHeightASL _pos];

_markerPos = [round(random 250 - random 250) + (_pos select 0), round(random 250 - random 250) + (_pos select 1)];
_wreckMarker = createMarkerLocal ["underwaterWreckMarker",_markerPos];
_wreckMarker setMarkerShapeLocal "RECTANGLE";
_wreckMarker setMarkerTypeLocal "Empty";
_wreckMarker setMarkerSizeLocal [250, 250];
_wreckMarker setMarkerColorLocal "ColorWEST";
_wreckMarker setMarkerBrushLocal "DiagGrid";

_wreckMarkerText = createMarkerLocal ["underwaterWreckMarkerText",_markerPos];
_wreckMarkerText setMarkerShapeLocal "ICON";
_wreckMarkerText setMarkerTypeLocal "mil_dot";
_wreckMarkerText setMarkerSizeLocal [1, 1];
_wreckMarkerText setMarkerColorLocal "ColorBlue";
_wreckMarkerText setMarkerTextLocal "Underwaterwreck";

hint "The approximate position of the wreck was marked on your map! Find the wreck and come back with the information.";

[] spawn life_fnc_underwaterExplorationEnd;