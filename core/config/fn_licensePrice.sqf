/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {30000}; //Heroin processing license cost
	case "marijuana": {17500}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {50000}; //Gang license cost
	case "rebel": {100000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {30000};
	case "salt": {12000};
	case "cocaine": {40000};
	case "sand": {14500};
	case "iron": {10000};
	case "copper": {8000};
	case "cement": {7000};
	case "mair": {15000};
	case "home": {200000};
	case "mushroom": {45000};
	case "obstler": {5000};
	case "distwater": {5000};
	case "sugarcanejuice": {15000};
	case "mash": {15000};
	case "rum": {20000};
	case "sugar": {15000};
	case "drinkwater": {10000};
};