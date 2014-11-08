/*
bet on a draw
*/
if(!life_bet) exitWith {hint "Please first once watch the bet !"};
if(life_cash < 2500) exitWith {hint "Are you kidding me?! I said $2,500!"};
life_cash = life_cash - 2500;

life_bets = 3;
hint format["You have $2,500 set on a tie between %1 and %2!",life_club1,life_club2];
[] spawn life_fnc_betSystem;