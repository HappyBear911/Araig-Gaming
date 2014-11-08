/*
    File: fn_weedUse.sqf
    Author: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

// Set variable on player the he is on drugs
player setVariable["isOnDrugs_mushroom",true,true];

//Little hint then wait a little before starting drugs effects
hint "Drugs make goofy!";
sleep 3;

//Activate ppEffects we need
"radialBlur" ppEffectEnable true;
"dynamicBlur" ppEffectEnable true;
"filmGrain" ppEffectEnable true;
"colorInversion" ppEffectEnable true;
"chromAberration" ppEffectEnable true;
"wetDistortion" ppEffectEnable true;
enableCamShake true;

//Let's go for 5 minutes of effects
for "_i" from 0 to 299 do
{
    "radialBlur" ppEffectAdjust[0.41, 0, 0.27, 0.35];
	"radialBlur" ppEffectCommit 1;
	"dynamicBlur" ppEffectAdjust[0];
	"dynamicBlur" ppEffectCommit 1;
	"filmGrain" ppEffectAdjust[0, 7.34, 4.95, 9.38, 9.61, true];
	"filmGrain" ppEffectCommit 1;
	"colorInversion" ppEffectAdjust[0, 0, 0];
	"colorInversion" ppEffectCommit 1;
	"chromAberration" ppEffectAdjust[0.2, 0.13, true];
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
	player setVariable["isOnDrugs_mushroom",false,true];
};