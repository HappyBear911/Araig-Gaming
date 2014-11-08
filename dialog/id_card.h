class life_hl_idcard {
	idd = 999;
	name= "life_hl_idcard";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	
	class controlsBackground {
		
		/*		
		class hl_backgroundimage: life_RscPicture
		{
			text = "textures\passport.paa";
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.6 - (22 / 250);
		};
        */
		
		class MainBackground:life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.6 - (22 / 250);
		};

		
	};
	
	class controls {

		class hl_name: Life_RscStructuredText
		{
			idc = 112;
			text = "";
			x = 0.41;
			y = 0.41;
			w = 0.2499;
			h = 0.044;
			colorBackground[] = {0,0,0,0};
			colorText[] = {0,0,0,1};
			sizeEx = 1.3;
			shadow = 1;
			
			class Attributes {
				color = "#FFFFFF";
				shadow = 1;
			};
		};

		
		class hl_btn_ok: Life_RscButtonMenu
		{
			idc = -1;
			text = "OK";
			onButtonClick = "closeDialog 0;";
			x = 0.1;
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
			
		};
        
		
        
		class hl_image: life_RscPicture
		{
			idc = -1;
			text = "textures\id_image.paa";
			x = 0.15;
			y = 0.33;
			w = 0.2;
			h = 0.355;
		};

	};
};