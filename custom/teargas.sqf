////////////////////////////////////////////////////////////
// teargas.sqf
// call from units INIT with: _null = [this] execVM "teargas.sqf"
////////////////////////////////////////////////////////////

While{true} do {
"dynamicBlur" ppEffectEnable true; // enables ppeffect
"dynamicBlur" ppEffectAdjust [0]; // enables normal vision
"dynamicBlur" ppEffectCommit 15; // time it takes to normal
resetCamShake; // resets the shake
20 fadeSound 1;	 //fades the sound back to normal


waituntil{
((nearestObject [getpos player, "SmokeShellGreen"]) distance player < 15) 
and 
(getpos (nearestObject [getpos player, "SmokeShellGreen"]) select 2 < 0.5) and (headgear player != "H_CrewHelmetHeli_B")
};
sleep 1.5;
"dynamicBlur" ppEffectEnable true; // enables ppeffect
"dynamicBlur" ppEffectAdjust [20]; // intensity of blur
"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
enableCamShake true;	 // enables camera shake
addCamShake [10, 45, 10];	// sets shakevalues
player setFatigue 1; // sets the fatigue to 100%
5 fadeSound 0.1;	 // fades the sound to 10% in 5 seconds


sleep 5;

};