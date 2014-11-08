private["_panel","_position","_objects","_objectX","_objectY","_barricadeDown"];
_panel = _this select 0;
_position = getPosATL _panel;
_barricadeDown = true;
_objects = nearestObjects [_position, ["Land_RedWhitePole_F"], 20];

{
	_objectX = (getPosATL _x) select 0;
	_objectY = (getPosATL _x) select 1;
	if (_panel getVariable["barricadeDown",true]) then {
		_x setPosATL [_objectX, _objectY, -1.1];
		_barricadeDown = false;
	} else {
		_x setPosATL [_objectX, _objectY, -3];
		_barricadeDown = true;
	};
} foreach _objects;

if (_barricadeDown) then {
	_panel setVariable["barricadeDown",true,true];
} else {
	_panel setVariable["barricadeDown",false,true];
};

