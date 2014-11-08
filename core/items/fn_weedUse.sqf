/*
    File: fn_weedUse.sqf
    Author: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

// Set variable on player the he is on drugs
player setVariable["isOnDrugs_weed",true,true];

//Little hint then wait a little before starting drugs effects
hint "Drugs make goofy!";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

// Make player hungry
if (life_hunger > 50) then {
	life_hunger = 20;
	[] call life_fnc_hudUpdate;
};

//Let's go for 5 minutes of effects
for "_i" from 0 to 299 do
{
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;

// Wait for 10 minutes until players body is drug free
[] spawn {
	sleep 600;
	player setVariable["isOnDrugs_weed",false,true];
};