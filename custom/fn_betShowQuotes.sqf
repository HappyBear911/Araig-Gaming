/*
	//show bet Quotes to player and take Random football clubs
*/
_x=floor(random 9);
_y=floor(random 9);
//if 2 times the same was chosen y is incremented by one
if(_x == _y) then {_y = _y + 1;};
if(_y == 10)then{_y = 0;};

switch (_x) do
	{
		case 0: 	{ life_club1 = "FC Kavalla";}; 	
		case 1: 	{ life_club1 = "2033 Pyrgos";}; 		
		case 2: 	{ life_club1 = "Eintracht Athira";};	
		case 3: 	{ life_club1 = "VFB Sofia";};
		case 4: 	{ life_club1 = "BVB Zaros";};	
		case 5: 	{ life_club1 = "Syrta SV";};		
		case 6: 	{ life_club1 = "1.FC Paros";};	
		case 7: 	{ life_club1 = "SK Frini";};	
		case 8: 	{ life_club1 = "FK Molos";};	
		case 9: 	{ life_club1 = "Red Gull Gravia";};	
	};
 

switch (_y) do
	{
		case 0: 	{ life_club2 = "FC Kavalla";}; 	
		case 1: 	{ life_club2 = "2033 Pyrgos";}; 		
		case 2: 	{ life_club2 = "Eintracht Athira";};	
		case 3: 	{ life_club2 = "VFB Sofia";};
		case 4: 	{ life_club2 = "BVB Zaros";};	
		case 5: 	{ life_club2 = "Syrta SV";};				
		case 6: 	{ life_club2 = "1.FC Paros";};	
		case 7: 	{ life_club2 = "SK Frini";};
		case 8: 	{ life_club2 = "FK Molos";};	
		case 9: 	{ life_club2 = "Red Gull Gravia";};	
	};




hint parseText format["<t size='1.5' color='#458B00'>Betting Odds: </t><br/><br/><br/><t size='1.2'><t align='left'>%1</t><br/>against<br/><t align='right'>%2</t><br/><br/><br/><t align='left'>2.1</t><t align=""right"">%1</t><br/><br/><t align='left'>2.6<t/><t align=""right"">%2</t><br/><br/><t align='left'>3.3</t><t align=""right"">undecided</t><br/><br/></t>", life_club1, life_club2];

sleep 1.5;
life_bet = true; // to be sure life_club1 and life_club2 are set !