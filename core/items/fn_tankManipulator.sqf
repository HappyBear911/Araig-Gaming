private["_unit"];

_unit = cursorTarget;


if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "An error has occurred."};

if(player distance _unit > 7) exitWith {hint "You are too far away."};


if(!([false,"tankmanipulator",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
 
life_action_inUse = true;
 
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
 
life_action_inUse = false;
titleText["You've successfully mounted a tankmanipulator on the car.","PLAIN"];
_unit setFuel 0;