/*
	File: enterPaintballArea.sqf
    Author: t1lt3rr0r

    Description:
    Configuration of entering a paintball area.
	Run with: this addAction["Paintball","enterPaintballArea.sqf",["pvp_start_1","pvp_exit_1","pvp_area_1"]];
*/
private["_player","_startMarker","_exitMarker","_areaMarker","_areaMarkerRadius","_spawnPoint","_areaLeft","_playerDamage"];
_player = _this select 1;
_startMarker = _this select 3 select 0;
_exitMarker = _this select 3 select 1;
_areaMarker = _this select 3 select 2;
_areaMarkerRadius = getMarkerSize _areaMarker;
_spawnPoint = nearestObjects[getMarkerPos _startMarker, ["house"], _areaMarkerRadius select 0];
_areaLeft = false;
_playerDamage = damage _player;
_player setDamage 0;
paintballHit = false;

_player setPos (getPos (_spawnPoint select (floor random (count _spawnPoint))));

hint parseText format["<t size='2' color='#3366FF' align='center'>Paintball</t><br/><br/>Welcome %1!<br/>The Paintball Arena you can lose a relaxed Paintball Match contest because you do not die , but when hit again will reset the application without your items .<br/> There, you can easily log in again to match.<br/><br/><t color='#7A0000'>*We accept no responsibility for any deaths occurring!*<br/><br/>BENUTZUNG AUF EIGENE GEFAHR</t>",name _player];

// Remove all event handlers
_player removeAllEventHandlers "handleDamage";
// Add paintball event handler
_player addEventHandler["handleDamage",{
	_unit = _this select 0;
	_part = _this select 1;
	_damage = _this select 2;
	_source = _this select 3;
	_projectile = _this select 4;

	_damage = 0;
	paintballHit = true;
	_damage;
}];

while {!(paintballHit)} do {
	if (_player distance (getMarkerPos _areaMarker) > _areaMarkerRadius select 0) exitWith {
		_areaLeft = true;
	};
};

if (_areaLeft) then {
	titleText ["You left the Paintball Arena! Login again.","PLAIN"];
} else {
	titleText ["You've been hit! Login again.","PLAIN"];
};

paintballHit = false;
_player setPos (getMarkerPos _exitMarker);
sleep 2;
_player setDamage _playerDamage;

// Remove all event handlers
_player removeAllEventHandlers "handleDamage";
// Add normal AltisLife event handler
_player addEventHandler["handleDamage",{_this call life_fnc_handleDamage;}];