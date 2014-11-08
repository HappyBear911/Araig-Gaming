/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Welcome %1",name player] hintC
[
	parseText "Information:<br/>Y: Open player menu<br/>U: Unlocking / Locking of Cars<br/>H: Use pickaxe<br/>T: Trunk<br/>Links Shift + R: Person fix<br/>Links Shift + G: Knock out(civilians only)<br/>Links Shift + H: yield",
	parseText "On our server you will find the following:<br/>- Whitelisted Cops and active admins<br/>- Weapons and items are saved<br/>- Many weapons , clothing and vehicles available<br/>- Lots of new items plus a full adjustment of prices<br/>http://araig-gaming.com"
];	