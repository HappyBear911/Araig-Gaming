/*
	Tortures the player
*/
private["_unit","_rand","_damage", "_fatigue"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(playerSide == west) exitWith {};
if(life_action_inUse) exitWith {};

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "You can not torture the person."};

life_action_inUse = true;

_rand = round(random 3);


switch(_rand) do 
{
	case 0:
	{
		hintSilent "You have hit the players in the stomach.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.07;
		
		if(_damage >= 1) then { _damage = 0.95; };
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.2;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		_unit setFatigue _fatigue;
		
		_unit say3D "Punch";
	};
	case 1:
	{
		hintSilent "You have hit the players in the face.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.1;
		
		if(_damage >= 1) then { _damage = 0.98; };
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.25;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		_unit say3D "Punch";
	};
	case 2:
	{
		hintSilent "You have entered the players.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.11;
		
		if(_damage >= 1) then { _damage = 0.98; };
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.1;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		_unit say3D "PunchBreak";
	};
	case 3:
	{
		hintSilent "You have came into the players the soft tissues.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.5;
		
		if(_damage >= 1) then { _damage = 0.99; };
		
		_unit setDamage _damage;
		
		_unit setFatigue 1;
		_unit say3D "PunchBalls";
	};
	default
	{
		hintSilent "You have knocked out some of the players teeth.";
		//Play sound on _unit
		
		//Damage _unit
		_damage = damage _unit;
		_damage = _damage + 0.1;
		
		if(_damage >= 1) then { _damage = 0.98; };
		
		_unit setDamage _damage;
		
		//Fatigure unit
		_fatigue = getFatigue _unit;
		_fatigue = _fatigue + 0.1;
		
		if(_fatigue >= 1) then { _fatigue = 1; };
		
		_unit say3D "Punch";
	};
};


life_action_inUse = false;

//[[getPlayerUID player,player getVariable["realname",name player],"",["Torture",800]],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
