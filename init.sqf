enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

if (isDedicated) then {
	[] execVM "custom\initStreetBarricade.sqf"; // Load street barricade init once
};
[] execVM "custom\zlt_fastrope.sqf"; // Load fastroping script
[] execVM "custom\weatherFix.sqf"; // Fix for rain and fog
[] execVM "custom\disableFuelStations.sqf"; // Disables bohemias refuel function
//[] execVM "IgiLoad\IgiLoadInit.sqf"; // Init IgiLoad

[] spawn
{
	while {true} do
    {
        if(playerSide == independent && {uniform player == "U_B_CombatUniform_mcam"}) then {
            player setObjectTextureGlobal [0,"textures\medic_uniform.jpg"];
			unitBackpack player setObjectTextureGlobal[0,""];
            sleep 60;
        };
		if(playerSide == west && {uniform player == "U_Rangemaster"}) then {
            player setObjectTextureGlobal [0,"textures\cop_default_uniform.jpg"];
			unitBackpack player setObjectTextureGlobal[0,""];
            sleep 60;
        };
		if(playerSide == west && {uniform player == "U_I_CombatUniform_tshirt"}) then {
            player setObjectTextureGlobal [0,"#(ai,64,64,1)Fresnel(1.3,7)"];
			unitBackpack player setObjectTextureGlobal[0,""];
            sleep 60;
        };
		if(uniform player == "U_C_Poloshirt_burgundy") then {
            player setObjectTextureGlobal [0,"textures\civ_hlg_clothes.jpg"];
            sleep 60;
        };
		if(uniform player == "U_C_Poloshirt_redwhite") then {
            player setObjectTextureGlobal [0,"textures\civ_ger_trikot.jpg"];
            sleep 60;
        } else {
            sleep 60;
        };
    };
};

[] spawn
{
	while {true} do
	{
		waitUntil {!isNull (findDisplay 49)};
		((findDisplay 49) displayCtrl 122) ctrlEnable false;
		((findDisplay 49) displayCtrl 122) ctrlShow false;
		waitUntil {isNull (findDisplay 49)};
	};
};