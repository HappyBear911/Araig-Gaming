private["_unit"];
_unit = cursorTarget;
 
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "You can not mount it on the vehicle speed, the bomb."};

if(player distance _unit > 7) exitWith {hint "You are too far away."};
	
if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
 
life_action_inUse = true;
 
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
 
life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["You're too far away from the vehicle!","PLAIN"];};
 
titleText["You have successfully placed a bomb on the vehicle speed.","PLAIN"];
 
[_unit] spawn
{
	_veh = _this select 0;
	waitUntil {(speed _veh) > 70};
	[[_veh, "Caralarm",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
    
	hint "The speed bomb has been activated.";
    
	{ 
    
        [[2, "A Speedbomb was mounted on that vehicle. If this vehicle is travelling slower than 50km/h, this is ignited"], "life_fnc_broadcast", _x, false] spawn life_fnc_MP;
        
    }forEach (crew _veh);
    
	waitUntil {(speed _veh) < 50};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	_test = "Bo_Mk82" createVehicle [0,0,9999];
	_test setPos (getPos _veh);
	_test setVelocity [100,0,0];
	hint "The speed bomb exploded.";
};