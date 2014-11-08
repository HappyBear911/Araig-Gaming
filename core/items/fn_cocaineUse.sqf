/*
    File: fn_weedUse.sqf
    Author: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

// Set variable on player the he is on drugs
player setVariable["isOnDrugs_cocaine",true,true];

//Little hint then wait a little before starting drugs effects
hint "Drogen machen doof!";
sleep 3;

// Disable fatigue
player enableFatigue false;
						
//Activate ppEffects we need
"radialBlur" ppEffectEnable true;
"dynamicBlur" ppEffectEnable true;
"filmGrain" ppEffectEnable true;
"colorInversion" ppEffectEnable true;
"chromAberration" ppEffectEnable true;
"wetDistortion" ppEffectEnable true;
enableCamShake true;

// Make player thirsty
if (life_thirst > 20) then {
	life_thirst = 20;
	[] call life_fnc_hudUpdate;
};

//Let's go for 5 minutes of effects
for "_i" from 0 to 299 do
{
    "radialBlur" ppEffectAdjust[0.04, 0.09, 0.18, 0.14];
	"radialBlur" ppEffectCommit 1; 
	"dynamicBlur" ppEffectAdjust[0];
	"dynamicBlur" ppEffectCommit 1; 
	"filmGrain" ppEffectAdjust[0, 0, 9.61, 5.65, 8.27, true];
	"filmGrain" ppEffectCommit 1; 
	"colorInversion" ppEffectAdjust[0.3, 0, 0];
	"colorInversion" ppEffectCommit 1; 
	"chromAberration" ppEffectAdjust[0, 0, false];
	"chromAberration" ppEffectCommit 1; 
	"wetDistortion" ppEffectAdjust[1, 10, 9.5, 8.62, 8.33, 7.23, 9.38, 9.26, 7.75, 6.32, 6.29, 6.18, 6.29, 3.9, 8.62];
	"wetDistortion" ppEffectCommit 1; 
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
sleep 6;

//Deactivate ppEffects
"radialBlur" ppEffectEnable false;
"dynamicBlur" ppEffectEnable false;
"filmGrain" ppEffectEnable false;
"colorInversion" ppEffectEnable false;
"chromAberration" ppEffectEnable false;
"wetDistortion" ppEffectEnable false;
resetCamShake;

// Wait for 10 minutes until players body is drug free
[] spawn {
	sleep 600;
	player setVariable["isOnDrugs_cocaine",false,true];
};

// Enable fatigue
player enableFatigue true;