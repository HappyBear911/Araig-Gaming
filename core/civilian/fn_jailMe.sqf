/*
	File: fn_jailMe.sqf
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
private["_ret","_bad","_time","_bail","_esc","_countDown"];
_ret = [_this,0,[],[[]]] call BIS_fnc_param;
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param; // Custom jail time(default=15min)

_time = time + (_time * 60); //x Minutes

//if(_bad) then { _time = time + 1100; } else { _time = time + (_time * 60); }; #Time laoded from DB

if(count _ret > 0) then { life_bail_amount = round((_ret select 3)/2); } else { life_bail_amount = 1500; /*_time = time + (_time * 60);*/ };
_esc = false;
_bail = false;

if(_time <= 0) then { _time = time + (15 * 60); hintC "Please Admin Report: JAIL_FALLBACK_15, time is zero!"; };

[_bad, _time] spawn
{
	life_canpay_bail = false;
	if(_this select 0) then
	{
		//sleep (10 * 60);
		//75% of time
		sleep ( (_this select 1) * 0.75 );
	}
		else
	{
		//sleep (5 * 60);
		//25% of time
		sleep ( (_this select 1) * 0.25 );
	};
	life_canpay_bail = nil;
};

while {true} do
{
	if((round(_time - time)) > 0) then {
		_countDown = if(round (_time - time) > 60) then {format["%1 Minutes",round(round(_time - time) / 60)]} else {format["%1 Seconds",round(_time - time)]};
		
		if(isNil "life_canpay_bail") then
		{
			hintSilent format[(localize "STR_Jail_Time")+ "\n %1\n\n" +(localize "STR_Jail_Pay")+ "\n" +(localize "STR_Jail_Price")+ " $%2",_countDown,[life_bail_amount] call life_fnc_numberText];
		}
		else
		{
			hintSilent format[(localize "STR_Jail_Time")+ "\n %1\n",_countDown];
		};
		//hintSilent format["Time Remaining:\n %1\n\nCan pay bail: %3\nBail Price: $%2",_countDown,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 150) exitWith {
		_esc = true;
	};
	
	if(life_bail_paid) exitWith {
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith {};
	sleep 0.1;
};


switch (true) do
{
	case (_bail) :
	{
		life_is_arrested = false;
		life_bail_paid = false;
		hint localize "STR_Jail_Paid";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (_esc) :
	{
		life_is_arrested = false;
		hint localize "STR_Jail_EscapeSelf";
		[[0,format[localize "STR_Jail_EscapeNOTF",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[getPlayerUID player,profileName,"29"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (alive player && !_esc && !_bail) :
	{
		life_is_arrested = false;
		hint localize "STR_Jail_Released";
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos "jail_release");
		[5] call SOCK_fnc_updatePartial;
	};
};