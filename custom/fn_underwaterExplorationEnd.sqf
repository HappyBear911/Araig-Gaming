private ["_distance","_pay","_txt"];

if (side player == west) exitWith {hint "Cops cant use this."; };

_distance = player distance life_underwater_wreck;
_pay = round(_distance * (10 + random 5));

waitUntil {player distance life_underwater_wreck <= 15 || !alive player};

if (!alive player) exitWith {
	deleteVehicle life_underwater_wreck;
	deleteMarkerLocal "underwaterWreckMarker";
	deleteMarkerLocal "underwaterWreckMarkerText";
};

hint "You've found the wreck! Bring the collected information back to the client now.";

waitUntil { player distance underwater_exploration_npc <= 4 };
deleteVehicle life_underwater_wreck;
deleteMarkerLocal "underwaterWreckMarker";
deleteMarkerLocal "underwaterWreckMarkerText";

hint format["Thank you for your efforts! You will get $%1. Feel free to contact back for more orders.",_pay];

life_cash = life_cash + _pay;