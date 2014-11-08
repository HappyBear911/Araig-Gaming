private["_target","_onDrugs","_drugName"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(!(_target isKindOf "Man")) exitWith {titleText ["One can only test people for drugs...", "PLAIN"];};
_drugTypes = [];
_text = "";
{
	_onDrugs = _target getVariable["isOnDrugs_"+_x,false];
	if(_onDrugs) then {
		switch (_x) do {
			case "weed": { _text = _text + "<t align='left'>Marijuana</t>   <t color='#DF0101' align='right'>positiv</t><br/>"; };
			case "mushroom": { _text = _text + "<t align='left'>Magic Mushroom</t>   <t color='#DF0101' align='right'>positiv</t><br/>"; };
			case "heroin": { _text = _text + "<t align='left'>Heroin</t>   <t color='#DF0101' align='right'>positiv</t><br/>"; };
			case "cocaine": { _text = _text + "<t align='left'>Cocaine</t>    <t color='#DF0101' align='right'>positiv</t><br/>"; };
			default {};
		};
	} else {
		switch (_x) do {
			case "weed": { _text = _text + "<t align='left'>Marijuana</t>   <t color='#31B404' align='right'>negativ</t><br/>"; };
			case "mushroom": { _text = _text + "<t align='left'>Magic Mushroom</t>   <t color='#31B404' align='right'>negativ</t><br/>"; };
			case "heroin": { _text = _text + "<t align='left'>Heroin</t>   <t color='#31B404' align='right'>negativ</t><br/>"; };
			case "cocaine": { _text = _text + "<t align='left'>Cocaine</t>    <t color='#31B404' align='right'>negativ</t><br/>"; };
			default {};
		};
	};
} foreach ["weed","mushroom","heroin","cocaine"];

_text = format["<t align='center'><t size='1.5'>Drugs test</t><br/><br/>" + _text + "<br/><br/>Spieler: %1</t>",_target getVariable["realname",name _target]];
hint parseText _text;