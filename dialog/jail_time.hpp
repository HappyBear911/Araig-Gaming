class jail_time
{
	idd = 26500;
	name = "jail_time";
	movingEnabled = false;
	enableSimulation = true;
	
	class controls 
	{
		class jailtime_background: IGUIBack
		{
			idc = 2200;
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.132 * safezoneH;
		};
		class jailtime_title: RscStructuredText
		{
			idc = 1100;
			text = "<t align='center'>Gefängniszeit</t>"; //--- ToDo: Localize;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class jailtime_button_close: RscButtonMenu
		{
			idc = 2400;
			text = "Schließen"; //--- ToDo: Localize;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick="closeDialog 0;";
		};
		class jailtime_button_ok: RscButtonMenu
		{
			idc = 2401;
			text = "Bestätigen"; //--- ToDo: Localize;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			x = 0.5048745 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.057 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick="[] spawn life_fnc_arrestDialog_Arrest;";
		};
		class jailtime_text_time: RscText
		{
			idc = 1000;
			text = "Zeit:"; //--- ToDo: Localize;
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class jailtime_edit_input: RscEdit
		{
			idc = 1400;
			text = "15"; //--- ToDo: Localize;
			x = 0.489687 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class jailtime_text_minutes: RscText
		{
			idc = 1001;
			text = "Minuten"; //--- ToDo: Localize;
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};