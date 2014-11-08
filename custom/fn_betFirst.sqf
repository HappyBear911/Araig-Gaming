/*
	bet on the first club!
*/
if(!life_bet) exitWith {hint "Please firstonce watch the bet!"};
if(life_cash < 2500) exitWith {hint "Are you kidding me?! I said $2,500 !"};
life_cash = life_cash - 2500;

life_bets = 1;
hint format [ "You have $2,500 set to %1!",life_club1];
[] spawn life_fnc_betSystem;