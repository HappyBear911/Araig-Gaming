/*
    File: fn_weedUse.sqf
    Author: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

// Set variable on player the he is on drugs
player setVariable["isOnDrugs_heroin",true,true];

//Little hint then wait a little before starting drugs effects
hint "Drugs make goofy!";
sleep 3;

//Activate ppEffects we need
"colorCorrections" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
"dynamicBlur" ppEffectEnable true;
"filmGrain" ppEffectEnable true;
"colorInversion" ppEffectEnable true;
"chromAberration" ppEffectEnable true;
"wetDistortion" ppEffectEnable true;
enableCamShake true;

// Damage the player
if (damage player < 0.5) then {
	player setDamage (0.4 + (damage player)):
	[] call life_fnc_hudUpdate;
};

//Let's go for 5 minutes of effects
for "_i" from 0 to 299 do
{
    "colorCorrections" ppEffectAdjust[ 0.59, 0.89, 0.54, [2.61, 3.08, 2.51, -0.17],[1.69, 4.44, -3.6, 1.37],[-0.84, -2.93, 4.08, -0.52]];
    "colorCorrections" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust[0.29, 0.76, 0.38, 0.29];
    "radialBlur" ppEffectCommit 1;
	"dynamicBlur" ppEffectAdjust[1.05];
	"dynamicBlur" ppEffectCommit 1;
	"filmGrain" ppEffectAdjust[1, 4.89, 5.77, 6.23, 5.24, false];
	"filmGrain" ppEffectCommit 1;
	"colorInversion" ppEffectAdjust[0, 0, 0];
	"colorInversion" ppEffectCommit 1;
	"chromAberration" ppEffectAdjust[0.27, 0.06, true];
	"chromAberration" ppEffectCommit 1;
	"wetDistortion" ppEffectAdjust[0.44, 5.24, 4.84, 4.6, 3.85, 5.36, 4.95, 4.08, 4.66, 4.25, 5.01, 5.01, 5.36, 5.13, 5.48];
	"wetDistortion" ppEffectCommit 1;	
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
sleep 6;

//Deactivate ppEffects
"colorCorrections" ppEffectEnable false;
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
	player setVariable["isOnDrugs_heroin",false,true];
};