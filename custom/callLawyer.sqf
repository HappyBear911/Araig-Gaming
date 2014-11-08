/*
	File: lawyerCallbox.sqf
    Author: t1lt3rr0r
*/
private["_player","_dice"];
_player = _this select 1;
lawyerCalled = true;
_dice = floor(random 100);

hint "Calls to lawyer.";
sleep 1;
hint "Calls to lawyer..";
sleep 1;
hint "Calls to lawyer...";
sleep 3;

if (_dice < 10) then {
	hint "Your lawyer could convince them that the prison sentence you must not be commenced by the court.";
	[[1,format["The lawyer of %1 was able to convince the court that the sentence must not be commenced .",name _player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	sleep 30;
	lawyerCalled = false;
} else {
	hint "Your lawyer could not convince them of your innocence to the court.";
	[[1,format["The lawyer of %1 could not convince them of his innocence to the court.",name _player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};	
