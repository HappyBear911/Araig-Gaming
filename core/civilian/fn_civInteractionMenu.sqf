/*
	File: fn_civInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various civ actions towards another player.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37488
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;

life_pInact_curTarget = _curTarget;

if((_curTarget getVariable["restrained",false])) then {
    
    
    //Set Unrestrain Button
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";

    //Set Escort Button
    if((_curTarget getVariable["Escorting",false])) then {
        _Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
        _Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
    } else {
        _Btn2 ctrlSetText localize "STR_pInAct_Escort";
        _Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
    };

    _Btn3 ctrlSetText localize "STR_pInAct_Torture";
    _Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_torturePlayer; closeDialog 0;";

    // Organ theft
    _Btn4 ctrlSetText "Remove organs";
    _Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_takeOrgans;";

    // Set Put In Car Button
    //_Btn4 ctrlSetText localize "STR_pInAct_PutInCar";
    //_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

} else {
    
    _Btn1 ctrlSetText "Show identification";
    _Btn1 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_showIdCard;  closeDialog 0;";
    
    
    _Btn2 ctrlShow false;
    _Btn3 ctrlShow false;
    _Btn4 ctrlShow false;
    
    
};


_Btn5 ctrlShow false;
_Btn6 ctrlShow false;
_Btn7 ctrlShow false;
_Btn8 ctrlShow false;
_Btn9 ctrlShow false;