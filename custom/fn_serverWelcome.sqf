/*
	File: serverWelcome.sqf
*/

// Play welcome music
playSound "Welcome";

_onScreenTime = 2;
 
_role1 = "Welcome to";
_role1names = ["Asylumist-Gaming"];
_role2 = "Owners";
_role2names = ["M Brown","Rodney"];
_role3 = "Community Manager";
_role3names = ["Phillip"];
_role4 = "Head Admins";
_role4names = ["Russell","Soap","Alucard_Voss","HappyBear","R Iliff","Ace"];
_role5 = "Admins";
_role5names = ["Shade","Hollow"];
_role6 = "Devs";
_role6names = ["Alucard_Voss","HappyBear","M Brown","Rodney"]
_role7 = "Restarts";
_role7names = ["04:00Uhr","08:00Uhr","12:00Uhr","16:00Uhr","20:00Uhr","00:00Uhr"];
_role8 = "Website";
_role8names = ["Araig-Gaming.com"];
_role9 = "Teamspeak";
_role9names = ["192.99.35.112:9988"];
_role10 = "Server Rules";
_role10names = ["To see rules press 'M' (Map)"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];