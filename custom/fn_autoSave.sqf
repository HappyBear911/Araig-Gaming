/*
    @Version: 0.2
    @Author: =IFD= Cryptonat
    @Edited: 4/4/14
    
    Description:
    Saves the player's gear every 10 minutes.
*/

while {true} do {
    sleep 600;
    if (alive player) then {
        if (playerSide == west) then {
			[] call life_fnc_sessionUpdate;
			[] call life_fnc_saveGear;    //this is what allows the cop gear to save
			systemChat "Game Autosaved.";
		} else {
			[] call life_fnc_sessionUpdate;
			systemChat "Game Autosaved.";
		};
    };
};